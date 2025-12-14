import pandas as pd
import re
import json
from pathlib import Path
from urllib.parse import urlparse
from typing import Dict, List, Any, Optional, Tuple
from dataclasses import dataclass

@dataclass
class MappingEntry:
    """Represents a single FHIR mapping entry for a legacy field."""
    profile: str
    fhir_resource: str
    resource_path: str
    obligation_actor: str

OBLIGATION_URL = "http://hl7.org/fhir/StructureDefinition/obligation"

def get_stats() -> Dict[str, Dict[str, int]]:
    """Returns initial statistics counter."""
    return {
        "LKF": {"rows": 0, "filled": 0},
        "KaOrg": {"rows": 0, "filled": 0},
    }

LKF_COLUMN_TITLES = [
    "Feld", "befüllt von", "Profile", "FHIR Ressource",
    "Pfad von der Ressource aus", "Pfad von der Composition aus", "Anmerkungen"
]

KAORG_COLUMN_TITLES = [
    "Feld", "Abkürzung", "befüllt von", "Profile", "FHIR Ressource",
    "Pfad von der Ressource aus", "Pfad von der Composition aus", "Anmerkungen"
]

LKF_SHEET_NAMES = ["X01", "X02", "X03", "X04", "X05", "X06", "X07"]

KAORG_SHEET_NAMES = [
    "E1", "E1.1", "K01", "K03", "K05", "K09", "K12", "K13", "K20", "K21", "K27"
]

CSS_STYLE = """
<style>
.table-responsive {
    display: block;
    width: 100%;
    overflow-x: auto;
    max-height: 600px;
    overflow-y: auto;
}
.table-responsive > table { width: 100%; }
.table-responsive th, .table-responsive td { padding: 15px; background: #f5f5f5; }
.table-responsive table { border-collapse: separate; border-spacing: 3px; }
/* Sticky header */
.table-responsive th { position: sticky; top: 0; background: rgb(228, 228, 228); z-index: 2; }
/* Sticky first column */
.table-responsive th:first-child, .table-responsive td:first-child {
    position: sticky; left: 0; background: rgb(228, 228, 228); z-index: 3;
}
.table-responsive th:first-child {
    position: sticky; top: 0; left: 0; background: rgb(228, 228, 228); z-index: 4;
}
</style>
"""

LKF_INTRO = """
Diese Seite enthält das Mapping der Meldungen des MBDS Datensatzes (X01-X07, I11-I12, K01*) 
des LKF Systems zu FHIR. Die Dokumentation der LKF Meldungen ist unter 
<a href="https://www.sozialministerium.at/dam/jcr:8553d407-cc41-4b15-bace-5c4e155e8d88/ANHANG1%20-%20AUFBAU%20UND%20INHALT%20DER%20DATENMELDUNGEN%202025%20SP1%2020250131.pdf">
diesem Link</a> verfügbar.
"""

KAORG_INTRO = """
Diese Seite enthält das Mapping der Meldungen des Ka-Org Systems zu FHIR. 
Die Dokumentation der Ka-Org Meldungen ist unter 
<a href="https://www.sozialversicherung.at/cdscontent/?contentid=10007.821512">diesem Link</a> 
verfügbar.
"""

