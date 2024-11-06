

<style>
  .table-responsive {
    display: block;
    width: 100%;
    overflow-x: auto;
  }

  .table-responsive > table {
    width: 100%;
  }
</style>

Diese Seite enthält das Mapping der Meldungen des MBDS Datensatzes (X01-X07, I11-I12, K01*) des LKF Systems zu FHIR. Die Dokumentation der LKF Meldungen ist unter <a href="https://www.sozialministerium.at/dam/jcr:9685da35-603a-4263-8025-6be5628c99b6/ANHANG1%20-%20AUFBAU%20UND%20INHALT%20DER%20DATENMELDUNGEN%202024.pdf">diesem Link</a> verfügbar.


### X01 -> FHIR
<div class="table-responsive">
<table>
    <tr>
        <td>X01</td>
        <td></td>
        <td>Resource</td>
        <td>FHIRPath</td>
        <td>Extension</td>
        <td>Anmerkung</td>
    </tr>
    <tr>
        <td></td>
        <td>Satzartenkennzeichen</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>in neuer Architektur nicht mehr notwendig</td>
    </tr>
    <tr>
        <td>KANR</td>
        <td>Krankenanstaltennummer/Leistungserbringer-ID</td>
        <td>MOPEDAccount + MOPEDClaim</td>
        <td>MOPEDAccount.owner:HL7ATCoreOrganization.identifier:GDA-OID | MOPEDClaim.provider:HL7ATCoreOrganization.identifier</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>AUFNR</td>
        <td>Aufnahmezahl</td>
        <td>MOPEDEncounter</td>
        <td>.identifier:Aufnahmezahl</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>KOSTCODE</td>
        <td>Leistungszuständiger Kostenträger – Code</td>
        <td>MOPEDAccount + MOPEDClaim</td>
        <td>MOPEDAccount.coverage.paymentBy.party:HL7ATCoreOrganization.identifier |MOPEDClaim.insurance.coverage:MOPEDCoverage.paymentBy.party</td>
        <td>payer</td>
        <td></td>
    </tr>
    <tr>
        <td></td>
        <td>Abrechnender Kostenträger – Code</td>
        <td>MOPEDAccount + MOPEDClaim</td>
        <td>MOPEDAccount.coverage.insurer:Organization.identifier + MOPEDClaim.insurer:Organization.identifier</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>AUFDAT</td>
        <td>Aufnahme-/Kontaktdatum</td>
        <td>MOPEDEncounter</td>
        <td>.period.start</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>AUFZEIT</td>
        <td>Aufnahme-/Kontaktuhrzeit</td>
        <td>MOPEDEncounter</td>
        <td>.period.start</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>ENTDAT</td>
        <td>Entlassungsdatum</td>
        <td>MOPEDEncounter</td>
        <td>.period.end</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>ENTZEIT</td>
        <td>Entlassungsuhrzeit</td>
        <td>MOPEDEncounter</td>
        <td>.period.end</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>AUFART1</td>
        <td>Aufnahme-/Zugangsart 1</td>
        <td>MOPEDEncounter</td>
        <td>.admission.extension</td>
        <td>Zugangsart</td>
        <td></td>
    </tr>
    <tr>
        <td>AUFART2</td>
        <td>Aufnahme-/Zugangsart 2</td>
        <td>MOPEDEncounter</td>
        <td>.class</td>
        <td>Aufnahmeart</td>
        <td></td>
    </tr>
    <tr>
        <td>ENTART</td>
        <td>Entlassungs-/Abgangsart</td>
        <td>MOPEDEncounter</td>
        <td>.admission.dischargeDisposition</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>GESCHL</td>
        <td>Geschlecht</td>
        <td>HL7ATCorePatient</td>
        <td>.gender</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>GEBDAT</td>
        <td>Geburtsdatum</td>
        <td>HL7ATCorePatient</td>
        <td>.birthDate</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>ALTERSGRUPPE</td>
        <td>Altersgruppe bei Entlassung/Kontakt</td>
        <td>MOPEDTransferEncounter</td>
        <td>.extension</td>
        <td>Altersgruppe.beiEntlassung</td>
        <td></td>
    </tr>
    <tr>
        <td>AUFNR_ID</td>
        <td>Datensatz-ID</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>in neuer Architektur nicht mehr notwendig</td>
    </tr>
    <tr>
        <td>STAATSB</td>
        <td>Staatsbürgerschaft</td>
        <td>HL7ATCorePatient</td>
        <td>.extension</td>
        <td>citizenship</td>
        <td></td>
    </tr>
    <tr>
        <td>WSTAAT</td>
        <td>Wohnsitz – Staat</td>
        <td>HL7ATCorePatient</td>
        <td>address.country</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>WPLZ</td>
        <td>Wohnsitz – Postleitzahl</td>
        <td>HL7ATCorePatient</td>
        <td>.address.postalCode</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>WGC</td>
        <td>Wohnsitz – Gemeindecode</td>
        <td>HL7ATCorePatient</td>
        <td>TBD</td>
        <td>TBD</td>
        <td></td>
    </tr>
    <tr>
        <td>AUFID</td>
        <td>Zugewiesen von – Krankenanstaltennummer</td>
        <td>MOPEDEncounter</td>
        <td>.admission.origin:HL7ATCoreOrganization.identifier</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>ENTID</td>
        <td>Zugewiesen an – Krankenanstaltennummer</td>
        <td>MOPEDEncounter</td>
        <td>.admission.destination:HL7ATCoreOrganization.identifier</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>BHART</td>
        <td>Behandlungsart</td>
        <td>MOPEDEncounter</td>
        <td>.class</td>
        <td>Behandlungsart</td>
        <td></td>
    </tr>
    <tr>
        <td>TRANSART</td>
        <td>Transportart</td>
        <td>MOPEDEncounter</td>
        <td>.extension</td>
        <td>Transportart</td>
        <td></td>
    </tr>
    <tr>
        <td>FONDSREL</td>
        <td>Fondsrelevanz</td>
        <td>MOPEDClaim</td>
        <td>.extension</td>
        <td>Fondsrelevanz</td>
        <td></td>
    </tr>
    <tr>
        <td>PFLAG</td>
        <td>Plausibilitätskennzeichen</td>
        <td>MOPEDClaim</td>
        <td>.extension</td>
        <td>Plausibilitaetskennzeichen</td>
        <td></td>
    </tr>
    <tr>
        <td></td>
        <td>Abrechnungsquartal der Sozialversicherung</td>
        <td>MOPEDClaim</td>
        <td>.extension</td>
        <td>SVAbrechnungsquartal</td>
        <td></td>
    </tr>
