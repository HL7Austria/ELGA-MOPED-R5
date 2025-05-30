
Profile: MopedVAEResponse
Parent: ClaimResponse
Title: "MOPED VAEResponse"
Description: "MOPED Profil für die Beantwortung der Versichertenanspruchserklärung VAE."

* status = #active
* type.coding = http://terminology.hl7.org/CodeSystem/claim-type#institutional
* use = #preauthorization

* patient only Reference(HL7ATCorePatient)
* request only Reference(MopedVAERequest)
* request 1..1

* decision from VAEStatusVS (required)
* . ^definition =  "\"VAEST - Status der Versichertenanspruchserklärung\""
* . ^short =  "\"VAEST - Status der Versichertenanspruchserklärung\""

* preAuthPeriod ^definition = "Ist diese Zeitspanne angegeben so gibt es ein Fristende.
Befristungen sind in folgenden Fällen vorgesehen:
- Bei zeitlichen Beschränkungen aufgrund einer zu erwartenden, nachfolgenden medizini-
schen Hauskrankenpflege
- Bei Vorhersehbarkeit des Eintritts einer Asylierung
- Bei unsicherer, versicherungsrechtlicher Entwicklung
Bei den ersten beiden Punkten wird von den Krankenversicherungsträgern das Fristende individuell gesetzt. Beim dritten Punkt wird im Regelfall eine generelle Tagesbeschränkung erfolgen, weil die Versichertenanspruchserklärung in die Zukunft gerichtet ist und der Krankenversicherungsträger seine Zuständigkeit von vornherein nur für einen bestimmten Zeitraum annehmen kann (Ausleis- tungssituation gem. § 122 ASVG).
Durch die Angabe eines Fristendes wird signalisiert, dass bei einem über das Fristende hinaus dau- ernden Aufenthalt eine Verlängerungsanzeige vorzulegen ist."
* extension contains VerpflegskostenBeitragsbefreiung named VerpflegskostenBeitragsbefreiung 0..1
* extension contains VortageanzahlAufKostenbeitrag named VortageanzahlAufKostenbeitrag 0..1