COMPOSITION_PATHS_BY_PROFILE: Dict[str, str] = {
    "MopedEncounterA": "Composition.encounter.resolve()",
    "MopedEncounterS": "Composition.encounter.resolve()",
    "SVOrganization": "Composition.section:zustaendigeSV.entry.resolve()",
    "LGFOrganization": "Composition.section:zustaendigerLGF.entry.resolve()",
    "KHOrganization": "Composition.section:zustaendigesKH.entry.resolve()",
    "MopedOrganizationAbteilung": "Composition.section:besuchteAbteilungen.entry.resolve()",
    "MopedCondition": "Composition.section:Diagnosen.entry.resolve()",
    "MopedProcedure": "Composition.section:Leistungen.entry.resolve()",
    "MopedCoverage": "Composition.section:Coverages.entry.resolve()",
    "MopedCoverageSelbstzahler": "Composition.section:Coverages.entry.resolve()",
    "MopedVAERequest": "Composition.section:VAERequests.entry.resolve()",
    "MopedVAERequestVerlaengerung": "Composition.section:VAERequests.entry.resolve()",
    "MopedVAERequestInitial": "Composition.section:VAERequests.entry.resolve()",
    "MopedVAEResponse": "Composition.section:VAEResponses.entry.resolve()",
    "MopedLKFRequest": "Composition.section:LKFRequests.entry.resolve()",
    "MopedLKFResponse": "Composition.section:LKFResponses.entry.resolve()",
    "MopedARKRequest": "Composition.section:ARKKostenInformation.entry.resolve()",
    "MopedARKResponse": "Composition.section:ARKRueckmeldung.entry.resolve()",
    "MopedARKStatusUpdate": "Composition.section:ARKStatusUpdate.entry.resolve()",
    "Observation": "Composition.section:Observations.entry.resolve()",
    "Hauptversicherter": "Composition.section:Hauptversicherter.entry.resolve()",
    "MopedQuestionnaireResponse": "Composition.section:Frageboegen.entry.resolve()",
    "MopedTransferEncounterI": "Composition.section:TransferEncounter.entry.resolve()",
    "MopedTransferEncounterA": "Composition.section:TransferEncounter.entry.resolve()",
    "MopedTransferEncounterS": "Composition.section:TransferEncounter.entry.resolve()",
    "MopedPatient": "Composition.subject.resolve()"
}

UNUSED_FIELD_COMMENTS = [
    "in neuer Architektur nicht mehr notwendig",
    "laut Abstimmung: vorläufige Überarbeitung KaOrg - Feld wird voraussichtlich entfernt",
    "diese Meldung ist in Moped in dieser Form nicht mehr notwendig",
    "erst in K05 relevant"
]

E1_REFERENCE_COMMENTS = ["siehe E1", "siehe E1.1", "siehe E1/E1.1"]

QUESTIONNAIRE_SHEETS = ["I11", "I12"]