</table>
</div>
### X02 -> FHIR
<div class="table-responsive">
<table>
    <tr>
        <td>X02</td>
        <td></td>
        <td>Resource</td>
        <td>FHIRPath</td>
        <td>Extension</td>
        <td>Anmerkung</td>
    </tr>
    <tr>
        <td></td>
        <td>Satzartenkennzeichen</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>in neuer Architektur nicht mehr notwendig</td>
    </tr>
    <tr>
        <td>KANR</td>
        <td>Krankenanstaltennummer/Leistungserbringer-ID</td>
        <td>MOPEDAccount + MOPEDClaim</td>
        <td>MOPEDAccount.owner:HL7ATCoreOrganization.identifier:GDA-OID | MOPEDClaim.provider:HL7ATCoreOrganization.identifier</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>AUFNR</td>
        <td>Aufnahmezahl</td>
        <td>MOPEDEncounter</td>
        <td>.identifier:Aufnahmezahl</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>AUFDAT</td>
        <td>Aufnahme-/Kontaktdatum</td>
        <td>MOPEDEncounter</td>
        <td>.period.start</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>ALTERSGRUPPE</td>
        <td>Altersgruppe bei Zugang/Kontakt</td>
        <td>MOPEDTransferEncounter</td>
        <td>.extension</td>
        <td>Altersgruppe.beiZugang</td>
        <td></td>
    </tr>
    <tr>
        <td>AUFNR_ID</td>
        <td>Datensatz-ID</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>in neuer Architektur nicht mehr notwendig</td>
    </tr>
    <tr>
        <td>ABTPOS</td>
        <td>Hauptkostenstelle/Fachgebiet – Positionsnummer</td>
        <td>MOPEDAccount</td>
        <td>.extension</td>
        <td>AnzahlVerlegungen</td>
        <td>fortlaufende Nummer; wird bei jeder Verlegung & Urlaub erhöht => count(TransferEncounter)-1 </td>
    </tr>
    <tr>
        <td>ABTFC</td>
        <td>Hauptkostenstelle – Funktionscode/Fachgebiet</td>
        <td>MOPEDOrganizationAbteilung</td>
        <td>.identifier:Funktionscode</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>ABTZDAT</td>
        <td>Hauptkostenstelle/Fachgebiet – Zugangsdatum/Kontaktdatum</td>
        <td>MOPEDTransferEncounter</td>
        <td>.period.start</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>ABTZZEIT</td>
        <td>Hauptkostenstelle/Fachgebiet – Zugangsuhrzeit/Kontaktuhrzeit</td>
        <td>MOPEDTransferEncounter</td>
        <td>.period.start</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>ANWESEND</td>
        <td>Physische Anwesenheit</td>
        <td>MOPEDTransferEncounter</td>
        <td> .subjectStatus</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>ABTADAT</td>
        <td>Hauptkostenstelle – Abgangsdatum</td>
        <td>MOPEDTransferEncounter</td>
        <td>.period.end</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>ABTAZEIT</td>
        <td>Hauptkostenstelle – Abgangsuhrzeit</td>
        <td>MOPEDTransferEncounter</td>
        <td>.period.end</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>ABTAART</td>
        <td>Hauptkostenstelle – Abgangsart</td>
        <td>MOPEDTransferEncounter</td>
        <td>.admission.dischargeDisposition</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>ABTFC_FACH</td>
        <td>Hauptkostenstelle – Fachlicher Funktionscode</td>
        <td>MOPEDOrganizationAbteilung</td>
        <td>.identifier:Funktionscode</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>ABTFC_PFLEGE</td>
        <td>Hauptkostenstelle – Pflegerischer Funktionscode</td>
        <td>MopedAbteilungsOrganization</td>
        <td>TBD</td>
        <td>TBD</td>
        <td></td>
    </tr>
    <tr>
        <td>NEUGEBORENES</td>
        <td>Neugeborenes</td>
        <td>MOPEDTransferEncounter</td>
        <td>.extension</td>
        <td>Neugeborenes</td>
        <td></td>
    </tr>
