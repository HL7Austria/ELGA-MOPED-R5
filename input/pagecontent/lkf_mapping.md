
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


Diese Seite enthält das Mapping der Meldungen des MBDS Datensatzes (X01-X07, I11-I12, K01*) des LKF Systems zu FHIR. Die Dokumentation der LKF Meldungen ist unter <a href="https://www.sozialministerium.at/dam/jcr:8553d407-cc41-4b15-bace-5c4e155e8d88/ANHANG1%20-%20AUFBAU%20UND%20INHALT%20DER%20DATENMELDUNGEN%202025%20SP1%2020250131.pdf">diesem Link</a> verfügbar.


### X01 -> FHIR
<div class="table-responsive">
<table>
    <tr>
        <th>Feld</th>
        <th>befüllt von</th>
        <th>Profile</th>
        <th>FHIR Ressource</th>
        <th>Pfad von der Ressource aus</th>
        <th>Pfad von der Composition aus</th>
        <th>Anmerkungen</th>
    </tr>
    <tr>
        <td>Satzartenkennzeichen</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>in neuer Architektur nicht mehr notwendig</td>
    </tr>
    <tr>
        <td>Krankenanstaltennummer/Leistungserbringer-Stammdaten-ID</td>
        <td>KH</td>
        <td>KHOrganization</td>
        <td>Organization</td>
        <td>Organization.identifer:KANR</td>
        <td>Composition.section:zustaendigesKH.entry</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Aufnahmezahl</td>
        <td>KH</td>
        <td>MopedEncounterA, MopedEncounterS</td>
        <td>Encounter</td>
        <td>Encounter.identifier:Aufnahmezahl.value</td>
        <td>Composition.encounter</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Datensatz-ID</td>
        <td>KH</td>
        <td>MopedEncounterA, MopedEncounterS</td>
        <td>Encounter</td>
        <td>Encounter.identifier:DatensatzID.value</td>
        <td>Composition.encounter</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Aufnahme-/Kontaktdatum</td>
        <td>KH</td>
        <td>MopedEncounterA, MopedEncounterS</td>
        <td>Encounter</td>
        <td>Encounter.actualPeriod.start</td>
        <td>Composition.encounter</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Aufnahme-/Kontaktuhrzeit</td>
        <td>KH</td>
        <td>MopedEncounterA, MopedEncounterS</td>
        <td>Encounter</td>
        <td>Encounter.actualPeriod.start</td>
        <td>Composition.encounter</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Behandlungsart</td>
        <td>KH</td>
        <td>MopedEncounterA, MopedEncounterS</td>
        <td>Encounter</td>
        <td>Encounter.class:Behandlungsart</td>
        <td>Composition.encounter</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Geburtsdatum</td>
        <td>KH</td>
        <td>HL7ATCorePatient</td>
        <td>Patient</td>
        <td>Patient.birthDate</td>
        <td>Composition.subject</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Altersgruppe bei Entlassung/Kontakt</td>
        <td>KH</td>
        <td>MopedEncounterA, MopedEncounterS</td>
        <td>Encounter</td>
        <td>Encounter.extension:Altersgruppe.extension:beiEntlassung</td>
        <td>Composition.encounter</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Geschlecht</td>
        <td>KH</td>
        <td>HL7ATCorePatient</td>
        <td>Patient</td>
        <td>Patient.gender.extension:AdministrativeGender</td>
        <td>Composition.subject</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Staatsbürgerschaft</td>
        <td>KH</td>
        <td>HL7ATCorePatient</td>
        <td>Patient</td>
        <td>Patient.extension:citizenship.extension:code</td>
        <td>Composition.subject</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Wohnsitz – Staat</td>
        <td>KH</td>
        <td>HL7ATCorePatient</td>
        <td>Patient</td>
        <td>Patient.address.country</td>
        <td>Composition.subject</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Wohnsitz – Postleitzahl</td>
        <td>KH</td>
        <td>HL7ATCorePatient</td>
        <td>Patient</td>
        <td>Patient.address.postalCode</td>
        <td>Composition.subject</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Wohnsitz – Gemeindecode</td>
        <td>KH</td>
        <td>HL7ATCorePatient</td>
        <td>Patient</td>
        <td>Patient.address.extension:municipalityCode</td>
        <td>Composition.subject</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Aufnahme-/Zugangsart 1</td>
        <td>KH</td>
        <td>MopedEncounterA, MopedEncounterS</td>
        <td>Encounter</td>
        <td>Encounter.admission.extension:Aufnahmeart</td>
        <td>Composition.encounter</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Aufnahme-/Zugangsart 2</td>
        <td>KH</td>
        <td>MopedEncounterA, MopedEncounterS</td>
        <td>Encounter</td>
        <td>Encounter.class:Aufnahmeart2</td>
        <td>Composition.encounter</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Transportart</td>
        <td>KH</td>
        <td>MopedEncounterA, MopedEncounterS</td>
        <td>Encounter</td>
        <td>Encounter.admission.extension:transportart</td>
        <td>Composition.encounter</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Zugewiesen von – Krankenanstaltennummer</td>
        <td>KH</td>
        <td>MopedEncounterA, MopedEncounterS</td>
        <td>Encounter</td>
        <td>Encounter.admission.origin</td>
        <td>Composition.encounter</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Zugewiesen an – Krankenanstaltennummer</td>
        <td>KH</td>
        <td>MopedEncounterA, MopedEncounterS</td>
        <td>Encounter</td>
        <td>Encounter.admission.destination</td>
        <td>Composition.encounter</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Entlassungs-/Abgangsart</td>
        <td>KH</td>
        <td>MopedEncounterA, MopedEncounterS</td>
        <td>Encounter</td>
        <td>Encounter.admission.dischargeDisposition</td>
        <td>Composition.encounter</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Entlassungsdatum</td>
        <td>KH</td>
        <td>MopedEncounterA, MopedEncounterS</td>
        <td>Encounter</td>
        <td>Encounter.actualPeriod.end</td>
        <td>Composition.encounter</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Entlassungsuhrzeit</td>
        <td>KH</td>
        <td>MopedEncounterA, MopedEncounterS</td>
        <td>Encounter</td>
        <td>Encounter.actualPeriod.end</td>
        <td>Composition.encounter</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Leistungszuständiger Kostenträger – Code</td>
        <td>KH</td>
        <td>SVOrganization</td>
        <td>Organization</td>
        <td>Organization.identifer</td>
        <td>Composition.section:zustaendigeSV.entry</td>
        <td>Slice mit dem System http://svc.co.at/CodeSystem/ecard-svt-cs</td>
    </tr>
    <tr>
        <td>Fondsrelevanz</td>
        <td>KH</td>
        <td>LKFRequest</td>
        <td>Claim</td>
        <td>Claim.extension:Fondsrelevanz</td>
        <td>Composition.section:LKFRequests</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Plausibilitätskennzeichen</td>
        <td>KH</td>
        <td>LKFRequest</td>
        <td>Claim</td>
        <td>Claim.supportingInfo:Plausibilitaetskennzeichen.value</td>
        <td>Composition.section:LKFRequests</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Abrechnender Kostenträger – Code</td>
        <td>KH</td>
        <td>?</td>
        <td>?</td>
        <td>?</td>
        <td>?</td>
        <td>noch inhaltlich abzuklären: ggf. über den Träger des KH definiert</td>
    </tr>
    <tr>
        <td>Abrechnungsquartal der Sozialversicherung</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
    </tr>