def generate_markdown_for_sheet(
    sheet_name: str, 
    df: pd.DataFrame, 
    column_titles: List[str], 
    mapping: Dict[str, List[MappingEntry]],
    stats: Dict[str, Dict[str, int]],
    kind: str
) -> Tuple[str, int, int]:
    """
    Generate HTML table markdown for a single sheet with FHIR mappings.
    
    """
    legacy_col = "Feld"
    
    # Extract mapping info for each row
    profiles, resources, paths, actors, comp_paths = [], [], [], [], []
    
    for _, row in df.iterrows():
        key = str(row[legacy_col]).strip()
        entries = mapping.get(key, [])
        
        if entries:
            prof_set = {e.profile for e in entries}
            res_set = {e.fhir_resource for e in entries}
            path_set = {e.resource_path for e in entries}
            act_set = {e.obligation_actor for e in entries}
            
            prof_val = "; ".join(sorted(prof_set))
            res_val = "; ".join(sorted(res_set))
            path_val = "; ".join(sorted(path_set))
            actor_val = "; ".join(sorted(act_set))
            
            # Compute Composition path
            if "Composition" in res_set:
                comp_val = path_val
            else:
                comp_set = {
                    COMPOSITION_PATHS_BY_PROFILE[p] 
                    for p in prof_set if p in COMPOSITION_PATHS_BY_PROFILE
                }
                comp_val = "; ".join(sorted(comp_set))
        else:
            prof_val = res_val = path_val = actor_val = comp_val = ""
        
        profiles.append(prof_val)
        resources.append(res_val)
        paths.append(path_val)
        actors.append(actor_val)
        comp_paths.append(comp_val)
    
    # Add computed columns
    df = df.copy()
    df["Profile"] = profiles
    df["FHIR Ressource"] = resources
    df["Pfad von der Ressource aus"] = paths
    df["Pfad von der Composition aus"] = comp_paths
    df["befüllt von"] = actors

    mask_unused = df["Anmerkungen"].astype(str).str.contains(
        "|".join(UNUSED_FIELD_COMMENTS), case=False, na=False, regex=True
    )
    cols_to_slash = [c for c in column_titles if c not in ("Feld", "Anmerkungen", "Abkürzung")]
    df.loc[mask_unused, cols_to_slash] = "/"
    
    mask_e1 = df["Anmerkungen"].astype(str).str.contains(
        "|".join(E1_REFERENCE_COMMENTS), case=False, na=False, regex=True
    )
    df.loc[mask_e1, cols_to_slash] = df.loc[mask_e1, "Anmerkungen"]
    
    # Compute statistics
    mapping_cols = ["befüllt von", "Profile", "FHIR Ressource",
                   "Pfad von der Ressource aus", "Pfad von der Composition aus"]
    empty_row_mask = df[mapping_cols].eq("").all(axis=1)
    num_empty = int(empty_row_mask.sum())
    num_filled = int(len(df) - num_empty)
    
    print(f"[{sheet_name}] Zeilen gesamt: {len(df)}, gefüllt: {num_filled}, leer: {num_empty}")
    
    # Generate HTML table
    md = f"### {sheet_name} -> FHIR\n<div class=\"table-responsive\">\n<table>\n"
    md += "    <tr>\n" + "".join(f"        <th>{col}</th>\n" for col in column_titles) + "    </tr>\n"
    
    for _, row in df.iterrows():
        md += "    <tr>\n"
        for col in column_titles:
            value = row[col] if pd.notna(row[col]) else ""
            md += f"        <td>{str(value).strip() if value else ''}</td>\n"
        md += "    </tr>\n"
    
    md += "</table>\n</div>\n"
    return md, len(df), num_filled

QUESTIONNAIRE_SECTIONS_LKF = """
### I11 SAPS -> FHIR
I11 wird als fallbezogenes Questionnaire/QuestionnaireResponse modelliert. 
Die Definition des Questionnares kann hier gefunden werden: 
[Saps Questionnaire](Questionnaire-LKFSAPS3Questionnaire.html)

### I12 TISS-A -> FHIR
I12 wird als fallbezogenes Questionnaire/QuestionnaireResponse modelliert. 
Die Definition des Questionnares kann hier gefunden werden: 
[TISS-A Questionnaire](Questionnaire-LKFTISSAQuestionnaire.html)

### LKF K01 -> FHIR
K01 wird als Questionnaire/QuestionnaireResponse modelliert. 
Die Definition des Questionnares kann hier gefunden werden: 
[K01 Questionnaire](Questionnaire-LKFK01Questionnaire.html)

### LKF L01 -> FHIR
L01 wird als fallbezogenes Questionnaire/QuestionnaireResponse modelliert. 
Die Definition des Questionnares kann hier gefunden werden: 
[L01 Questionnaire](Questionnaire-LKFL01Questionnaire.html)
"""