</table>
</div>
### X03 -> FHIR
<div class="table-responsive">
<table>
    <tr>
        <td>X03</td>
        <td></td>
        <td>Resource</td>
        <td>FHIRPath</td>
        <td>Extension</td>
        <td>Anmerkung</td>
    </tr>
    <tr>
        <td></td>
        <td>Satzartenkennzeichen</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>in neuer Architektur nicht mehr notwendig</td>
    </tr>
    <tr>
        <td>KANR</td>
        <td>Krankenanstaltennummer/Leistungserbringer-ID</td>
        <td>MOPEDAccount + MOPEDClaim</td>
        <td>MOPEDAccount.owner:HL7ATCoreOrganization.identifier:GDA-OID | MOPEDClaim.provider:HL7ATCoreOrganization.identifier</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>AUFNR</td>
        <td>Aufnahmezahl</td>
        <td>MOPEDEncounter</td>
        <td>.identifier:Aufnahmezahl</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>AUFDAT</td>
        <td>Aufnahme-/Kontaktdatum</td>
        <td>MOPEDEncounter</td>
        <td>.period.start</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>AUFNR_ID</td>
        <td>Datensatz-ID</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>in neuer Architektur nicht mehr notwendig</td>
    </tr>
    <tr>
        <td>DIAGCODE</td>
        <td>Diagnose – Code</td>
        <td>Condition</td>
        <td>.code</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>DIAGTYP</td>
        <td>Diagnose – Typ</td>
        <td>MOPEDEncounter</td>
        <td>.diagnosis.use</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>DIAGART</td>
        <td>Diagnose – Art</td>
        <td>Condition</td>
        <td>.verificationStatus</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>DIAGERW</td>
        <td>Diagnose – im stationären Aufenthalt erworben</td>
        <td>MOPEDClaim</td>
        <td>.diagnosis.onAdmission</td>
        <td></td>
        <td></td>
    </tr>
</table>
</div>
### X04 -> FHIR
<div class="table-responsive">
<table>
    <tr>
        <td>X04</td>
        <td></td>
        <td>Resource</td>
        <td>FHIRPath</td>
        <td>Extension</td>
        <td>Anmerkung</td>
    </tr>
    <tr>
        <td></td>
        <td>Satzartenkennzeichen</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>in neuer Architektur nicht mehr notwendig</td>
    </tr>
    <tr>
        <td>KANR</td>
        <td>Krankenanstaltennummer/Leistungserbringer-ID</td>
        <td>MOPEDAccount + MOPEDClaim</td>
        <td>MOPEDAccount.owner:HL7ATCoreOrganization.identifier:GDA-OID | MOPEDClaim.provider:HL7ATCoreOrganization.identifier</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>AUFNR</td>
        <td>Aufnahmezahl</td>
        <td>MOPEDEncounter</td>
        <td>.identifier:Aufnahmezahl</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>AUFDAT</td>
        <td>Aufnahme-/Kontaktdatum</td>
        <td>MOPEDEncounter</td>
        <td>.period.start</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>AUFNR_ID</td>
        <td>Datensatz-ID</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>in neuer Architektur nicht mehr notwendig</td>
    </tr>
    <tr>
        <td>MELCODE</td>
        <td>Medizinische Leistung – Code</td>
        <td>Procedure</td>
        <td>.code</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>MELCODESL</td>
        <td>Medizinische Leistung – Seitenlokalisation</td>
        <td>Procedure</td>
        <td>.bodysite</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>MELCODEREL</td>
        <td>Medizinische Leistung – Abrechnungsrelevanz</td>
        <td>MOPEDClaim</td>
        <td>.procedure.extension</td>
        <td>AbrechnungsRelevanz</td>
        <td></td>
    </tr>
    <tr>
        <td>MELANZ</td>
        <td>Medizinische Leistung – Anzahl</td>
        <td>TBD</td>
        <td>TBD</td>
        <td>TBD</td>
        <td></td>
    </tr>
    <tr>
        <td>MELDAT</td>
        <td>Medizinische Leistung – Datum der Erbringung</td>
        <td>Procedure</td>
        <td>.occurrenceDateTime</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>MELZEIT</td>
        <td>Medizinische Leistung – Uhrzeit der Erbringung</td>
        <td>Procedure</td>
        <td>.occurrenceDateTime</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>MELABTFC</td>
        <td>Funktionscode/Fachgebiet leistungserbringend</td>
        <td>Procedure</td>
        <td>.performer.actor</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>MELKANR</td>
        <td>Krankenanstaltennummer leistungserbringend</td>
        <td>Procedure</td>
        <td>.performer.actor.partOf.identifier:GDA-OID</td>
        <td></td>
        <td></td>
    </tr>
