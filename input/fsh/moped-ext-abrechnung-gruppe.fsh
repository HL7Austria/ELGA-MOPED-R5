
Extension: AbrechnungsGruppe
Id: moped-ext-AbrechnungsGruppe
Title: "Abrechnung - Gruppe"
Description: "Dieses Datenfeld ist mit der Codenummer der zutreffenden Abrechnungsgruppe zu befüllen. Bei Datensätzen von stationären Krankenhausaufenthalten, die keiner leistungsorientier- ten Diagnosenfallgruppe zugeordnet werden, erfolgt ein Eintrag entsprechend der jeweiligen Aufnahmeart."
Context: MOPEDClaim
* value[x] 0..1
* value[x] only code
* value[x] from $LKFAbrechnungsGruppe (required)
* . ^definition =  "\"Abrechnung - Gruppe:\" Dieses Datenfeld ist mit der Codenummer der zutreffenden Abrechnungsgruppe zu befüllen. Bei Datensätzen von stationären Krankenhausaufenthalten, die keiner leistungsorientier- ten Diagnosenfallgruppe zugeordnet werden, erfolgt ein Eintrag entsprechend der jeweiligen Aufnahmeart."
