
Profile: MopedVAEResponse
Parent: ClaimResponse
Description: "MOPED Profil für die Beantwortung der Versichertenanspruchserklärung VAE."

* status = #active
* type.coding.code = #institutional
* use = #preauthorization

* patient only Reference(HL7ATCorePatient)
* insurer only Reference(HL7ATCoreOrganization)
* insurer 1..1
* request only Reference(MopedVAERequest)
* request 1..1
* requestor only Reference(HL7ATCoreOrganization)
* requestor 1..1

* insurance.coverage only Reference(MopedCoverage)
* insurance.coverage 1..1

* decision from VAEStatus (required)
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
* extension contains MealCostExcemption named MealCostExcemption 0..1
* extension contains NumberOfPreviouslyPaidDays named NumberOfPreviouslyPaidDays 0..1