</table>
</div>
### X05 -> FHIR
<div class="table-responsive">
<table>
    <tr>
        <td>X05</td>
        <td></td>
        <td>Resource</td>
        <td>FHIRPath</td>
        <td>Extension</td>
        <td>Anmerkung</td>
    </tr>
    <tr>
        <td></td>
        <td>Satzartenkennzeichen</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>in neuer Architektur nicht mehr notwendig</td>
    </tr>
    <tr>
        <td>KANR</td>
        <td>Krankenanstaltennummer/Leistungserbringer-ID</td>
        <td>MOPEDAccount + MOPEDClaim</td>
        <td>MOPEDAccount.owner:HL7ATCoreOrganization.identifier:GDA-OID | MOPEDClaim.provider:HL7ATCoreOrganization.identifier</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>AUFNR</td>
        <td>Aufnahmezahl</td>
        <td>MOPEDEncounter</td>
        <td>.identifier:Aufnahmezahl</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>AUFDAT</td>
        <td>Aufnahme-/Kontaktdatum</td>
        <td>MOPEDEncounter</td>
        <td>.period.start</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>AUFNR_ID</td>
        <td>Datensatz-ID</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>in neuer Architektur nicht mehr notwendig</td>
    </tr>
    <tr>
        <td>LDFGRP</td>
        <td>Abrechnung – Gruppe</td>
        <td>MOPEDClaim & MOPEDClaimResponse</td>
        <td>.diagnosisRelatedGroup</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>LDFKNT</td>
        <td>Abrechnung – Knoten</td>
        <td>MOPEDClaim & MOPEDClaimResponse</td>
        <td>.extension</td>
        <td>DiagnoseKnoten</td>
        <td></td>
    </tr>
    <tr>
        <td>BDZU</td>
        <td>Zusatzpunkte Belagsdauerausreißer nach oben</td>
        <td>MOPEDClaim & MOPEDClaimResponse</td>
        <td>.extension</td>
        <td>ZusatzpunkteBelagsdauerausreisserNachOben</td>
        <td></td>
    </tr>
    <tr>
        <td>INTZU</td>
        <td>Zusatzpunkte Intensiv</td>
        <td>MOPEDClaim & MOPEDClaimResponse</td>
        <td>.extension</td>
        <td>ZusatzpunkteIntensiv</td>
        <td></td>
    </tr>
    <tr>
        <td>MELZU</td>
        <td>Zusatzpunkte Mehrfachleistungen</td>
        <td>MOPEDClaim & MOPEDClaimResponse</td>
        <td>.extension</td>
        <td>ZusatzpunkteMehrfachleistungen</td>
        <td></td>
    </tr>
    <tr>
        <td>SCSPEZ</td>
        <td>Punkte spezieller Bereiche (tageweise)</td>
        <td>MOPEDClaim & MOPEDClaimResponse</td>
        <td>.extension</td>
        <td>PunkteSpeziellerBereicheTageweise</td>
        <td></td>
    </tr>
    <tr>
        <td>SCGES</td>
        <td>Punkte total</td>
        <td>MOPEDClaim & MOPEDClaimResponse</td>
        <td>.extension</td>
        <td>TotalPoints</td>
        <td></td>
    </tr>
    <tr>
        <td></td>
        <td>Leistungskomponente/Leistungspunkte</td>
        <td>MOPEDClaim & MOPEDClaimResponse</td>
        <td>.extension</td>
        <td>LeistungskomponenteLeistungspunkte</td>
        <td></td>
    </tr>
    <tr>
        <td></td>
        <td>Tageskomponente/Kontaktpunkte</td>
        <td>MOPEDClaim & MOPEDClaimResponse</td>
        <td>.extension</td>
        <td>TageskomponenteKontaktpunkte</td>
        <td></td>
    </tr>
    <tr>
        <td>SCULK</td>
        <td>Punkte Belagsdauerausreißer nach unten – Leistungskomponente</td>
        <td>MOPEDClaim & MOPEDClaimResponse</td>
        <td>.extension</td>
        <td>PunkteBelagsdauerausreisseruntenLeistungskomponente</td>
        <td></td>
    </tr>
    <tr>
        <td>SCUTK</td>
        <td>Punkte Belagsdauerausreißer nach unten – Tageskomponente</td>
        <td>MOPEDClaim & MOPEDClaimResponse</td>
        <td>.extension</td>
        <td>PunkteBelagsdauerausreisseruntenTageskomponente</td>
        <td></td>
    </tr>
