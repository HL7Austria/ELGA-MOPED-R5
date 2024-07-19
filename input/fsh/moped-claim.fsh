
Profile: MOPEDClaim
Parent: Claim
Description: "MOPED Profil der Claim Ressource für die Leistungsabrechnungsanfrage."


* patient only Reference(HL7ATCorePatient)

* procedure.extension contains AbrechnungsRelevanz named AbrechnungsRelevanz 0..1

* encounter ^slicing.rules = #open
* encounter ^slicing.ordered = false
* encounter contains MopedEncounter 0..1 and TransferEncounter 0..
* encounter[MopedEncounter] ^short = "Generelle Informationen zu Aufnahme und Entlassung des Patienten"
* encounter[MopedEncounter] only Reference(MOPEDEncounter)
* encounter[TransferEncounter] ^short = "Informationen zu Verlegungen innerhalb oder zwischen Krankenanstalten"
* encounter[TransferEncounter] only Reference(MOPEDTransferEncounter)

* item.extension contains AbrechnungsGruppe named AbrechnungsGruppe 0..1
* item.extension contains AbrechnungsKnoten named AbrechnungsKnoten 0..1
* item.extension contains Punkte_Belagsdauerausreisser_unten_Leistungskomponente named Punkte_Belagsdauerausreisser_unten_Leistungskomponente 0..1
* item.extension contains Punkte_Belagsdauerausreisser_unten_Tageskomponente named Punkte_Belagsdauerausreisser_unten_Tageskomponente 0..1
* item.extension contains Zusatzpunkte_Belagsdauerausreisser_nach_oben named Zusatzpunkte_Belagsdauerausreisser_nach_oben 0..1
* item.extension contains Zusatzpunkte_Intensiv named Zusatzpunkte_Intensiv 0..1
* item.extension contains Zusatzpunkte_Mehrfachleistungen named Zusatzpunkte_Mehrfachleistungen 0..1

* extension contains Punkte_spezieller_Bereiche_tageweise named Punkte_spezieller_Bereiche_tageweise 0..1
* extension contains Leistungskomponente_Leistungspunkte named Leistungskomponente_Leistungspunkte 0..1
* extension contains Tageskomponente_Kontaktpunkte named Tageskomponente_Kontaktpunkte 0..1
* extension contains TotalPoints named TotalPoints 0..1
* extension contains ErrorWarning named ErrorWarning 0..
* extension contains Fondsrelevanz named Fondsrelevanz 0..1
* extension contains Plausibilitaetskennzeichen named Plausibilitaetskennzeichen 0..1
* extension contains SVAbrechnungsquartal named SVAbrechnungsquartal 0..1