def create_mapping_markdown(excel_path: str, LKF: bool = True) -> None:
    """
    Main function: Create markdown mapping files from Excel sheets.
    
    """
    kind = "LKF" if LKF else "KaOrg"
    output_md_path = f"input/pagecontent/{kind.lower()}_mapping.md"
    
    # Configure based on kind
    if LKF:
        column_titles = LKF_COLUMN_TITLES
        sheet_names = LKF_SHEET_NAMES
        intro_html = CSS_STYLE + LKF_INTRO
        questionnaire_sections = QUESTIONNAIRE_SECTIONS_LKF
        mapping = lkf_mapping()
    else:
        column_titles = KAORG_COLUMN_TITLES
        sheet_names = KAORG_SHEET_NAMES
        intro_html = CSS_STYLE + KAORG_INTRO
        questionnaire_sections = ""
        mapping = kaOrg_mapping()
    
    stats = get_stats()
    total_rows, total_filled = 0, 0
    all_sections = []
    
    for sheet_name in sheet_names:
        try:
            df = pd.read_excel(excel_path, sheet_name=sheet_name, header=1)
            df = df[df['Feld'].notna() & (df['Feld'].astype(str).str.strip() != "")]
            df = df[column_titles]
            
            section, rows, filled = generate_markdown_for_sheet(
                sheet_name, df, column_titles, mapping, stats, kind
            )
            all_sections.append(section)
            total_rows += rows
            total_filled += filled
        except Exception as e:
            print(f"Sheet {sheet_name} not found or error: {e}")
            continue
    
    # Write output
    with open(output_md_path, "w", encoding="utf-8") as f:
        f.write(intro_html + '\n'.join(all_sections) + questionnaire_sections)
    
    print(f"🚀 Markdown mapping written to {output_md_path}")
    pct = 100 * total_filled / total_rows if total_rows else 0
    print(f"{kind}: {total_filled}/{total_rows} = {pct:.1f}% gefüllt")

# ----------------- Helper functions (improved) -----------------

def id_from_canonical(canon: Optional[str]) -> str:
    """Extract ID from canonical URL or reference."""
    if not canon:
        return ""
    path = urlparse(canon).path or canon
    return path.rstrip("/").split("/")[-1]

def get_obligation_actors(el: Dict[str, Any]) -> List[str]:
    """Extract obligation actors from element extensions."""
    actors = []
    for ext in el.get("extension", []):
        if ext.get("url") != OBLIGATION_URL:
            continue
        for sub in ext.get("extension", []):
            if sub.get("url") == "actor":
                canon = (sub.get("valueCanonical") or 
                        sub.get("valueReference", {}).get("reference"))
                if canon:
                    actors.append(id_from_canonical(canon))
    return actors

def build_slice_path(el: Dict[str, Any]) -> Optional[str]:
    """Build FHIRPath with slice names and .resolve() for References."""
    path = el.get("path")
    if not path:
        return None
    
    eid = el.get("id", "")
    if ":" in eid:
        base = eid
    else:
        slice_name = el.get("sliceName")
        if slice_name:
            parts = path.split(".")
            parts[-1] += f":{slice_name}"
            base = ".".join(parts)
        else:
            base = path
    
    types = el.get("type", [])
    if types and types[0].get("code") == "Reference":
        return base + ".resolve()"
    return base

# ----------------- Extractors -----------------

@dataclass
class ElementInfo:
    """Extracted information from FHIR element."""
    legacy_keys: List[str]
    short: str
    path: Optional[str]
    actors: str

def extract_structure_definition_info(sd: Dict[str, Any]) -> Dict[str, str]:
    """Extract basic StructureDefinition metadata."""
    return {
        "profile": sd.get("id", ""),
        "resource": sd.get("type", "")
    }

def extract_element_info(el: Dict[str, Any], mode: str) -> Optional[ElementInfo]:
    """
    Extract legacy mapping info for given mode (LKF/KaOrg/obligation).
    
    CHANGE 11: Returns structured ElementInfo, better error handling
    """
    path_with_slice = build_slice_path(el)
    actors = get_obligation_actors(el)
    
    if mode in ("LKF", "KaOrg"):
        target_id = mode
        legacy_keys = []
        
        for m in el.get("mapping", []):
            if m.get("identity") != target_id:
                continue
            map_str = m.get("map", "")
            legacy_keys.extend(part.strip() for part in map_str.split(",") if part.strip())
        
        if not legacy_keys:
            return None
        
        return ElementInfo(
            legacy_keys=legacy_keys,
            short=(el.get("short") or "").strip(),
            path=path_with_slice,
            actors=", ".join(actors)
        )
    
    elif mode == "obligation":
        if not any(ext.get("url") == OBLIGATION_URL for ext in el.get("extension", [])):
            return None
        short = (el.get("short") or "").strip()
        return ElementInfo(
            legacy_keys=[short] if short else [],
            short=short,
            path=path_with_slice,
            actors=", ".join(actors)
        )
    
    raise ValueError(f"Unknown mode: {mode}")