</table>
</div>

### X02 -> FHIR
<div class="table-responsive">
<table>
    <tr>
        <th>Feld</th>
        <th>befüllt von</th>
        <th>Profile</th>
        <th>FHIR Ressource</th>
        <th>Pfad von der Ressource aus</th>
        <th>Pfad von der Composition aus</th>
        <th>Anmerkungen</th>
    </tr>
    <tr>
        <td>Satzartenkennzeichen</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>in neuer Architektur nicht mehr notwendig</td>
    </tr>
    <tr>
        <td>Krankenanstaltennummer/Leistungserbringer-Stammdaten-ID</td>
        <td>KH</td>
        <td>KHOrganization</td>
        <td>Organization</td>
        <td>Organization.identifer:KANR</td>
        <td>Composition.section:zustaendigesKH.entry</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Aufnahmezahl</td>
        <td>KH</td>
        <td>MopedEncounterA, MopedEncounterS</td>
        <td>Encounter</td>
        <td>Encounter.identifier:Aufnahmezahl</td>
        <td>Composition.encounter</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Datensatz-ID</td>
        <td>KH</td>
        <td>MopedEncounterA, MopedEncounterS</td>
        <td>Encounter</td>
        <td>Encounter.identifier:DatensatzID</td>
        <td>Composition.encounter</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Aufnahme-/Kontaktdatum</td>
        <td>KH</td>
        <td>MopedEncounterA, MopedEncounterS</td>
        <td>Encounter</td>
        <td>Encounter.actualPeriod.start</td>
        <td>Composition.encounter</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Hauptkostenstelle/Fachgebiet – Positionsnummer</td>
        <td>KH</td>
        <td>MopedComposition?</td>
        <td>?</td>
        <td>?</td>
        <td>?</td>
        <td>ggf. über FHIR ID des TransferEncounters lösbar; Details sind noch abzuklären</td>
    </tr>
    <tr>
        <td>Hauptkostenstelle – Funktionscode/Fachgebiet</td>
        <td>KH</td>
        <td>MopedTransferEncounterA, MopedTransferEncounterI, MopedTransferEncounterS</td>
        <td>Encounter</td>
        <td>Encounter.serviceProvider.resolve().identifier:Funktionscode + Encounter.serviceProvider.resolve().identifier:Funktionssubcode</td>
        <td>Composition.section:TransferEncounter</td>
        <td>Funktions- und subcode sind in zwei Felder aufgeteilt</td>
    </tr>
    <tr>
        <td>Hauptkostenstelle/Fachgebiet – Zugangsdatum/Kontaktdatum</td>
        <td>KH</td>
        <td>MopedTransferEncounterA, MopedTransferEncounterI, MopedTransferEncounterS</td>
        <td>Encounter</td>
        <td>Encounter.actualPeriod.start</td>
        <td>Composition.section:TransferEncounter</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Hauptkostenstelle/Fachgebiet – Zugangsuhrzeit/Kontaktuhrzeit</td>
        <td>KH</td>
        <td>MopedTransferEncounterA, MopedTransferEncounterI, MopedTransferEncounterS</td>
        <td>Encounter</td>
        <td>Encounter.actualPeriod.start</td>
        <td>Composition.section:TransferEncounter</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Physische Anwesenheit</td>
        <td>KH</td>
        <td>MopedTransferEncounterA, MopedTransferEncounterI, MopedTransferEncounterS</td>
        <td>Encounter</td>
        <td>Encounter.subjectStatus</td>
        <td>Composition.section:TransferEncounter</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Hauptkostenstelle – Abgangsdatum</td>
        <td>KH</td>
        <td>MopedTransferEncounterA, MopedTransferEncounterI, MopedTransferEncounterS</td>
        <td>Encounter</td>
        <td>Encounter.actualPeriod.end</td>
        <td>Composition.section:TransferEncounter</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Hauptkostenstelle – Abgangsuhrzeit</td>
        <td>KH</td>
        <td>MopedTransferEncounterA, MopedTransferEncounterI, MopedTransferEncounterS</td>
        <td>Encounter</td>
        <td>Encounter.actualPeriod.end</td>
        <td>Composition.section:TransferEncounter</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Hauptkostenstelle – Abgangsart</td>
        <td>KH</td>
        <td>MopedTransferEncounterA, MopedTransferEncounterI, MopedTransferEncounterS</td>
        <td>Encounter</td>
        <td>Encounter.admission.dischargeDisposition</td>
        <td>Composition.section:TransferEncounter</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Hauptkostenstelle – Fachlicher Funktionscode</td>
        <td>KH</td>
        <td>MopedTransferEncounterA, MopedTransferEncounterI, MopedTransferEncounterS</td>
        <td>Encounter</td>
        <td>?</td>
        <td>Composition.section:TransferEncounter</td>
        <td>wird in AG Moped geklärt</td>
    </tr>
    <tr>
        <td>Hauptkostenstelle – Pflegerischer Funktionscode</td>
        <td>KH</td>
        <td>MopedTransferEncounterA, MopedTransferEncounterI, MopedTransferEncounterS</td>
        <td>Encounter</td>
        <td>?</td>
        <td>Composition.section:TransferEncounter</td>
        <td>wird in AG Moped geklärt</td>
    </tr>
    <tr>
        <td>Neugeborenes</td>
        <td>KH</td>
        <td>MopedTransferEncounterA, MopedTransferEncounterI, MopedTransferEncounterS</td>
        <td>Encounter</td>
        <td>Encounter.admission.extension:Altersgruppe.extension:Neugeborenes</td>
        <td>Composition.section:TransferEncounter</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Altersgruppe bei Zugang/Kontakt</td>
        <td>KH</td>
        <td>MopedTransferEncounterA, MopedTransferEncounterI, MopedTransferEncounterS</td>
        <td>Encounter</td>
        <td>Encounter.admission.extension:Altersgruppe.extension:beiZugang</td>
        <td>Composition.section:TransferEncounter</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Aufnahmezahl – funktionscodebezogen</td>
        <td>KH</td>
        <td>MopedTransferEncounterA, MopedTransferEncounterI, MopedTransferEncounterS</td>
        <td>Encounter</td>
        <td>Encounter.identifier[FunktionscodebezogeneAufnahmezahl]</td>
        <td>Composition.section:TransferEncounter</td>
        <td>/</td>
    </tr>
