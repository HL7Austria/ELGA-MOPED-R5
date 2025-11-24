
Profile: MopedVAEResponse
Parent: ClaimResponse
Title: "MOPED VAEResponse"
Description: "MOPED Profil für die Beantwortung der Versichertenanspruchserklärung VAE."
* insert ShallPopulateObligation(created, MopedSVActor)
* status = #active
* insert ShallPopulateObligation(status, MopedSVActor)
* insert MopedHandleObligation(status)
* type.coding 1..
* type.coding = http://terminology.hl7.org/CodeSystem/claim-type#institutional
* insert ShallPopulateObligation(type, MopedSVActor)
* use = #preauthorization
* insert ShallPopulateObligation(use, MopedSVActor)
* patient only Reference(MopedPatient)
* patient 1..1
* insert MopedHandleObligation(patient) 
* request only Reference(MopedVAERequest)
* request 1..1
* insert ShallPopulateObligation(request, MopedSVActor)
//Kann hier angenommen werden, dass es nur einen offenen request in der Composition gibt und dass das sicher der ist, der hier beantwortet werden soll?
* insurer only Reference(SVOrganization)
* insurer 1..1
* insert ShallPopulateObligation(insurer, MopedSVActor) //wegen Fallsplitting?
* requestor only Reference(KHOrganization)
* requestor 1..1
* insert MopedHandleObligation(requestor)
* outcome 1..1
* outcome ^short = "VAE Bewilligung/Ablehnung"
* insert ShallPopulateObligation(outcome, MopedSVActor)
* decision from VAEStatusVS (required)
* decision 1..1
* decision ^definition =  "\"VAEST - Status der Versichertenanspruchserklärung\""
* decision ^short =  "KaOrg: Status der VAE"
* insert ShallPopulateObligation(decision, MopedSVActor)
* preAuthPeriod ^definition = "Ist diese Zeitspanne angegeben so gibt es ein Fristende.
Befristungen sind in folgenden Fällen vorgesehen:
- Bei zeitlichen Beschränkungen aufgrund einer zu erwartenden, nachfolgenden medizini-
schen Hauskrankenpflege
- Bei Vorhersehbarkeit des Eintritts einer Asylierung
- Bei unsicherer, versicherungsrechtlicher Entwicklung
Bei den ersten beiden Punkten wird von den Krankenversicherungsträgern das Fristende individuell gesetzt. Beim dritten Punkt wird im Regelfall eine generelle Tagesbeschränkung erfolgen, weil die Versichertenanspruchserklärung in die Zukunft gerichtet ist und der Krankenversicherungsträger seine Zuständigkeit von vornherein nur für einen bestimmten Zeitraum annehmen kann (Ausleis- tungssituation gem. § 122 ASVG).
Durch die Angabe eines Fristendes wird signalisiert, dass bei einem über das Fristende hinaus dau- ernden Aufenthalt eine Verlängerungsanzeige vorzulegen ist."
* insert ShallPopulateObligation(preAuthPeriod, MopedSVActor)
* preAuthPeriod 1..1
* preAuthPeriod.start 1..1
* preAuthPeriod.start ^short = "KaOrg: VAE Beginndatum"
* preAuthPeriod.end 0..1
* preAuthPeriod.end ^short = "KaOrg: Fristende + VAE Endedatum; VAE Enddatum und Indikator, ob es ein Fristende gibt"
* extension contains MopedSupportingInfoSonderklasse named MopedSupportingInfoSonderklasse 1..1
* extension[MopedSupportingInfoSonderklasse] ^short = "KaOrg: Allgemeine Gebührenklasse/Sonderklasse"
* insert ShallPopulateObligation(extension[MopedSupportingInfoSonderklasse], MopedSVActor)
* extension contains VerpflegskostenBeitragsbefreiung named VerpflegskostenBeitragsbefreiung 1..1
* extension[VerpflegskostenBeitragsbefreiung] ^short = "KaOrg: Verpflegskosten-Beitragsbefreiung"
* insert ShallPopulateObligation(extension[VerpflegskostenBeitragsbefreiung], MopedSVActor)
* extension contains MopedSupportingInfoVortageanzahlAufKostenbeitrag named MopedSupportingInfoVortageanzahlAufKostenbeitrag 1..1
* extension[MopedSupportingInfoVortageanzahlAufKostenbeitrag] ^short = "KaOrg: Vortageanzahl auf Kostenbeitrag"
* insert ShallPopulateObligation(extension[MopedSupportingInfoVortageanzahlAufKostenbeitrag], MopedSVActor)
* addItem.extension contains AddItemCategory named AddItemCategory 0..1
* insert ShallPopulateObligation(addItem.extension[AddItemCategory], MopedSVActor)