</table>
</div>
### X06 -> FHIR
<div class="table-responsive">
<table>
    <tr>
        <td>X06</td>
        <td></td>
        <td>Resource</td>
        <td>FHIRPath</td>
        <td>Extension</td>
        <td>Anmerkung</td>
    </tr>
    <tr>
        <td>Akzeptierte Errors/Warnings</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td></td>
        <td>Satzartenkennzeichen</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>in neuer Architektur nicht mehr notwendig</td>
    </tr>
    <tr>
        <td>KANR</td>
        <td>Krankenanstaltennummer/Leistungserbringer-ID</td>
        <td>MOPEDAccount + MOPEDClaim</td>
        <td>MOPEDAccount.owner:HL7ATCoreOrganization.identifier:GDA-OID | MOPEDClaim.provider:HL7ATCoreOrganization.identifier</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>AUFNR</td>
        <td>Aufnahmezahl</td>
        <td>MOPEDEncounter</td>
        <td>.identifier:Aufnahmezahl</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>AUFDAT</td>
        <td>Aufnahme-/Kontaktdatum</td>
        <td>MOPEDEncounter</td>
        <td>.period.start</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>AUFNR_ID</td>
        <td>Datensatz-ID</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>in neuer Architektur nicht mehr notwendig</td>
    </tr>
    <tr>
        <td>EWWERT</td>
        <td>Error/Warning – Wert</td>
        <td>MOPEDClaim</td>
        <td>.extension</td>
        <td>FehlerWarnung.value</td>
        <td></td>
    </tr>
    <tr>
        <td>EWCODE</td>
        <td>Error/Warning – Code</td>
        <td>MOPEDClaim</td>
        <td>.extension</td>
        <td>FehlerWarnung.code</td>
        <td></td>
    </tr>
    <tr>
        <td>EWKOMMENTAR</td>
        <td>Error/Warning – Kommentar</td>
        <td>MOPEDClaim</td>
        <td>.extension</td>
        <td>FehlerWarnung.comment</td>
        <td></td>
    </tr>
</table>
</div>
### X07 -> FHIR
<div class="table-responsive">
<table>
    <tr>
        <td>X07</td>
        <td></td>
        <td>Resource</td>
        <td>FHIRPath</td>
        <td>Extension</td>
        <td>Anmerkung</td>
    </tr>
    <tr>
        <td>Kommentare</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td></td>
        <td>Satzartenkennzeichen</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>in neuer Architektur nicht mehr notwendig</td>
    </tr>
    <tr>
        <td>KANR</td>
        <td>Krankenanstaltennummer/Leistungserbringer-ID</td>
        <td>MOPEDAccount + MOPEDClaim</td>
        <td>MOPEDAccount.owner:HL7ATCoreOrganization.identifier:GDA-OID | MOPEDClaim.provider:HL7ATCoreOrganization.identifier</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>AUFNR</td>
        <td>Aufnahmezahl</td>
        <td>MOPEDEncounter</td>
        <td>.identifier:Aufnahmezahl</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>AUFDAT</td>
        <td>Aufnahme-/Kontaktdatum</td>
        <td>MOPEDEncounter</td>
        <td>.period.start</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>AUFNR_ID</td>
        <td>Datensatz-ID</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>in neuer Architektur nicht mehr notwendig</td>
    </tr>
    <tr>
        <td>KOMMENTAR1</td>
        <td>Kommentar 1</td>
        <td>MOPEDClaim & MOPEDClaimResponse</td>
        <td>.extension</td>
        <td>note</td>
        <td></td>
    </tr>
    <tr>
        <td>KOMMENTAR2</td>
        <td>Kommentar 2</td>
        <td>MOPEDClaim & MOPEDClaimResponse</td>
        <td>.extension</td>
        <td>note</td>
        <td></td>
    </tr>
    <tr>
        <td>KOMMENTAR3</td>
        <td>Kommentar 3</td>
        <td>MOPEDClaim & MOPEDClaimResponse</td>
        <td>.extension</td>
        <td>note</td>
        <td></td>
    </tr>
    <tr>
        <td>KOMMENTAR4</td>
        <td>Kommentar 4</td>
        <td>MOPEDClaim & MOPEDClaimResponse</td>
        <td>.extension</td>
        <td>note</td>
        <td></td>
    </tr>
    <tr>
        <td>KOMMENTAR5</td>
        <td>Kommentar 5</td>
        <td>ClaimResponse</td>
        <td>.extension</td>
        <td>note</td>
        <td></td>
    </tr>
    <tr>
        <td>KOMMENTAR6</td>
        <td>Kommentar 6</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