</table>
</div>

### X03 -> FHIR
<div class="table-responsive">
<table>
    <tr>
        <th>Feld</th>
        <th>befüllt von</th>
        <th>Profile</th>
        <th>FHIR Ressource</th>
        <th>Pfad von der Ressource aus</th>
        <th>Pfad von der Composition aus</th>
        <th>Anmerkungen</th>
    </tr>
    <tr>
        <td>Satzartenkennzeichen</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>in neuer Architektur nicht mehr notwendig</td>
    </tr>
    <tr>
        <td>Krankenanstaltennummer/Leistungserbringer-Stammdaten-ID</td>
        <td>KH</td>
        <td>KHOrganization</td>
        <td>Organization</td>
        <td>Organization.identifer:KANR</td>
        <td>Composition.section:zustaendigesKH.entry</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Aufnahmezahl</td>
        <td>KH</td>
        <td>MopedEncounterA, MopedEncounterS</td>
        <td>Encounter</td>
        <td>Encounter.identifier:Aufnahmezahl</td>
        <td>Composition.encounter</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Datensatz-ID</td>
        <td>KH</td>
        <td>MopedEncounterA, MopedEncounterS</td>
        <td>Encounter</td>
        <td>Encounter.identifier:DatensatzID</td>
        <td>Composition.encounter</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Aufnahme-/Kontaktdatum</td>
        <td>KH</td>
        <td>MopedEncounterA, MopedEncounterS</td>
        <td>Encounter</td>
        <td>Encounter.actualPeriod.start</td>
        <td>Composition.encounter</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Diagnose – Code</td>
        <td>KH</td>
        <td>MopedCondition</td>
        <td>Condition</td>
        <td>Condition.code</td>
        <td>Composition.section:Diagnosen</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Diagnose – Typ</td>
        <td>KH</td>
        <td>MopedCondition</td>
        <td>Condition</td>
        <td>Condition.extension:Diagnosetyp</td>
        <td>Composition.section:Diagnosen</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Diagnose – Art</td>
        <td>KH</td>
        <td>MopedCondition</td>
        <td>Condition</td>
        <td>Condition.verificationStatus</td>
        <td>Composition.section:Diagnosen</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Diagnose – im stationären Aufenthalt erworben</td>
        <td>KH</td>
        <td>LKFRequest</td>
        <td>Claim</td>
        <td>LKFRequest.diagnosis.onAdmission</td>
        <td>Composition.section:LKFRequests</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Aufnahmezahl – funktionscodebezogen</td>
        <td>KH</td>
        <td>?</td>
        <td>?</td>
        <td>?</td>
        <td>?</td>
        <td>/</td>
    </tr>
</table>
</div>

### X04 -> FHIR
<div class="table-responsive">
<table>
    <tr>
        <th>Feld</th>
        <th>befüllt von</th>
        <th>Profile</th>
        <th>FHIR Ressource</th>
        <th>Pfad von der Ressource aus</th>
        <th>Pfad von der Composition aus</th>
        <th>Anmerkungen</th>
    </tr>
    <tr>
        <td>Satzartenkennzeichen</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>in neuer Architektur nicht mehr notwendig</td>
    </tr>
    <tr>
        <td>Krankenanstaltennummer/Leistungserbringer-Stammdaten-ID</td>
        <td>KH</td>
        <td>KHOrganization</td>
        <td>Organization</td>
        <td>Organization.identifer:KANR</td>
        <td>Composition.section:zustaendigesKH.entry</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Aufnahmezahl</td>
        <td>KH</td>
        <td>MopedEncounterA, MopedEncounterS</td>
        <td>Encounter</td>
        <td>Encounter.identifier:Aufnahmezahl</td>
        <td>Composition.encounter</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Datensatz-ID</td>
        <td>KH</td>
        <td>MopedEncounterA, MopedEncounterS</td>
        <td>Encounter</td>
        <td>Encounter.identifier:DatensatzID</td>
        <td>Composition.encounter</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Aufnahme-/Kontaktdatum</td>
        <td>KH</td>
        <td>MopedEncounterA, MopedEncounterS</td>
        <td>Encounter</td>
        <td>Encounter.actualPeriod.start</td>
        <td>Composition.encounter</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Medizinische Leistung – Code</td>
        <td>KH</td>
        <td>MopedProcedure</td>
        <td>Procedure</td>
        <td>Procedure.code</td>
        <td>Composition.section:Leistungen.entry</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Medizinische Leistung – Seitenlokalisation</td>
        <td>KH</td>
        <td>MopedProcedure</td>
        <td>Procedure</td>
        <td>Procedure.bodySite</td>
        <td>Composition.section:Leistungen.entry</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Medizinische Leistung – Abrechnungsrelevanz</td>
        <td>KH</td>
        <td>LKFRequest</td>
        <td>Claim</td>
        <td>Claim.procedure.extension:Abrechnungsrelevanz</td>
        <td>Composition.section:LKFRequests</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Medizinische Leistung – Anzahl</td>
        <td>KH</td>
        <td>MopedProcedure</td>
        <td>Procedure</td>
        <td>Procedure.extension:Leistungsanzahl</td>
        <td>Composition.section:Leistungen.entry</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Medizinische Leistung – Datum der Erbringung</td>
        <td>KH</td>
        <td>MopedProcedure</td>
        <td>Procedure</td>
        <td>Procedure.occurrenceDateTime</td>
        <td>Composition.section:Leistungen.entry</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Medizinische Leistung – Uhrzeit der Erbringung</td>
        <td>KH</td>
        <td>MopedProcedure</td>
        <td>Procedure</td>
        <td>Procedure.occurrenceDateTime</td>
        <td>Composition.section:Leistungen.entry</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Funktionscode/Fachgebiet leistungserbringend</td>
        <td>KH</td>
        <td>MopedProcedure</td>
        <td>Procedure</td>
        <td>Procedure.performer.actor</td>
        <td>Composition.section:Leistungen.entry</td>
        <td>Referenz auf eine Abteilung</td>
    </tr>
    <tr>
        <td>Krankenanstaltennummer leistungserbringend</td>
        <td>KH</td>
        <td>MopedProcedure</td>
        <td>Procedure</td>
        <td>Procedure.performer.actor</td>
        <td>Composition.section:Leistungen.entry</td>
        <td>Referenz auf eine Krankenanstalt</td>
    </tr>
    <tr>
        <td>Aufnahmezahl – funktionscodebezogen</td>
        <td>KH</td>
        <td>TransferEncounterS, TransferEncounterI</td>
        <td>Encounter?</td>
        <td>?</td>
        <td>?</td>
        <td>/</td>
    </tr>
