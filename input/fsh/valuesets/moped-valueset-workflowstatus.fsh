CodeSystem: WorkflowStatusCS
Title: "Workflow Status eines Falls"
Description: "CodeSystem für die Statusoptionen in denen sich ein Fall befinden kann."
* ^status = #active
* ^experimental = true
* ^caseSensitive = true
* #Aufnahme-in-arbeit "Aufnahme in Arbeit"
* #Aufnahme-freigegeben "Aufnahme freigegeben"
* #SV-verarbeitet "SV verarbeitet"
* #Entlassungs-Aviso "Entlassungs Aviso"
* #Entlassung-vollständig "Entlassung vollständig"
* #Vorläufige-Meldung "Vorläufige Meldung"
* #LGF-Korrekturaufforderung "LGF Korrekturaufforderung"
* #Endgueltige-Korrekturaufforderung "LGF Endgültige Korrekturaufforderung"
* #Vorlaeufige-Freigabe "Vorläufige Freigabe"
* #Endgueltige-Meldung "Endgültige Meldung"
* #Endgueltige-Freigabe "Endgültige Freigabe"

ValueSet: WorkflowStatus
Title: "Workflow Status eines Falls"
Description: "ValueSet für die Statusoptionen in denen sich ein Fall befinden kann."
* ^experimental = true
* include codes from system WorkflowStatusCS