</table>
</div>
### I11 -> FHIR
<div class="table-responsive">
<table>
    <tr>
        <td>I11 </td>
        <td></td>
        <td>Resource</td>
        <td>FHIRPath</td>
        <td>Extension</td>
        <td>Anmerkung</td>
    </tr>
    <tr>
        <td>SAPS3</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td></td>
        <td>Satzartenkennzeichen</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>in neuer Architektur nicht mehr notwendig</td>
    </tr>
    <tr>
        <td>KANR</td>
        <td>Krankenanstaltennummer/Leistungserbringer-ID</td>
        <td>MOPEDAccount + MOPEDClaim</td>
        <td>MOPEDAccount.owner:HL7ATCoreOrganization.identifier:GDA-OID | MOPEDClaim.provider:HL7ATCoreOrganization.identifier</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>AUFNR</td>
        <td>Aufnahmezahl</td>
        <td>MOPEDEncounter</td>
        <td>.identifier:Aufnahmezahl</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>AUFDAT</td>
        <td>Aufnahme-/Kontaktdatum</td>
        <td>MOPEDEncounter</td>
        <td>.period.start</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>ABTPOS</td>
        <td>Bettenführende Hauptkostenstelle – Positionsnummer</td>
        <td>MOPEDAccount</td>
        <td>.extension</td>
        <td>AnzahlVerlegungen</td>
        <td>fortlaufende Nummer; wird bei jeder Verlegung & Urlaub erhöht => count(TransferEncounter)-1 </td>
    </tr>
    <tr>
        <td>ERHDAT</td>
        <td>Erhebungsdatum</td>
        <td>Intensivdokumentation als FHIR Questionnaire</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>ADM_INF</td>
        <td>Akute Infektion bei Aufnahme</td>
        <td>Intensivdokumentation als FHIR Questionnaire</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>R_OTHER</td>
        <td>Aufnahmegrund: Anderer, nicht klassifiziert</td>
        <td>Intensivdokumentation als FHIR Questionnaire</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>R_BASIC</td>
        <td>Aufnahmegrund: Basispflege und Observanz</td>
        <td>Intensivdokumentation als FHIR Questionnaire</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>R_DIGEST</td>
        <td>Aufnahmegrund: Gastrointestinal</td>
        <td>Intensivdokumentation als FHIR Questionnaire</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>R_HAEMA</td>
        <td>Aufnahmegrund: Hämatologisch</td>
        <td>Intensivdokumentation als FHIR Questionnaire</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>R_CARDIO</td>
        <td>Aufnahmegrund: Kardiovaskulär</td>
        <td>Intensivdokumentation als FHIR Questionnaire</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>R_HEPATIC</td>
        <td>Aufnahmegrund: Leber</td>
        <td>Intensivdokumentation als FHIR Questionnaire</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>R_METAB</td>
        <td>Aufnahmegrund: Metabolisch</td>
        <td>Intensivdokumentation als FHIR Questionnaire</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>R_NEURO</td>
        <td>Aufnahmegrund: Neurologisch</td>
        <td>Intensivdokumentation als FHIR Questionnaire</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>R_RENAL</td>
        <td>Aufnahmegrund: Renal</td>
        <td>Intensivdokumentation als FHIR Questionnaire</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>R_RESP</td>
        <td>Aufnahmegrund: Respiratorisch</td>
        <td>Intensivdokumentation als FHIR Questionnaire</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>R_S_TRAUMA</td>
        <td>Aufnahmegrund: Schweres Trauma</td>
        <td>Intensivdokumentation als FHIR Questionnaire</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>ADM_ART</td>
        <td>Aufnahmetyp</td>
        <td>Intensivdokumentation als FHIR Questionnaire</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>WBC</td>
        <td>Blutbild: Leukozyten (Minimum)</td>
        <td>Intensivdokumentation als FHIR Questionnaire</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>PH</td>
        <td>Blutbild: pH-Wert</td>
        <td>Intensivdokumentation als FHIR Questionnaire</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>PLATELETS</td>
        <td>Blutbild: Thrombozyten (Minimum)</td>
        <td>Intensivdokumentation als FHIR Questionnaire</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>ANATOMIC</td>
        <td>Chirurgie – Eingriff</td>
        <td>Intensivdokumentation als FHIR Questionnaire</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>SURGICAL</td>
        <td>Chirurgischer Status</td>
        <td>Intensivdokumentation als FHIR Questionnaire</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>GCS_MR</td>
        <td>Glasgow Coma Scale: motorische Reaktion</td>
        <td>Intensivdokumentation als FHIR Questionnaire</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>GCS_VR</td>
        <td>Glasgow Coma Scale: verbale Reaktion</td>
        <td>Intensivdokumentation als FHIR Questionnaire</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>GCS_ER</td>
        <td>Glasgow Coma Scale: visuelle Reaktion</td>
        <td>Intensivdokumentation als FHIR Questionnaire</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>HR</td>
        <td>Herzfrequenz (Maximum)</td>
        <td>Intensivdokumentation als FHIR Questionnaire</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>COKH</td>
        <td>Koexistierende Erkrankungen</td>
        <td>Intensivdokumentation als FHIR Questionnaire</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>TEMP</td>
        <td>Körpertemperatur (Maximum)</td>
        <td>Intensivdokumentation als FHIR Questionnaire</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>MECH_VENT</td>
        <td>Mechanische Beatmung</td>
        <td>Intensivdokumentation als FHIR Questionnaire</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>ART_PO2</td>
        <td>Sauerstoff-Partialdruck arteriell (PaO2)</td>
        <td>Intensivdokumentation als FHIR Questionnaire</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>FIO2</td>
        <td>Sauerstoffkonzentration inspiratorisch (FiO2)</td>
        <td>Intensivdokumentation als FHIR Questionnaire</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>BILIRUBINE</td>
        <td>Serum: Bilirubin (Maximum)</td>
        <td>Intensivdokumentation als FHIR Questionnaire</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>CREA</td>
        <td>Serum: Kreatinin (Maximum)</td>
        <td>Intensivdokumentation als FHIR Questionnaire</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>SAP</td>
        <td>Systolischer Blutdruck (Minimum)</td>
        <td>Intensivdokumentation als FHIR Questionnaire</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>THERA</td>
        <td>Therapeutische Maßnahmen (vor IBS)</td>
        <td>Intensivdokumentation als FHIR Questionnaire</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>IH_LOC</td>
        <td>Zutransferierung</td>
        <td>Intensivdokumentation als FHIR Questionnaire</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