</table>
</div>

### X05 -> FHIR
<div class="table-responsive">
<table>
    <tr>
        <th>Feld</th>
        <th>befüllt von</th>
        <th>Profile</th>
        <th>FHIR Ressource</th>
        <th>Pfad von der Ressource aus</th>
        <th>Pfad von der Composition aus</th>
        <th>Anmerkungen</th>
    </tr>
    <tr>
        <td>Satzartenkennzeichen</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>in neuer Architektur nicht mehr notwendig</td>
    </tr>
    <tr>
        <td>Krankenanstaltennummer</td>
        <td>KH</td>
        <td>KHOrganization</td>
        <td>Organization</td>
        <td>Organization.identifer:KANR</td>
        <td>Composition.section:zustaendigesKH.entry</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Aufnahmezahl</td>
        <td>KH</td>
        <td>MopedEncounterA, MopedEncounterS</td>
        <td>Encounter</td>
        <td>Encounter.identifier:Aufnahmezahl</td>
        <td>Composition.encounter</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Datensatz-ID</td>
        <td>KH</td>
        <td>MopedEncounterA, MopedEncounterS</td>
        <td>Encounter</td>
        <td>Encounter.identifier:DatensatzID</td>
        <td>Composition.encounter</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Aufnahme-/Kontaktdatum</td>
        <td>KH</td>
        <td>MopedEncounterA, MopedEncounterS</td>
        <td>Encounter</td>
        <td>Encounter.actualPeriod.start</td>
        <td>Composition.encounter</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Abrechnung – Gruppe</td>
        <td>KH</td>
        <td>LKFRequest</td>
        <td>Claim</td>
        <td>Claim.diagnosisRelatedGroup</td>
        <td>Composition.section:LKFRequests</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Abrechnung – Knoten</td>
        <td>KH</td>
        <td>LKFRequest</td>
        <td>Claim</td>
        <td>Claim.extension:DiagnoseKnoten</td>
        <td>Composition.section:LKFRequests</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Leistungskomponente/Leistungspunkte</td>
        <td>KH</td>
        <td>LKFRequest</td>
        <td>Claim</td>
        <td>Claim.item:Leistungskomponente.quantity.value</td>
        <td>Composition.section:LKFRequests</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Tageskomponente/Kontaktpunkte</td>
        <td>KH</td>
        <td>LKFRequest</td>
        <td>Claim</td>
        <td>Claim.item:Tageskomponente.quantity.value</td>
        <td>Composition.section:LKFRequests</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Punkte Belagsdauerausreißer nach unten – Leistungskomponente</td>
        <td>KH</td>
        <td>LKFRequest</td>
        <td>Claim</td>
        <td>Claim.item:PunkteBelagsdauerausreisserUntenLeistungskomponente.quantity.value</td>
        <td>Composition.section:LKFRequests</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Punkte Belagsdauerausreißer nach unten – Tageskomponente</td>
        <td>KH</td>
        <td>LKFRequest</td>
        <td>Claim</td>
        <td>Claim.item:PunkteBelagsdauerausreisserUntenTageskomponente.quantity.value</td>
        <td>Composition.section:LKFRequests</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Zusatzpunkte Belagsdauerausreißer nach oben</td>
        <td>KH</td>
        <td>LKFRequest</td>
        <td>Claim</td>
        <td>Claim.item:ZusatzpunkteBelagsdauerausreisserNachOben.quantity.value</td>
        <td>Composition.section:LKFRequests</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Zusatzpunkte Intensiv</td>
        <td>KH</td>
        <td>LKFRequest</td>
        <td>Claim</td>
        <td>Claim.item:ZusatzpunkteIntensiv.quantity.value</td>
        <td>Composition.section:LKFRequests</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Zusatzpunkte Mehrfachleistungen</td>
        <td>KH</td>
        <td>LKFRequest</td>
        <td>Claim</td>
        <td>Claim.item:ZusatzpunkteMehrfachleistungen.quantity.value</td>
        <td>Composition.section:LKFRequests</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Punkte spezieller Bereiche (tageweise)</td>
        <td>KH</td>
        <td>LKFRequest</td>
        <td>Claim</td>
        <td>Claim.item:PunkteSpeziellerBereicheTageweise.quantity.value</td>
        <td>Composition.section:LKFRequests</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Punkte total</td>
        <td>KH</td>
        <td>LKFRequest</td>
        <td>Claim</td>
        <td>Claim.item:Gesamtpunkte.quantity.value</td>
        <td>Composition.section:LKFRequests</td>
        <td>/</td>
    </tr>
</table>
</div>

### X06 -> FHIR
<div class="table-responsive">
<table>
    <tr>
        <th>Feld</th>
        <th>befüllt von</th>
        <th>Profile</th>
        <th>FHIR Ressource</th>
        <th>Pfad von der Ressource aus</th>
        <th>Pfad von der Composition aus</th>
        <th>Anmerkungen</th>
    </tr>
    <tr>
        <td>Satzartenkennzeichen</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>in neuer Architektur nicht mehr notwendig</td>
    </tr>
    <tr>
        <td>Krankenanstaltennummer</td>
        <td>KH</td>
        <td>KHOrganization</td>
        <td>Organization</td>
        <td>Organization.identifer:KANR</td>
        <td>Composition.section:zustaendigesKH.entry</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Aufnahmezahl</td>
        <td>KH</td>
        <td>MopedEncounterA, MopedEncounterS</td>
        <td>Encounter</td>
        <td>Encounter.identifier:Aufnahmezahl</td>
        <td>Composition.encounter</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Datensatz-ID</td>
        <td>KH</td>
        <td>MopedEncounterA, MopedEncounterS</td>
        <td>Encounter</td>
        <td>Encounter.identifier:DatensatzID</td>
        <td>Composition.encounter</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Aufnahme-/Kontaktdatum</td>
        <td>KH</td>
        <td>MopedEncounterA, MopedEncounterS</td>
        <td>Encounter</td>
        <td>Encounter.actualPeriod.start</td>
        <td>Composition.encounter</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Error/Warning – Wert</td>
        <td>KH</td>
        <td>LKFRequest</td>
        <td>Claim?</td>
        <td>?</td>
        <td>Composition.section:LKFRequests</td>
        <td>Error/Warning Prozess in Arbeit</td>
    </tr>
    <tr>
        <td>Error/Warning – Code</td>
        <td>KH</td>
        <td>LKFRequest</td>
        <td>Claim?</td>
        <td>?</td>
        <td>Composition.section:LKFRequests</td>
        <td>Error/Warning Prozess in Arbeit</td>
    </tr>
    <tr>
        <td>Error/Warning – Kommentar</td>
        <td>KH</td>
        <td>LKFRequest</td>
        <td>Claim?</td>
        <td>?</td>
        <td>Composition.section:LKFRequests</td>
        <td>Error/Warning Prozess in Arbeit</td>
    </tr>