def build_fhir_mapping(sd_dir: str = "output", mode: str = "LKF") -> Dict[str, List[MappingEntry]]:
    """Build complete FHIR mapping for given mode."""
    sd_path = Path(sd_dir)
    mapping: Dict[str, List[MappingEntry]] = {}
    
    for p in sd_path.glob("StructureDefinition-*.json"):
        with open(p, encoding="utf-8") as f:
            sd = json.load(f)
        
        sd_info = extract_structure_definition_info(sd)
        profile, resource = sd_info["profile"], sd_info["resource"]
        
        for el in sd.get("snapshot", {}).get("element", []):
            info = extract_element_info(el, mode=mode)
            if not info or not info.legacy_keys:
                continue
            
            for legacy in info.legacy_keys:
                mapping.setdefault(legacy, []).append(MappingEntry(
                    profile=profile,
                    fhir_resource=resource,
                    resource_path=info.path or "",
                    obligation_actor=info.actors
                ))
    
    return mapping

def build_lkf_qr_mapping(qr_dir: str = "output") -> Dict[str, List[MappingEntry]]:
    """Build QuestionnaireResponse mappings for LKF sheets."""
    qr_path = Path(qr_dir)
    mapping: Dict[str, List[MappingEntry]] = {}
    
    for p in qr_path.glob("QuestionnaireResponse-*.json"):
        with open(p, encoding="utf-8") as f:
            qr = json.load(f)
        
        full_profile = qr.get("meta", {}).get("profile", ["QuestionnaireResponse"])[0]
        profile = id_from_canonical(full_profile) or "QuestionnaireResponse"
        resource = qr.get("resourceType", "QuestionnaireResponse")
        
        def walk_items(items: List[Any], parent_path: str = "QuestionnaireResponse.item"):
            for idx, it in enumerate(items):
                base_path = f"{parent_path}[{idx}]"
                text = (it.get("text") or "").strip()
                
                if text.startswith("LKF:"):
                    legacy = text.split("LKF:", 1)[1].strip()
                    answer_path = base_path + ".answer[0].value"
                    mapping.setdefault(legacy, []).append(MappingEntry(
                        profile=profile,
                        fhir_resource=resource,
                        resource_path=answer_path,
                        obligation_actor="MopedKHActor"
                    ))
                
                if "item" in it:
                    walk_items(it["item"], base_path + ".item")
        
        if "item" in qr:
            walk_items(qr["item"])
    
    return mapping

def lkf_mapping() -> Dict[str, List[MappingEntry]]:
    """Combined LKF mapping (StructureDefinition + filtered QuestionnaireResponse)."""
    lkf_sd = build_fhir_mapping("output", mode="LKF")
    lkf_qr = build_lkf_qr_mapping("output")
    
    # Filter QR mappings to I11/I12 sheets only
    qr_filtered = {
        k: v for k, v in lkf_qr.items() 
        if any(sheet in k for sheet in QUESTIONNAIRE_SHEETS)
    }
    
    # Merge filtered QR mappings
    for k, v in qr_filtered.items():
        lkf_sd.setdefault(k, []).extend(v)
    
    print(f"QR-Mappings gefiltert: {len(lkf_qr)} → {len(qr_filtered)} (nur I11/I12)")
    return lkf_sd

def kaOrg_mapping() -> Dict[str, List[MappingEntry]]:
    """KaOrg mapping from StructureDefinitions only."""
    return build_fhir_mapping("output", mode="KaOrg")


if __name__ == "__main__":
    excel_path = "docs/MOPED_II_Mapping.xlsx"
    create_mapping_markdown(excel_path, LKF=True)
    create_mapping_markdown(excel_path, LKF=False)