</table>
</div>
### I12 -> FHIR
<div class="table-responsive">
<table>
    <tr>
        <td>I12</td>
        <td></td>
        <td>Resource</td>
        <td>FHIRPath</td>
        <td>Extension</td>
        <td>Anmerkung</td>
    </tr>
    <tr>
        <td>TISS-A</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td></td>
        <td>Satzartenkennzeichen</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>in neuer Architektur nicht mehr notwendig</td>
    </tr>
    <tr>
        <td>KANR</td>
        <td>Krankenanstaltennummer/Leistungserbringer-ID</td>
        <td>MOPEDAccount + MOPEDClaim</td>
        <td>MOPEDAccount.owner:HL7ATCoreOrganization.identifier:GDA-OID | MOPEDClaim.provider:HL7ATCoreOrganization.identifier</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>AUFNR</td>
        <td>Aufnahmezahl</td>
        <td>MOPEDEncounter</td>
        <td>.identifier:Aufnahmezahl</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>AUFDAT</td>
        <td>Aufnahme-/Kontaktdatum</td>
        <td>MOPEDEncounter</td>
        <td>.period.start</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>ABTPOS</td>
        <td>Bettenführende Hauptkostenstelle – Positionsnummer</td>
        <td>MOPEDAccount</td>
        <td>.extension</td>
        <td>AnzahlVerlegungen</td>
        <td>fortlaufende Nummer; wird bei jeder Verlegung & Urlaub erhöht => count(TransferEncounter)-1 </td>
    </tr>
    <tr>
        <td>ERHDAT</td>
        <td>Erhebungsdatum</td>
        <td>Intensivdokumentation als FHIR Questionnaire</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>TA_STAND_MON</td>
        <td>Standard-Monitoring</td>
        <td>Intensivdokumentation als FHIR Questionnaire</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>TA_LAB</td>
        <td>Labor</td>
        <td>Intensivdokumentation als FHIR Questionnaire</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>TA_MED</td>
        <td>Medikamente</td>
        <td>Intensivdokumentation als FHIR Questionnaire</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>TA_DRESS</td>
        <td>Verbandswechsel</td>
        <td>Intensivdokumentation als FHIR Questionnaire</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>TA_DRAIN</td>
        <td>Drainagenpflege</td>
        <td>Intensivdokumentation als FHIR Questionnaire</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>TA_VENT_MOD</td>
        <td>Atmungsmodus</td>
        <td>Intensivdokumentation als FHIR Questionnaire</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>TA_AIRWAY</td>
        <td>Atemwegszugang</td>
        <td>Intensivdokumentation als FHIR Questionnaire</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>TA_TUBUS</td>
        <td>Tubus-/Stomapflege</td>
        <td>Intensivdokumentation als FHIR Questionnaire</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>TA_LUNG</td>
        <td>Atemtherapie</td>
        <td>Intensivdokumentation als FHIR Questionnaire</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>TA_VASODR</td>
        <td>Medikamente vasoaktiv</td>
        <td>Intensivdokumentation als FHIR Questionnaire</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>TA_L_FLUID</td>
        <td>Flüssigkeitsersatz massiv</td>
        <td>Intensivdokumentation als FHIR Questionnaire</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>TA_ART</td>
        <td>Katheter arteriell</td>
        <td>Intensivdokumentation als FHIR Questionnaire</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>TA_HDM</td>
        <td>Monitoring hämodynamisch</td>
        <td>Intensivdokumentation als FHIR Questionnaire</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>TA_CVL</td>
        <td>Katheter zentralvenös</td>
        <td>Intensivdokumentation als FHIR Questionnaire</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>TA_CPR</td>
        <td>Reanimation kardiopulmonal</td>
        <td>Intensivdokumentation als FHIR Questionnaire</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>TA_RENAL</td>
        <td>Nierenersatztherapie</td>
        <td>Intensivdokumentation als FHIR Questionnaire</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>TA_URINARY</td>
        <td>Harnbilanzierung</td>
        <td>Intensivdokumentation als FHIR Questionnaire</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>TA_ACT_DIU</td>
        <td>Diurese aktiv</td>
        <td>Intensivdokumentation als FHIR Questionnaire</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>TA_ICP</td>
        <td>Hirndruckmessung</td>
        <td>Intensivdokumentation als FHIR Questionnaire</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>TA_MET_SUPP</td>
        <td>Behandlung metabolischer Entgleisungen</td>
        <td>Intensivdokumentation als FHIR Questionnaire</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>TA_NUT_ENT</td>
        <td>Ernährung enteral</td>
        <td>Intensivdokumentation als FHIR Questionnaire</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>TA_NUT_PARENT</td>
        <td>Ernährung parenteral</td>
        <td>Intensivdokumentation als FHIR Questionnaire</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>TA_INT</td>
        <td>Interventionen</td>
        <td>Intensivdokumentation als FHIR Questionnaire</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>TA_DIAG_EX_ICU</td>
        <td>Diagnostik und Therapie außerhalb der IBS</td>
        <td>Intensivdokumentation als FHIR Questionnaire</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>TA_AGITATION</td>
        <td>Agitation und Delirium</td>
        <td>Intensivdokumentation als FHIR Questionnaire</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>TA_CARDASS</td>
        <td>Assist kardial</td>
        <td>Intensivdokumentation als FHIR Questionnaire</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>TA_PULMASS</td>
        <td>Assist pulmonal</td>
        <td>Intensivdokumentation als FHIR Questionnaire</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>TA_HYPOTHERMIA</td>
        <td>Hypothermie therapeutisch</td>
        <td>Intensivdokumentation als FHIR Questionnaire</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>TA_LIVER_SUPP</td>
        <td>Lebersupport extrakorporal</td>
        <td>Intensivdokumentation als FHIR Questionnaire</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>TA_ANTIEPI</td>
        <td>Kontinuierliche intravenöse antikonvulsive Therapie</td>
        <td>Intensivdokumentation als FHIR Questionnaire</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