</table>
</div>

### X07 -> FHIR
<div class="table-responsive">
<table>
    <tr>
        <th>Feld</th>
        <th>befüllt von</th>
        <th>Profile</th>
        <th>FHIR Ressource</th>
        <th>Pfad von der Ressource aus</th>
        <th>Pfad von der Composition aus</th>
        <th>Anmerkungen</th>
    </tr>
    <tr>
        <td>Satzartenkennzeichen</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>in neuer Architektur nicht mehr notwendig</td>
    </tr>
    <tr>
        <td>Krankenanstaltennummer</td>
        <td>KH</td>
        <td>KHOrganization</td>
        <td>Organization</td>
        <td>Organization.identifer:KANR</td>
        <td>Composition.section:zustaendigesKH.entry</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Aufnahmezahl</td>
        <td>KH</td>
        <td>MopedEncounterA, MopedEncounterS</td>
        <td>Encounter</td>
        <td>Encounter.identifier:Aufnahmezahl</td>
        <td>Composition.encounter</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Datensatz-ID</td>
        <td>KH</td>
        <td>MopedEncounterA, MopedEncounterS</td>
        <td>Encounter</td>
        <td>Encounter.identifier:DatensatzID</td>
        <td>Composition.encounter</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Aufnahme-/Kontaktdatum</td>
        <td>KH</td>
        <td>MopedEncounterA, MopedEncounterS</td>
        <td>Encounter</td>
        <td>Encounter.actualPeriod.start</td>
        <td>Composition.encounter</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Kommentar 1</td>
        <td>KH</td>
        <td>MopedCommunication</td>
        <td>Communication</td>
        <td>Communication.note.text</td>
        <td>Composition.section:Kommunikation</td>
        <td>Kommentare die MBDS relevant sind und als X07 exportiert werden sollen enthalten in der Communication.extension:MBDSRelevanz den Wert true</td>
    </tr>
    <tr>
        <td>Kommentar 2</td>
        <td>KH</td>
        <td>MopedCommunication</td>
        <td>Communication</td>
        <td>Communication.note.text</td>
        <td>Composition.section:Kommunikation</td>
        <td>Kommentare die MBDS relevant sind und als X07 exportiert werden sollen enthalten in der Communication.extension:MBDSRelevanz den Wert true</td>
    </tr>
    <tr>
        <td>Kommentar 3</td>
        <td>KH</td>
        <td>MopedCommunication</td>
        <td>Communication</td>
        <td>Communication.note.text</td>
        <td>Composition.section:Kommunikation</td>
        <td>Kommentare die MBDS relevant sind und als X07 exportiert werden sollen enthalten in der Communication.extension:MBDSRelevanz den Wert true</td>
    </tr>
    <tr>
        <td>Kommentar 4</td>
        <td>KH</td>
        <td>MopedCommunication</td>
        <td>Communication</td>
        <td>Communication.note.text</td>
        <td>Composition.section:Kommunikation</td>
        <td>Kommentare die MBDS relevant sind und als X07 exportiert werden sollen enthalten in der Communication.extension:MBDSRelevanz den Wert true</td>
    </tr>
    <tr>
        <td>Kommentar 5</td>
        <td>KH</td>
        <td>MopedCommunication</td>
        <td>Communication</td>
        <td>Communication.note.text</td>
        <td>Composition.section:Kommunikation</td>
        <td>Kommentare die MBDS relevant sind und als X07 exportiert werden sollen enthalten in der Communication.extension:MBDSRelevanz den Wert true</td>
    </tr>
    <tr>
        <td>Kommentar 6</td>
        <td>KH</td>
        <td>MopedCommunication</td>
        <td>Communication</td>
        <td>Communication.note.text</td>
        <td>Composition.section:Kommunikation</td>
        <td>Kommentare die MBDS relevant sind und als X07 exportiert werden sollen enthalten in der Communication.extension:MBDSRelevanz den Wert true</td>
    </tr>
</table>
</div>

