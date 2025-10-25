import pandas as pd

relevantColumnTitles_LKF = [
    "Feld",
    "befüllt von",
    "Profile",
    "FHIR Ressource",
    "Pfad von der Ressource aus",
    "Pfad von der Composition aus",
    "Anmerkungen"
]

relevantColumnTitles_KaOrg = [
    "Feld",
    "Abkürzung",
    "befüllt von",
    "Profile",
    "FHIR Ressource",
    "Pfad von der Ressource aus",
    "Pfad von der Composition aus",
    "Anmerkungen"
]
# Sheet names to process
relevantSheetTitlesLKF = [
    "X01", "X02", "X03", "X04", "X05",
    "X06", "X07", "I11 SAPS", "I12 TISS", "LKF K01"
]

relevantSheetTitlesKaOrg =[
    "E1","E1.1","K01", "K03", "K05", "K09", "K12", "K13", "K20", "K21", "K27"
] 

style = """
<style>
.table-responsive {
display: block;
width: 100%;
overflow-x: auto;
max-height: 600px;
overflow-y: auto;
}
.table-responsive > table {
width: 100%;}
.table-responsive th,
.table-responsive td {
  padding: 15px;
  background: #f5f5f5;
}
.table-responsive table {
  border-collapse: separate;
  border-spacing: 3px;
}
/* Kopfzeile sticky */
.table-responsive th {
  position: sticky;
  top: 0;
  background: rgb(228, 228, 228);
  z-index: 2;
}
/* Erste Spalte sticky */
.table-responsive th:first-child,
.table-responsive td:first-child {
  position: sticky;
  left: 0;
  background: rgb(228, 228, 228);
  z-index: 3;
}

.table-responsive th:first-child {
  position: sticky;
  top: 0;
  left: 0;
  background: rgb(228, 228, 228);
  z-index: 4;
}
</style>
"""

intro_LKF = """

Diese Seite enthält das Mapping der Meldungen des MBDS Datensatzes (X01-X07, I11-I12, K01*) des LKF Systems zu FHIR. Die Dokumentation der LKF Meldungen ist unter <a href="https://www.sozialministerium.at/dam/jcr:8553d407-cc41-4b15-bace-5c4e155e8d88/ANHANG1%20-%20AUFBAU%20UND%20INHALT%20DER%20DATENMELDUNGEN%202025%20SP1%2020250131.pdf">diesem Link</a> verfügbar.


"""

intro_KaOrg = """

Diese Seite enthält das Mapping der Meldungen des Ka-Org Systems zu FHIR. Die Dokumentation der Ka-Org Meldungen ist unter <a href="https://www.sozialversicherung.at/cdscontent/?contentid=10007.821512">diesem Link</a> verfügbar.


"""

def generate_markdown_for_sheet(sheet_name, df, column_titles):
    """
    Generate a markdown+HTML section for a single sheet.
    """
    md = f"### {sheet_name} -> FHIR\n<div class=\"table-responsive\">\n<table>\n"

    # Create table header: two leading columns + all relevant columns
    md += "    <tr>\n"
    for col in column_titles:
        md += f"        <th>{col}</th>\n"
    md += "    </tr>\n"

    # Iterate rows
    for _, row in df.iterrows():
        md += "    <tr>\n"
        # First two columns, typically empty for rows (could adjust here for sheet-specific info)
        for col in column_titles:
            value = row[col] if pd.notna(row[col]) else ""
            # Display as string, strip leading/trailing whitespace
            md += f"        <td>{str(value).strip() if value else ''}</td>\n"
        md += "    </tr>\n"
    md += "</table>\n</div>\n"
    return md

def create_mapping_markdown(excel_path, LKF=True):
    output_md_path = "input/pagecontent/lkf_mapping.md"
    relevantColumnTitles = relevantColumnTitles_LKF
    relevantSheetTitles = relevantSheetTitlesLKF
    intro_html = style + intro_LKF
    
    if not LKF:
        output_md_path = "input/pagecontent/ka-org_mapping.md"
        relevantColumnTitles = relevantColumnTitles_KaOrg
        relevantSheetTitles = relevantSheetTitlesKaOrg
        intro_html = style + intro_KaOrg


    all_sections = []
    for sheet_name in relevantSheetTitles:
        try:
            df = pd.read_excel(excel_path, sheet_name=sheet_name, header=1)
        except Exception as e:
            print(f"Sheet {sheet_name} not found or error: {e}")
            continue

        # Filter out rows where 'Feld' is empty or only whitespace
        df = df[df['Feld'].notna() & (df['Feld'].astype(str).str.strip() != "")]

        # Ensure only intended columns, will fill "" if columns missing
        for col in relevantColumnTitles:
            if col not in df.columns:
                df[col] = ""
        # Reorder columns to match
        df = df[relevantColumnTitles]
        all_sections.append(generate_markdown_for_sheet(sheet_name, df, relevantColumnTitles))
    # Write all together



    with open(output_md_path, "w", encoding="utf-8") as f:
        f.write(intro_html)
        f.write('\n'.join(all_sections))
    print(f"🚀 Markdown mapping written to {output_md_path}")

# Usage example:
create_mapping_markdown("docs/MOPED_II_Mapping.xlsx", LKF=True)
create_mapping_markdown("docs/MOPED_II_Mapping.xlsx", LKF=False)