</table>
</div>
### K01* -> FHIR
<div class="table-responsive">
<table>
    <tr>
        <td>K01*</td>
        <td></td>
        <td>Resource</td>
        <td>FHIRPath</td>
        <td>Extension</td>
        <td>Anmerkung</td>
    </tr>
    <tr>
        <td>Kostenstellenplan</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td></td>
        <td>Satzartenkennzeichen</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>in neuer Architektur nicht mehr notwendig</td>
    </tr>
    <tr>
        <td>KANR</td>
        <td>Krankenanstaltennummer</td>
        <td>MOPEDAccount + MOPEDClaim</td>
        <td>MOPEDAccount.owner:HL7ATCoreOrganization.identifier:GDA-OID | MOPEDClaim.provider:HL7ATCoreOrganization.identifier</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>FC</td>
        <td>Funktionscode</td>
        <td>MOPEDOrganizationAbteilung</td>
        <td>.identifier:Funktionscode+.identifier:Funktionssubcode</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>KOSTNR</td>
        <td>m             </td>
        <td>MOPEDOrganizationAbteilung</td>
        <td>.extension</td>
        <td>Kostenstelle.InterneKostenstellennummer</td>
        <td></td>
    </tr>
    <tr>
        <td>KOSTBEZ</td>
        <td>Interne Kostenstellenbezeichnung</td>
        <td>MOPEDOrganizationAbteilung</td>
        <td>.extension</td>
        <td>Kostenstelle.InterneKostenstellenbezeichnung</td>
        <td></td>
    </tr>
    <tr>
        <td>SPEZORG</td>
        <td>Spezielle Organisationsform</td>
        <td>MOPEDOrganizationAbteilung</td>
        <td>.extension</td>
        <td>Kostenstelle.SpezielleOrganisationsform</td>
        <td></td>
    </tr>
    <tr>
        <td>JAHR</td>
        <td>Jahr</td>
        <td>MOPEDOrganizationAbteilung</td>
        <td>.extension</td>
        <td>Kostenstelle.period</td>
        <td></td>
    </tr>
</table>
</div>