### I11 SAPS -> FHIR
<div class="table-responsive">
<table>
    <tr>
        <th>Feld</th>
        <th>befüllt von</th>
        <th>Profile</th>
        <th>FHIR Ressource</th>
        <th>Pfad von der Ressource aus</th>
        <th>Pfad von der Composition aus</th>
        <th>Anmerkungen</th>
    </tr>
    <tr>
        <td>Satzartenkennzeichen</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>in neuer Architektur nicht mehr notwendig</td>
    </tr>
    <tr>
        <td>Krankenanstaltennummer</td>
        <td>KH</td>
        <td>MopedQuestionnaireResponse</td>
        <td>QuestionnaireResponse</td>
        <td>QuestionnaireResponse.item.item</td>
        <td>Composition.section:Frageboegen</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Aufnahmezahl</td>
        <td>KH</td>
        <td>MopedQuestionnaireResponse</td>
        <td>QuestionnaireResponse</td>
        <td>QuestionnaireResponse.item.item</td>
        <td>Composition.section:Frageboegen</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Datensatz-ID</td>
        <td>KH</td>
        <td>MopedQuestionnaireResponse</td>
        <td>QuestionnaireResponse</td>
        <td>QuestionnaireResponse.item.item</td>
        <td>Composition.section:Frageboegen</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Aufnahme-/Kontaktdatum</td>
        <td>KH</td>
        <td>MopedQuestionnaireResponse</td>
        <td>QuestionnaireResponse</td>
        <td>QuestionnaireResponse.item.item</td>
        <td>Composition.section:Frageboegen</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Bettenführende Hauptkostenstelle – Positionsnummer</td>
        <td>KH</td>
        <td>MopedQuestionnaireResponse</td>
        <td>QuestionnaireResponse</td>
        <td>QuestionnaireResponse.item.item</td>
        <td>Composition.section:Frageboegen</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Erhebungsdatum</td>
        <td>KH</td>
        <td>MopedQuestionnaireResponse</td>
        <td>QuestionnaireResponse</td>
        <td>QuestionnaireResponse.item.item</td>
        <td>Composition.section:Frageboegen</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Akute Infektion bei Aufnahme</td>
        <td>KH</td>
        <td>MopedQuestionnaireResponse</td>
        <td>QuestionnaireResponse</td>
        <td>QuestionnaireResponse.item.item</td>
        <td>Composition.section:Frageboegen</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Aufnahmegrund: Anderer, nicht klassifiziert</td>
        <td>KH</td>
        <td>MopedQuestionnaireResponse</td>
        <td>QuestionnaireResponse</td>
        <td>QuestionnaireResponse.item.item</td>
        <td>Composition.section:Frageboegen</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Aufnahmegrund: Basispflege und Observanz</td>
        <td>KH</td>
        <td>MopedQuestionnaireResponse</td>
        <td>QuestionnaireResponse</td>
        <td>QuestionnaireResponse.item.item</td>
        <td>Composition.section:Frageboegen</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Aufnahmegrund: Gastrointestinal</td>
        <td>KH</td>
        <td>MopedQuestionnaireResponse</td>
        <td>QuestionnaireResponse</td>
        <td>QuestionnaireResponse.item.item</td>
        <td>Composition.section:Frageboegen</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Aufnahmegrund: Hämatologisch</td>
        <td>KH</td>
        <td>MopedQuestionnaireResponse</td>
        <td>QuestionnaireResponse</td>
        <td>QuestionnaireResponse.item.item</td>
        <td>Composition.section:Frageboegen</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Aufnahmegrund: Kardiovaskulär</td>
        <td>KH</td>
        <td>MopedQuestionnaireResponse</td>
        <td>QuestionnaireResponse</td>
        <td>QuestionnaireResponse.item.item</td>
        <td>Composition.section:Frageboegen</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Aufnahmegrund: Leber</td>
        <td>KH</td>
        <td>MopedQuestionnaireResponse</td>
        <td>QuestionnaireResponse</td>
        <td>QuestionnaireResponse.item.item</td>
        <td>Composition.section:Frageboegen</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Aufnahmegrund: Metabolisch</td>
        <td>KH</td>
        <td>MopedQuestionnaireResponse</td>
        <td>QuestionnaireResponse</td>
        <td>QuestionnaireResponse.item.item</td>
        <td>Composition.section:Frageboegen</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Aufnahmegrund: Neurologisch</td>
        <td>KH</td>
        <td>MopedQuestionnaireResponse</td>
        <td>QuestionnaireResponse</td>
        <td>QuestionnaireResponse.item.item</td>
        <td>Composition.section:Frageboegen</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Aufnahmegrund: Renal</td>
        <td>KH</td>
        <td>MopedQuestionnaireResponse</td>
        <td>QuestionnaireResponse</td>
        <td>QuestionnaireResponse.item.item</td>
        <td>Composition.section:Frageboegen</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Aufnahmegrund: Respiratorisch</td>
        <td>KH</td>
        <td>MopedQuestionnaireResponse</td>
        <td>QuestionnaireResponse</td>
        <td>QuestionnaireResponse.item.item</td>
        <td>Composition.section:Frageboegen</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Aufnahmegrund: Schweres Trauma</td>
        <td>KH</td>
        <td>MopedQuestionnaireResponse</td>
        <td>QuestionnaireResponse</td>
        <td>QuestionnaireResponse.item.item</td>
        <td>Composition.section:Frageboegen</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Aufnahmetyp</td>
        <td>KH</td>
        <td>MopedQuestionnaireResponse</td>
        <td>QuestionnaireResponse</td>
        <td>QuestionnaireResponse.item.item</td>
        <td>Composition.section:Frageboegen</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Blutbild: Leukozyten (Minimum)</td>
        <td>KH</td>
        <td>MopedQuestionnaireResponse</td>
        <td>QuestionnaireResponse</td>
        <td>QuestionnaireResponse.item.item</td>
        <td>Composition.section:Frageboegen</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Blutbild: pH-Wert</td>
        <td>KH</td>
        <td>MopedQuestionnaireResponse</td>
        <td>QuestionnaireResponse</td>
        <td>QuestionnaireResponse.item.item</td>
        <td>Composition.section:Frageboegen</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Blutbild: Thrombozyten (Minimum)</td>
        <td>KH</td>
        <td>MopedQuestionnaireResponse</td>
        <td>QuestionnaireResponse</td>
        <td>QuestionnaireResponse.item.item</td>
        <td>Composition.section:Frageboegen</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Chirurgie – Eingriff</td>
        <td>KH</td>
        <td>MopedQuestionnaireResponse</td>
        <td>QuestionnaireResponse</td>
        <td>QuestionnaireResponse.item.item</td>
        <td>Composition.section:Frageboegen</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Chirurgischer Status</td>
        <td>KH</td>
        <td>MopedQuestionnaireResponse</td>
        <td>QuestionnaireResponse</td>
        <td>QuestionnaireResponse.item.item</td>
        <td>Composition.section:Frageboegen</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Glasgow Coma Scale: motorische Reaktion</td>
        <td>KH</td>
        <td>MopedQuestionnaireResponse</td>
        <td>QuestionnaireResponse</td>
        <td>QuestionnaireResponse.item.item</td>
        <td>Composition.section:Frageboegen</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Glasgow Coma Scale: verbale Reaktion</td>
        <td>KH</td>
        <td>MopedQuestionnaireResponse</td>
        <td>QuestionnaireResponse</td>
        <td>QuestionnaireResponse.item.item</td>
        <td>Composition.section:Frageboegen</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Glasgow Coma Scale: visuelle Reaktion</td>
        <td>KH</td>
        <td>MopedQuestionnaireResponse</td>
        <td>QuestionnaireResponse</td>
        <td>QuestionnaireResponse.item.item</td>
        <td>Composition.section:Frageboegen</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Herzfrequenz (Maximum)</td>
        <td>KH</td>
        <td>MopedQuestionnaireResponse</td>
        <td>QuestionnaireResponse</td>
        <td>QuestionnaireResponse.item.item</td>
        <td>Composition.section:Frageboegen</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Koexistierende Erkrankungen</td>
        <td>KH</td>
        <td>MopedQuestionnaireResponse</td>
        <td>QuestionnaireResponse</td>
        <td>QuestionnaireResponse.item.item.item</td>
        <td>Composition.section:Frageboegen</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Körpertemperatur (Maximum)</td>
        <td>KH</td>
        <td>MopedQuestionnaireResponse</td>
        <td>QuestionnaireResponse</td>
        <td>QuestionnaireResponse.item.item</td>
        <td>Composition.section:Frageboegen</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Mechanische Beatmung</td>
        <td>KH</td>
        <td>MopedQuestionnaireResponse</td>
        <td>QuestionnaireResponse</td>
        <td>QuestionnaireResponse.item.item</td>
        <td>Composition.section:Frageboegen</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Sauerstoff-Partialdruck arteriell (PaO2)</td>
        <td>KH</td>
        <td>MopedQuestionnaireResponse</td>
        <td>QuestionnaireResponse</td>
        <td>QuestionnaireResponse.item.item</td>
        <td>Composition.section:Frageboegen</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Sauerstoffkonzentration inspiratorisch (FiO2)</td>
        <td>KH</td>
        <td>MopedQuestionnaireResponse</td>
        <td>QuestionnaireResponse</td>
        <td>QuestionnaireResponse.item.item</td>
        <td>Composition.section:Frageboegen</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Serum: Bilirubin (Maximum)</td>
        <td>KH</td>
        <td>MopedQuestionnaireResponse</td>
        <td>QuestionnaireResponse</td>
        <td>QuestionnaireResponse.item.item</td>
        <td>Composition.section:Frageboegen</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Serum: Kreatinin (Maximum)</td>
        <td>KH</td>
        <td>MopedQuestionnaireResponse</td>
        <td>QuestionnaireResponse</td>
        <td>QuestionnaireResponse.item.item</td>
        <td>Composition.section:Frageboegen</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Systolischer Blutdruck (Minimum)</td>
        <td>KH</td>
        <td>MopedQuestionnaireResponse</td>
        <td>QuestionnaireResponse</td>
        <td>QuestionnaireResponse.item.item</td>
        <td>Composition.section:Frageboegen</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Therapeutische Maßnahmen (vor IBS)</td>
        <td>KH</td>
        <td>MopedQuestionnaireResponse</td>
        <td>QuestionnaireResponse</td>
        <td>QuestionnaireResponse.item.item.item</td>
        <td>Composition.section:Frageboegen</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Zutransferierung</td>
        <td>KH</td>
        <td>MopedQuestionnaireResponse</td>
        <td>QuestionnaireResponse</td>
        <td>QuestionnaireResponse.item.item</td>
        <td>Composition.section:Frageboegen</td>
        <td>/</td>
    </tr>
