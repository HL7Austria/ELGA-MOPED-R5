
Profile: MopedVAEResponse
Parent: ClaimResponse
Title: "MOPED VAEResponse"
Description: "MOPED Profil für die Beantwortung der Versichertenanspruchserklärung VAE."

* status = #active
* type.coding 1..
* type.coding = http://terminology.hl7.org/CodeSystem/claim-type#institutional
* use = #preauthorization

* patient only Reference(HL7ATCorePatient)
* patient 1..1
* request only Reference(MopedVAERequest)
* request 1..1
* insurer only Reference(SVOrganization)
* insurer 1..1
* requestor only Reference(KHOrganization)
* requestor 1..1
* outcome 1..1
* outcome ^short = "VAE Bewilligung/Ablehnung"
* decision from VAEStatusVS (required)
* decision 1..1
* decision ^definition =  "\"VAEST - Status der Versichertenanspruchserklärung\""
* decision ^short =  "\"VAEST - Status der Versichertenanspruchserklärung\""

* preAuthPeriod ^definition = "Ist diese Zeitspanne angegeben so gibt es ein Fristende.
Befristungen sind in folgenden Fällen vorgesehen:
- Bei zeitlichen Beschränkungen aufgrund einer zu erwartenden, nachfolgenden medizini-
schen Hauskrankenpflege
- Bei Vorhersehbarkeit des Eintritts einer Asylierung
- Bei unsicherer, versicherungsrechtlicher Entwicklung
Bei den ersten beiden Punkten wird von den Krankenversicherungsträgern das Fristende individuell gesetzt. Beim dritten Punkt wird im Regelfall eine generelle Tagesbeschränkung erfolgen, weil die Versichertenanspruchserklärung in die Zukunft gerichtet ist und der Krankenversicherungsträger seine Zuständigkeit von vornherein nur für einen bestimmten Zeitraum annehmen kann (Ausleis- tungssituation gem. § 122 ASVG).
Durch die Angabe eines Fristendes wird signalisiert, dass bei einem über das Fristende hinaus dau- ernden Aufenthalt eine Verlängerungsanzeige vorzulegen ist."
* preAuthPeriod 1..1
* preAuthPeriod.start 1..1
* preAuthPeriod.start ^short = "VAE Beginndatum"
* preAuthPeriod.end 0..1
* preAuthPeriod.end ^short = "VAE Enddatum und Indikator, ob es ein Fristende gibt"
* extension contains MopedSupportingInfoSonderklasse named MopedSupportingInfoSonderklasse 1..1
* extension contains VerpflegskostenBeitragsbefreiung named VerpflegskostenBeitragsbefreiung 1..1
* extension contains MopedSupportingInfoVortageanzahlAufKostenbeitrag named MopedSupportingInfoVortageanzahlAufKostenbeitrag 1..1

* addItem.extension contains AddItemCategory named AddItemCategory 0..1

