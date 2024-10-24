
Extension: LKFPunkte
Id: lkfPunkte
Title: "LKF Punkte"
Description: "In dieser Extension werden alle möglichen Punkteangaben im LKF zusammengefasst."
* extension contains
    PunkteBelagsdauerausreisserUntenLeistungskomponente 0..1 and
    PunkteBelagsdauerausreisserUntenTageskomponente 0..1 and
    ZusatzpunkteBelagsdauerausreisserNachOben 0..1 and
    ZusatzpunkteIntensiv 0..1 and
    ZusatzpunkteMehrfachleistungen 0..1 and
    PunkteSpeziellerBereicheTageweise 0..1 and
    PunkteTotal 0..1 and 
    Leistungskomponente 0..1 and
    TageskomponenteKontaktpunkte 0..1
* extension[PunkteBelagsdauerausreisserUntenLeistungskomponente].value[x] 0..1
* extension[PunkteBelagsdauerausreisserUntenLeistungskomponente].value[x] only unsignedInt
* extension[PunkteBelagsdauerausreisserUntenTageskomponente].value[x] 0..1
* extension[PunkteBelagsdauerausreisserUntenTageskomponente].value[x] only unsignedInt
* extension[ZusatzpunkteBelagsdauerausreisserNachOben].value[x] 0..1
* extension[ZusatzpunkteBelagsdauerausreisserNachOben].value[x] only unsignedInt
* extension[ZusatzpunkteIntensiv].value[x] 0..1
* extension[ZusatzpunkteIntensiv].value[x] only unsignedInt
* extension[ZusatzpunkteMehrfachleistungen].value[x] 0..1
* extension[ZusatzpunkteMehrfachleistungen].value[x] only unsignedInt
* extension[PunkteSpeziellerBereicheTageweise].value[x] 0..1
* extension[PunkteSpeziellerBereicheTageweise].value[x] only unsignedInt
* extension[PunkteTotal].value[x] 0..1
* extension[PunkteTotal].value[x] only unsignedInt
* extension[Leistungskomponente].value[x] 0..1
* extension[Leistungskomponente].value[x] only unsignedInt
* extension[TageskomponenteKontaktpunkte].value[x] 0..1
* extension[TageskomponenteKontaktpunkte].value[x] only unsignedInt

* insert DocumentExtension (
    PunkteBelagsdauerausreisserUntenLeistungskomponente,
    "Punkte Belagsdauerausreisser unten - Leistungskomponente",
    "In dieses Datenfeld ist – soweit zutreffend – die ermittelte Leistungskomponente für jene Patient:innen einzutragen\, deren Belagsdauer des akutstationären Krankenhausaufenthalts unter der im LKF-Modell in der jeweiligen LDF-Pauschale festgelegten Belagsdaueruntergrenze liegt.")
* insert DocumentExtension (
    PunkteBelagsdauerausreisserUntenTageskomponente, 
    "Punkte Belagsdauerausreisser unten - Tageskomponente",
    "In dieses Datenfeld ist – soweit zutreffend – die ermittelte Tageskomponente für jene Patient:innen einzutragen\, deren Belagsdauer des akutstationären Krankenhausaufenthalts unter der im LKF-Modell in der jeweiligen LDF-Pauschale festgelegten Belagsdaueruntergrenze liegt.")
* insert DocumentExtension (
    ZusatzpunkteBelagsdauerausreisserNachOben, 
    "Zusatzpunkte Belagsdauerausreißer nach oben",
    "In dieses Datenfeld ist – soweit zutreffend – die Summe der tageweise ermittelten Zusatzpunkte für jene Patient:innen einzutragen\, deren Belagsdauer des akut-stationären Krankenhausaufenthaltes über der im LKF-Modell in der jeweiligen LDF-Pauschale fest- gelegten Belagsdauerobergrenze liegt.")
* insert DocumentExtension (
    ZusatzpunkteIntensiv, 
    "Zusatzpunkte Intensiv",
    "In dieses Datenfeld ist – soweit zutreffend – die Summe der Zusatzpunkte für während des stationären Krankenhausaufenthalts angefallene Tage auf abrechnungsrelevanten Intensiveinheiten einzutragen.")
* insert DocumentExtension (
    ZusatzpunkteMehrfachleistungen, 
    "Zusatzpunkte Mehrfachleistungen",
    "In dieses Datenfeld ist – soweit zutreffend – die Summe der Zusatzpunkte für zusätzliche Leistungen außerhalb des Punktepauschales der zur Abrechnung gelangenden Gruppe einzutragen.")
* insert DocumentExtension (
    PunkteSpeziellerBereicheTageweise, 
    "Punkte spezieller Bereiche - tageweise",
    "In dieses Datenfeld ist – soweit zutreffend – die Summe der tageweise ermittelten Punkte für einen stationären Krankenhausaufenthalt in speziellen Leistungsbereichen - z.B. in den Bereichen der Kinder- und Jugendpsychiatrie\, der Akut-Nachbehandlung von neuro- logischen Patient:innen\, der medizinischen Geriatrie\, der Akutgeriatrie/Remobilisation sowie der palliativmedizinischen Einrichtungen - einzutragen.")
* insert DocumentExtension (
    PunkteTotal, 
    "Punkte total",
    "In dieses Datenfeld ist die Gesamtsumme der für den stationären Aufenthalt/den ambulanten Besuch ermittelten Punkte einzutragen.")
* insert DocumentExtension (
    Leistungskomponente, 
    "Leistungskomponente/Leistungspunkte",
    "In dieses Datenfeld ist – soweit zutreffend – die Leistungskomponente bzw. sind die Leistungspunkte einzutragen.")
* insert DocumentExtension (
    TageskomponenteKontaktpunkte, 
    "Tageskomponente/Kontaktpunkte",
    "In dieses Datenfeld ist – soweit zutreffend – die Tageskomponente bzw. sind die Kontakt- punkte einzutragen.")