</table>
</div>

### I12 TISS -> FHIR
<div class="table-responsive">
<table>
    <tr>
        <th>Feld</th>
        <th>befüllt von</th>
        <th>Profile</th>
        <th>FHIR Ressource</th>
        <th>Pfad von der Ressource aus</th>
        <th>Pfad von der Composition aus</th>
        <th>Anmerkungen</th>
    </tr>
    <tr>
        <td>Satzartenkennzeichen</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>in neuer Architektur nicht mehr notwendig</td>
    </tr>
    <tr>
        <td>Krankenanstaltennummer</td>
        <td>KH</td>
        <td>MopedQuestionnaireResponse</td>
        <td>QuestionnaireResponse</td>
        <td>QuestionnaireResponse.item</td>
        <td>Composition.section:Frageboegen</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Aufnahmezahl</td>
        <td>KH</td>
        <td>MopedQuestionnaireResponse</td>
        <td>QuestionnaireResponse</td>
        <td>QuestionnaireResponse.item</td>
        <td>Composition.section:Frageboegen</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Datensatz-ID</td>
        <td>KH</td>
        <td>MopedQuestionnaireResponse</td>
        <td>QuestionnaireResponse</td>
        <td>QuestionnaireResponse.item</td>
        <td>Composition.section:Frageboegen</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Aufnahme-/Kontaktdatum</td>
        <td>KH</td>
        <td>MopedQuestionnaireResponse</td>
        <td>QuestionnaireResponse</td>
        <td>QuestionnaireResponse.item</td>
        <td>Composition.section:Frageboegen</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Bettenführende Hauptkostenstelle – Positionsnummer</td>
        <td>KH</td>
        <td>MopedQuestionnaireResponse</td>
        <td>QuestionnaireResponse</td>
        <td>QuestionnaireResponse.item</td>
        <td>Composition.section:Frageboegen</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Erhebungsdatum</td>
        <td>KH</td>
        <td>MopedQuestionnaireResponse</td>
        <td>QuestionnaireResponse</td>
        <td>QuestionnaireResponse.item</td>
        <td>Composition.section:Frageboegen</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Standard-Monitoring</td>
        <td>KH</td>
        <td>MopedQuestionnaireResponse</td>
        <td>QuestionnaireResponse</td>
        <td>QuestionnaireResponse.item</td>
        <td>Composition.section:Frageboegen</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Labor</td>
        <td>KH</td>
        <td>MopedQuestionnaireResponse</td>
        <td>QuestionnaireResponse</td>
        <td>QuestionnaireResponse.item</td>
        <td>Composition.section:Frageboegen</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Medikamente</td>
        <td>KH</td>
        <td>MopedQuestionnaireResponse</td>
        <td>QuestionnaireResponse</td>
        <td>QuestionnaireResponse.item</td>
        <td>Composition.section:Frageboegen</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Verbandswechsel</td>
        <td>KH</td>
        <td>MopedQuestionnaireResponse</td>
        <td>QuestionnaireResponse</td>
        <td>QuestionnaireResponse.item</td>
        <td>Composition.section:Frageboegen</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Drainagenpflege</td>
        <td>KH</td>
        <td>MopedQuestionnaireResponse</td>
        <td>QuestionnaireResponse</td>
        <td>QuestionnaireResponse.item</td>
        <td>Composition.section:Frageboegen</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Atmungsmodus</td>
        <td>KH</td>
        <td>MopedQuestionnaireResponse</td>
        <td>QuestionnaireResponse</td>
        <td>QuestionnaireResponse.item</td>
        <td>Composition.section:Frageboegen</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Atemwegszugang</td>
        <td>KH</td>
        <td>MopedQuestionnaireResponse</td>
        <td>QuestionnaireResponse</td>
        <td>QuestionnaireResponse.item</td>
        <td>Composition.section:Frageboegen</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Tubus-/Stomapflege</td>
        <td>KH</td>
        <td>MopedQuestionnaireResponse</td>
        <td>QuestionnaireResponse</td>
        <td>QuestionnaireResponse.item</td>
        <td>Composition.section:Frageboegen</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Atemtherapie</td>
        <td>KH</td>
        <td>MopedQuestionnaireResponse</td>
        <td>QuestionnaireResponse</td>
        <td>QuestionnaireResponse.item</td>
        <td>Composition.section:Frageboegen</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Medikamente vasoaktiv</td>
        <td>KH</td>
        <td>MopedQuestionnaireResponse</td>
        <td>QuestionnaireResponse</td>
        <td>QuestionnaireResponse.item</td>
        <td>Composition.section:Frageboegen</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Flüssigkeitsersatz massiv</td>
        <td>KH</td>
        <td>MopedQuestionnaireResponse</td>
        <td>QuestionnaireResponse</td>
        <td>QuestionnaireResponse.item</td>
        <td>Composition.section:Frageboegen</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Katheter arteriell</td>
        <td>KH</td>
        <td>MopedQuestionnaireResponse</td>
        <td>QuestionnaireResponse</td>
        <td>QuestionnaireResponse.item</td>
        <td>Composition.section:Frageboegen</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Monitoring hämodynamisch</td>
        <td>KH</td>
        <td>MopedQuestionnaireResponse</td>
        <td>QuestionnaireResponse</td>
        <td>QuestionnaireResponse.item</td>
        <td>Composition.section:Frageboegen</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Katheter zentralvenös</td>
        <td>KH</td>
        <td>MopedQuestionnaireResponse</td>
        <td>QuestionnaireResponse</td>
        <td>QuestionnaireResponse.item</td>
        <td>Composition.section:Frageboegen</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Reanimation kardiopulmonal</td>
        <td>KH</td>
        <td>MopedQuestionnaireResponse</td>
        <td>QuestionnaireResponse</td>
        <td>QuestionnaireResponse.item</td>
        <td>Composition.section:Frageboegen</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Nierenersatztherapie</td>
        <td>KH</td>
        <td>MopedQuestionnaireResponse</td>
        <td>QuestionnaireResponse</td>
        <td>QuestionnaireResponse.item</td>
        <td>Composition.section:Frageboegen</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Harnbilanzierung</td>
        <td>KH</td>
        <td>MopedQuestionnaireResponse</td>
        <td>QuestionnaireResponse</td>
        <td>QuestionnaireResponse.item</td>
        <td>Composition.section:Frageboegen</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Diurese aktiv</td>
        <td>KH</td>
        <td>MopedQuestionnaireResponse</td>
        <td>QuestionnaireResponse</td>
        <td>QuestionnaireResponse.item</td>
        <td>Composition.section:Frageboegen</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Hirndruckmessung</td>
        <td>KH</td>
        <td>MopedQuestionnaireResponse</td>
        <td>QuestionnaireResponse</td>
        <td>QuestionnaireResponse.item</td>
        <td>Composition.section:Frageboegen</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Behandlung metabolischer Entgleisungen</td>
        <td>KH</td>
        <td>MopedQuestionnaireResponse</td>
        <td>QuestionnaireResponse</td>
        <td>QuestionnaireResponse.item</td>
        <td>Composition.section:Frageboegen</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Ernährung enteral</td>
        <td>KH</td>
        <td>MopedQuestionnaireResponse</td>
        <td>QuestionnaireResponse</td>
        <td>QuestionnaireResponse.item</td>
        <td>Composition.section:Frageboegen</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Ernährung parenteral</td>
        <td>KH</td>
        <td>MopedQuestionnaireResponse</td>
        <td>QuestionnaireResponse</td>
        <td>QuestionnaireResponse.item</td>
        <td>Composition.section:Frageboegen</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Interventionen</td>
        <td>KH</td>
        <td>MopedQuestionnaireResponse</td>
        <td>QuestionnaireResponse</td>
        <td>QuestionnaireResponse.item</td>
        <td>Composition.section:Frageboegen</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Diagnostik und Therapie außerhalb der IBS</td>
        <td>KH</td>
        <td>MopedQuestionnaireResponse</td>
        <td>QuestionnaireResponse</td>
        <td>QuestionnaireResponse.item</td>
        <td>Composition.section:Frageboegen</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Agitation und Delirium</td>
        <td>KH</td>
        <td>MopedQuestionnaireResponse</td>
        <td>QuestionnaireResponse</td>
        <td>QuestionnaireResponse.item</td>
        <td>Composition.section:Frageboegen</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Assist kardial</td>
        <td>KH</td>
        <td>MopedQuestionnaireResponse</td>
        <td>QuestionnaireResponse</td>
        <td>QuestionnaireResponse.item</td>
        <td>Composition.section:Frageboegen</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Assist pulmonal</td>
        <td>KH</td>
        <td>MopedQuestionnaireResponse</td>
        <td>QuestionnaireResponse</td>
        <td>QuestionnaireResponse.item</td>
        <td>Composition.section:Frageboegen</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Hypothermie therapeutisch</td>
        <td>KH</td>
        <td>MopedQuestionnaireResponse</td>
        <td>QuestionnaireResponse</td>
        <td>QuestionnaireResponse.item</td>
        <td>Composition.section:Frageboegen</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Lebersupport extrakorporal</td>
        <td>KH</td>
        <td>MopedQuestionnaireResponse</td>
        <td>QuestionnaireResponse</td>
        <td>QuestionnaireResponse.item</td>
        <td>Composition.section:Frageboegen</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Kontinuierliche intravenöse antikonvulsive Therapie</td>
        <td>KH</td>
        <td>MopedQuestionnaireResponse</td>
        <td>QuestionnaireResponse</td>
        <td>QuestionnaireResponse.item</td>
        <td>Composition.section:Frageboegen</td>
        <td>/</td>
    </tr>
</table>
</div>

### LKF K01 -> FHIR
<div class="table-responsive">
<table>
    <tr>
        <th>Feld</th>
        <th>befüllt von</th>
        <th>Profile</th>
        <th>FHIR Ressource</th>
        <th>Pfad von der Ressource aus</th>
        <th>Pfad von der Composition aus</th>
        <th>Anmerkungen</th>
    </tr>
    <tr>
        <td>Satzartenkennzeichen</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>in neuer Architektur nicht mehr notwendig</td>
    </tr>
    <tr>
        <td>Jahr</td>
        <td>Stammdaten</td>
        <td>MopedOrganizationAbteilung</td>
        <td>Organization</td>
        <td>Organization.extension:Kostenstelle.extension:KostenstellenJahr</td>
        <td>/</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Krankenanstaltennummer</td>
        <td>Stammdaten</td>
        <td>MopedOrganizationAbteilung</td>
        <td>Organization</td>
        <td>Organization.partOf.resolve().identifier</td>
        <td>/</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Funktionscode</td>
        <td>Stammdaten</td>
        <td>MopedOrganizationAbteilung</td>
        <td>Organization</td>
        <td>Organization.identifier:Funktionscode/.identifier:Funktionssubcode</td>
        <td>/</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Interne Kostenstellennummer</td>
        <td>Stammdaten</td>
        <td>MopedOrganizationAbteilung</td>
        <td>Organization</td>
        <td>Organization.extension:Kostenstelle.extension:InterneKostenstellennummer</td>
        <td>/</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Interne Kostenstellenbezeichnung</td>
        <td>Stammdaten</td>
        <td>MopedOrganizationAbteilung</td>
        <td>Organization</td>
        <td>Organization.extension:Kostenstelle.extension:InterneKostenstellenbezeichnung</td>
        <td>/</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Spezielle Organisationsform</td>
        <td>Stammdaten</td>
        <td>MopedOrganizationAbteilung</td>
        <td>Organization</td>
        <td>Organization.extension:Kostenstelle.extension:SpezielleOrganisationsform</td>
        <td>/</td>
        <td>/</td>
    </tr>
</table>
</div>
