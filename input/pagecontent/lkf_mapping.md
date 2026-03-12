
<style>
.table-responsive {
    display: block;
    width: 100%;
    overflow-x: auto;
    max-height: 600px;
    overflow-y: auto;
}
.table-responsive > table { width: 100%; }
.table-responsive th, .table-responsive td { padding: 15px; background: #f5f5f5; }
.table-responsive table { border-collapse: separate; border-spacing: 3px; }
/* Sticky header */
.table-responsive th { position: sticky; top: 0; background: rgb(228, 228, 228); z-index: 2; }
/* Sticky first column */
.table-responsive th:first-child, .table-responsive td:first-child {
    position: sticky; left: 0; background: rgb(228, 228, 228); z-index: 3;
}
.table-responsive th:first-child {
    position: sticky; top: 0; left: 0; background: rgb(228, 228, 228); z-index: 4;
}
</style>

Diese Seite enthält das Mapping der Meldungen des MBDS Datensatzes (X01-X07, I11-I12, K01*) 
des LKF Systems zu FHIR. Die Dokumentation der LKF Meldungen ist unter 
<a href="https://www.sozialministerium.at/dam/jcr:8553d407-cc41-4b15-bace-5c4e155e8d88/ANHANG1%20-%20AUFBAU%20UND%20INHALT%20DER%20DATENMELDUNGEN%202025%20SP1%2020250131.pdf">
diesem Link</a> verfügbar.
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
        <td>MopedDeviceActor</td>
        <td>MopedAnfragenComposition; MopedAufnahmeComposition; MopedBeantwortenComposition; MopedComposition; MopedEntlassenAvisoComposition; MopedEntlassenVollstaendigComposition; MopedMasterComposition; MopedUpdateComposition</td>
        <td>Composition</td>
        <td>Composition.author.resolve()</td>
        <td>Composition.author.resolve()</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Aufnahmezahl</td>
        <td>MopedKHActor</td>
        <td>MopedEncounter; MopedEncounterA; MopedEncounterAufnahmeS; MopedEncounterBund; MopedEncounterEntlassungS; MopedEncounterLGF; MopedEncounterS; MopedEncounterSV</td>
        <td>Encounter</td>
        <td>Encounter.identifier:Aufnahmezahl.value</td>
        <td>Composition.encounter.resolve()</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Datensatz-ID</td>
        <td>MopedKHActor</td>
        <td>MopedEncounter; MopedEncounterA; MopedEncounterAufnahmeS; MopedEncounterBund; MopedEncounterEntlassungS; MopedEncounterLGF; MopedEncounterS; MopedEncounterSV</td>
        <td>Encounter</td>
        <td>Encounter.identifier:DatensatzID.value</td>
        <td>Composition.encounter.resolve()</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Aufnahme-/Kontaktdatum</td>
        <td>MopedKHActor</td>
        <td>MopedEncounter; MopedEncounterA; MopedEncounterAufnahmeS; MopedEncounterBund; MopedEncounterEntlassungS; MopedEncounterLGF; MopedEncounterS; MopedEncounterSV</td>
        <td>Encounter</td>
        <td>Encounter.actualPeriod.start</td>
        <td>Composition.encounter.resolve()</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Aufnahme-/Kontaktuhrzeit</td>
        <td>MopedKHActor</td>
        <td>MopedEncounter; MopedEncounterA; MopedEncounterAufnahmeS; MopedEncounterBund; MopedEncounterEntlassungS; MopedEncounterLGF; MopedEncounterS; MopedEncounterSV</td>
        <td>Encounter</td>
        <td>Encounter.actualPeriod.start</td>
        <td>Composition.encounter.resolve()</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Behandlungsart</td>
        <td>MopedKHActor</td>
        <td>MopedEncounter; MopedEncounterA; MopedEncounterAufnahmeS; MopedEncounterBund; MopedEncounterEntlassungS; MopedEncounterLGF; MopedEncounterS; MopedEncounterSV</td>
        <td>Encounter</td>
        <td>Encounter.class:Behandlungsart</td>
        <td>Composition.encounter.resolve()</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Geburtsdatum</td>
        <td>MopedKHActor</td>
        <td>MopedPatient; MopedPatientBund; MopedPatientLGF; MopedPatientSV</td>
        <td>Patient</td>
        <td>Patient.birthDate</td>
        <td>Composition.subject.resolve()</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Altersgruppe bei Entlassung/Kontakt</td>
        <td>MopedKHActor</td>
        <td>MopedEncounter; MopedEncounterA; MopedEncounterAufnahmeS; MopedEncounterBund; MopedEncounterEntlassungS; MopedEncounterLGF; MopedEncounterS; MopedEncounterSV</td>
        <td>Encounter</td>
        <td>Encounter.extension:Altersgruppe</td>
        <td>Composition.encounter.resolve()</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Geschlecht</td>
        <td>MopedKHActor</td>
        <td>MopedPatient; MopedPatientBund; MopedPatientLGF; MopedPatientSV</td>
        <td>Patient</td>
        <td>Patient.gender</td>
        <td>Composition.subject.resolve()</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Staatsbürgerschaft</td>
        <td>MopedKHActor</td>
        <td>MopedPatient; MopedPatientBund; MopedPatientLGF; MopedPatientSV</td>
        <td>Patient</td>
        <td>Patient.extension:citizenship</td>
        <td>Composition.subject.resolve()</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Wohnsitz – Staat</td>
        <td>MopedKHActor</td>
        <td>MopedPatient; MopedPatientBund; MopedPatientLGF; MopedPatientSV</td>
        <td>Patient</td>
        <td>Patient.address.country</td>
        <td>Composition.subject.resolve()</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Wohnsitz – Postleitzahl</td>
        <td>MopedKHActor</td>
        <td>MopedPatient; MopedPatientBund; MopedPatientLGF; MopedPatientSV</td>
        <td>Patient</td>
        <td>Patient.address.postalCode</td>
        <td>Composition.subject.resolve()</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Wohnsitz – Gemeindecode</td>
        <td>MopedKHActor</td>
        <td>MopedPatient; MopedPatientBund; MopedPatientLGF</td>
        <td>Patient</td>
        <td>Patient.address.extension:municipalityCode</td>
        <td>Composition.subject.resolve()</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Aufnahme-/Zugangsart 1</td>
        <td>MopedKHActor</td>
        <td>MopedEncounter; MopedEncounterA; MopedEncounterBund; MopedEncounterLGF; MopedEncounterSV</td>
        <td>Encounter</td>
        <td>Encounter.admission.extension:aufnahmeart</td>
        <td>Composition.encounter.resolve()</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Aufnahme-/Zugangsart 2</td>
        <td>MopedKHActor</td>
        <td>MopedEncounter; MopedEncounterA; MopedEncounterAufnahmeS; MopedEncounterBund; MopedEncounterEntlassungS; MopedEncounterLGF; MopedEncounterS; MopedEncounterSV</td>
        <td>Encounter</td>
        <td>Encounter.class:Aufnahmeart2</td>
        <td>Composition.encounter.resolve()</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Transportart</td>
        <td>MopedKHActor</td>
        <td>MopedEncounter; MopedEncounterA; MopedEncounterAufnahmeS; MopedEncounterBund; MopedEncounterEntlassungS; MopedEncounterLGF; MopedEncounterS</td>
        <td>Encounter</td>
        <td>Encounter.admission.extension:Transportart</td>
        <td>Composition.encounter.resolve()</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Zugewiesen von – Krankenanstaltennummer</td>
        <td>MopedKHActor</td>
        <td>MopedEncounter; MopedEncounterA; MopedEncounterAufnahmeS; MopedEncounterBund; MopedEncounterEntlassungS; MopedEncounterLGF; MopedEncounterS; MopedEncounterSV</td>
        <td>Encounter</td>
        <td>Encounter.admission.origin.resolve()</td>
        <td>Composition.encounter.resolve()</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Zugewiesen an – Krankenanstaltennummer</td>
        <td>MopedKHActor</td>
        <td>MopedEncounter; MopedEncounterA; MopedEncounterAufnahmeS; MopedEncounterBund; MopedEncounterEntlassungS; MopedEncounterLGF; MopedEncounterS; MopedEncounterSV</td>
        <td>Encounter</td>
        <td>Encounter.admission.destination.resolve()</td>
        <td>Composition.encounter.resolve()</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Entlassungs-/Abgangsart</td>
        <td>MopedKHActor</td>
        <td>MopedEncounter; MopedEncounterA; MopedEncounterAufnahmeS; MopedEncounterBund; MopedEncounterEntlassungS; MopedEncounterLGF; MopedEncounterS; MopedEncounterSV</td>
        <td>Encounter</td>
        <td>Encounter.admission.dischargeDisposition</td>
        <td>Composition.encounter.resolve()</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Entlassungsdatum</td>
        <td>MopedKHActor</td>
        <td>MopedEncounter; MopedEncounterA; MopedEncounterAufnahmeS; MopedEncounterBund; MopedEncounterEntlassungS; MopedEncounterLGF; MopedEncounterS; MopedEncounterSV</td>
        <td>Encounter</td>
        <td>Encounter.actualPeriod.end</td>
        <td>Composition.encounter.resolve()</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Entlassungsuhrzeit</td>
        <td>MopedKHActor</td>
        <td>MopedEncounter; MopedEncounterA; MopedEncounterAufnahmeS; MopedEncounterBund; MopedEncounterEntlassungS; MopedEncounterLGF; MopedEncounterS; MopedEncounterSV</td>
        <td>Encounter</td>
        <td>Encounter.actualPeriod.end</td>
        <td>Composition.encounter.resolve()</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Leistungszuständiger Kostenträger – Code</td>
        <td>MopedDeviceActor</td>
        <td>MopedAnfragenComposition; MopedAufnahmeComposition; MopedBeantwortenComposition; MopedComposition; MopedEntlassenAvisoComposition; MopedEntlassenVollstaendigComposition; MopedMasterComposition; MopedUpdateComposition</td>
        <td>Composition</td>
        <td>Composition.section:zustaendigeSV.entry.resolve()</td>
        <td>Composition.section:zustaendigeSV.entry.resolve()</td>
        <td>Slice mit dem System http://svc.co.at/CodeSystem/ecard-svt-cs</td>
    </tr>
    <tr>
        <td>Fondsrelevanz</td>
        <td>MopedKHActor</td>
        <td>MopedLKFRequest</td>
        <td>Claim</td>
        <td>Claim.extension:Fondsrelevanz</td>
        <td>Composition.section:LKFRequests.entry.resolve()</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Plausibilitätskennzeichen</td>
        <td>MopedKHActor</td>
        <td>MopedLKFRequest</td>
        <td>Claim</td>
        <td>Claim.supportingInfo:Plausibilitaetskennzeichen.value[x]</td>
        <td>Composition.section:LKFRequests.entry.resolve()</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Abrechnender Kostenträger – Code</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>noch inhaltlich abzuklären: ggf. über den Träger des KH definiert</td>
    </tr>
    <tr>
        <td>Abrechnungsquartal der Sozialversicherung</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>in neuer Architektur nicht mehr notwendig</td>
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
        <td>MopedDeviceActor</td>
        <td>MopedAnfragenComposition; MopedAufnahmeComposition; MopedBeantwortenComposition; MopedComposition; MopedEntlassenAvisoComposition; MopedEntlassenVollstaendigComposition; MopedMasterComposition; MopedUpdateComposition</td>
        <td>Composition</td>
        <td>Composition.author.resolve()</td>
        <td>Composition.author.resolve()</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Aufnahmezahl</td>
        <td>MopedKHActor</td>
        <td>MopedEncounter; MopedEncounterA; MopedEncounterAufnahmeS; MopedEncounterBund; MopedEncounterEntlassungS; MopedEncounterLGF; MopedEncounterS; MopedEncounterSV</td>
        <td>Encounter</td>
        <td>Encounter.identifier:Aufnahmezahl.value</td>
        <td>Composition.encounter.resolve()</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Datensatz-ID</td>
        <td>MopedKHActor</td>
        <td>MopedEncounter; MopedEncounterA; MopedEncounterAufnahmeS; MopedEncounterBund; MopedEncounterEntlassungS; MopedEncounterLGF; MopedEncounterS; MopedEncounterSV</td>
        <td>Encounter</td>
        <td>Encounter.identifier:DatensatzID.value</td>
        <td>Composition.encounter.resolve()</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Aufnahme-/Kontaktdatum</td>
        <td>MopedKHActor</td>
        <td>MopedEncounter; MopedEncounterA; MopedEncounterAufnahmeS; MopedEncounterBund; MopedEncounterEntlassungS; MopedEncounterLGF; MopedEncounterS; MopedEncounterSV</td>
        <td>Encounter</td>
        <td>Encounter.actualPeriod.start</td>
        <td>Composition.encounter.resolve()</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Hauptkostenstelle/Fachgebiet – Positionsnummer</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>ggf. über FHIR ID des TransferEncounters lösbar; Details sind noch abzuklären</td>
    </tr>
    <tr>
        <td>Hauptkostenstelle – Funktionscode/Fachgebiet</td>
        <td>MopedKHActor</td>
        <td>MopedTransferEncounter; MopedTransferEncounterA; MopedTransferEncounterI; MopedTransferEncounterS</td>
        <td>Encounter</td>
        <td>Encounter.serviceType:MopedServiceType.reference.resolve()</td>
        <td>Composition.section:TransferEncounter.entry.resolve()</td>
        <td>Funktions- und subcode sind in zwei Felder aufgeteilt</td>
    </tr>
    <tr>
        <td>Hauptkostenstelle/Fachgebiet – Zugangsdatum/Kontaktdatum</td>
        <td>MopedKHActor</td>
        <td>MopedTransferEncounter; MopedTransferEncounterA; MopedTransferEncounterI; MopedTransferEncounterS</td>
        <td>Encounter</td>
        <td>Encounter.actualPeriod.start</td>
        <td>Composition.section:TransferEncounter.entry.resolve()</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Hauptkostenstelle/Fachgebiet – Zugangsuhrzeit/Kontaktuhrzeit</td>
        <td>MopedKHActor</td>
        <td>MopedTransferEncounter; MopedTransferEncounterA; MopedTransferEncounterI; MopedTransferEncounterS</td>
        <td>Encounter</td>
        <td>Encounter.actualPeriod.start</td>
        <td>Composition.section:TransferEncounter.entry.resolve()</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Physische Anwesenheit</td>
        <td>MopedKHActor</td>
        <td>MopedTransferEncounter; MopedTransferEncounterA; MopedTransferEncounterI; MopedTransferEncounterS</td>
        <td>Encounter</td>
        <td>Encounter.subjectStatus</td>
        <td>Composition.section:TransferEncounter.entry.resolve()</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Hauptkostenstelle – Abgangsdatum</td>
        <td>MopedKHActor</td>
        <td>MopedTransferEncounter; MopedTransferEncounterA; MopedTransferEncounterI; MopedTransferEncounterS</td>
        <td>Encounter</td>
        <td>Encounter.actualPeriod.end</td>
        <td>Composition.section:TransferEncounter.entry.resolve()</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Hauptkostenstelle – Abgangsuhrzeit</td>
        <td>MopedKHActor</td>
        <td>MopedTransferEncounter; MopedTransferEncounterA; MopedTransferEncounterI; MopedTransferEncounterS</td>
        <td>Encounter</td>
        <td>Encounter.actualPeriod.end</td>
        <td>Composition.section:TransferEncounter.entry.resolve()</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Hauptkostenstelle – Abgangsart</td>
        <td>MopedKHActor</td>
        <td>MopedTransferEncounter; MopedTransferEncounterA; MopedTransferEncounterI; MopedTransferEncounterS</td>
        <td>Encounter</td>
        <td>Encounter.admission.dischargeDisposition</td>
        <td>Composition.section:TransferEncounter.entry.resolve()</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Hauptkostenstelle – Fachlicher Funktionscode</td>
        <td>MopedKHActor</td>
        <td>MopedTransferEncounter; MopedTransferEncounterA; MopedTransferEncounterI; MopedTransferEncounterS</td>
        <td>Encounter</td>
        <td>Encounter.participant:FachlichZustaendigeOrganisationseinheit.actor.resolve()</td>
        <td>Composition.section:TransferEncounter.entry.resolve()</td>
        <td>wird in AG Moped geklärt</td>
    </tr>
    <tr>
        <td>Hauptkostenstelle – Pflegerischer Funktionscode</td>
        <td>MopedKHActor</td>
        <td>MopedTransferEncounter; MopedTransferEncounterA; MopedTransferEncounterI; MopedTransferEncounterS</td>
        <td>Encounter</td>
        <td>Encounter.participant:PflegerischZustaendigeOrganisationseinheit.actor.resolve()</td>
        <td>Composition.section:TransferEncounter.entry.resolve()</td>
        <td>wird in AG Moped geklärt</td>
    </tr>
    <tr>
        <td>Neugeborenes</td>
        <td>MopedKHActor</td>
        <td>MopedTransferEncounterI; MopedTransferEncounterS</td>
        <td>Encounter</td>
        <td>Encounter.admission.extension:Altersgruppe.extension:neugeborenes.value[x]</td>
        <td>Composition.section:TransferEncounter.entry.resolve()</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Altersgruppe bei Zugang/Kontakt</td>
        <td>MopedKHActor</td>
        <td>MopedTransferEncounter; MopedTransferEncounterA; MopedTransferEncounterI; MopedTransferEncounterS</td>
        <td>Encounter</td>
        <td>Encounter.admission.extension:Altersgruppe.extension:beiZugang.value[x]</td>
        <td>Composition.section:TransferEncounter.entry.resolve()</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Aufnahmezahl – funktionscodebezogen</td>
        <td>MopedKHActor</td>
        <td>MopedTransferEncounterA</td>
        <td>Encounter</td>
        <td>Encounter.identifier:AufnahmezahlFunktionscodebezogen.value</td>
        <td>Composition.section:TransferEncounter.entry.resolve()</td>
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
        <td>MopedDeviceActor</td>
        <td>MopedAnfragenComposition; MopedAufnahmeComposition; MopedBeantwortenComposition; MopedComposition; MopedEntlassenAvisoComposition; MopedEntlassenVollstaendigComposition; MopedMasterComposition; MopedUpdateComposition</td>
        <td>Composition</td>
        <td>Composition.author.resolve()</td>
        <td>Composition.author.resolve()</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Aufnahmezahl</td>
        <td>MopedKHActor</td>
        <td>MopedEncounter; MopedEncounterA; MopedEncounterAufnahmeS; MopedEncounterBund; MopedEncounterEntlassungS; MopedEncounterLGF; MopedEncounterS; MopedEncounterSV</td>
        <td>Encounter</td>
        <td>Encounter.identifier:Aufnahmezahl.value</td>
        <td>Composition.encounter.resolve()</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Datensatz-ID</td>
        <td>MopedKHActor</td>
        <td>MopedEncounter; MopedEncounterA; MopedEncounterAufnahmeS; MopedEncounterBund; MopedEncounterEntlassungS; MopedEncounterLGF; MopedEncounterS; MopedEncounterSV</td>
        <td>Encounter</td>
        <td>Encounter.identifier:DatensatzID.value</td>
        <td>Composition.encounter.resolve()</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Aufnahme-/Kontaktdatum</td>
        <td>MopedKHActor</td>
        <td>MopedEncounter; MopedEncounterA; MopedEncounterAufnahmeS; MopedEncounterBund; MopedEncounterEntlassungS; MopedEncounterLGF; MopedEncounterS; MopedEncounterSV</td>
        <td>Encounter</td>
        <td>Encounter.actualPeriod.start</td>
        <td>Composition.encounter.resolve()</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Diagnose – Code</td>
        <td>MopedKHActor</td>
        <td>MopedCondition</td>
        <td>Condition</td>
        <td>Condition.code.coding:ICD10</td>
        <td>Composition.section:Diagnosen.entry.resolve()</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Diagnose – Typ</td>
        <td>MopedKHActor</td>
        <td>MopedCondition</td>
        <td>Condition</td>
        <td>Condition.extension:Diagnosetyp</td>
        <td>Composition.section:Diagnosen.entry.resolve()</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Diagnose – Art</td>
        <td>MopedKHActor</td>
        <td>MopedCondition</td>
        <td>Condition</td>
        <td>Condition.verificationStatus</td>
        <td>Composition.section:Diagnosen.entry.resolve()</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Diagnose – im stationären Aufenthalt erworben</td>
        <td>MopedKHActor</td>
        <td>MopedLKFRequest</td>
        <td>Claim</td>
        <td>Claim.diagnosis.onAdmission</td>
        <td>Composition.section:LKFRequests.entry.resolve()</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Aufnahmezahl – funktionscodebezogen</td>
        <td>MopedKHActor</td>
        <td>MopedTransferEncounterA</td>
        <td>Encounter</td>
        <td>Encounter.identifier:AufnahmezahlFunktionscodebezogen.value</td>
        <td>Composition.section:TransferEncounter.entry.resolve()</td>
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
        <td>MopedDeviceActor</td>
        <td>MopedAnfragenComposition; MopedAufnahmeComposition; MopedBeantwortenComposition; MopedComposition; MopedEntlassenAvisoComposition; MopedEntlassenVollstaendigComposition; MopedMasterComposition; MopedUpdateComposition</td>
        <td>Composition</td>
        <td>Composition.author.resolve()</td>
        <td>Composition.author.resolve()</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Aufnahmezahl</td>
        <td>MopedKHActor</td>
        <td>MopedEncounter; MopedEncounterA; MopedEncounterAufnahmeS; MopedEncounterBund; MopedEncounterEntlassungS; MopedEncounterLGF; MopedEncounterS; MopedEncounterSV</td>
        <td>Encounter</td>
        <td>Encounter.identifier:Aufnahmezahl.value</td>
        <td>Composition.encounter.resolve()</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Datensatz-ID</td>
        <td>MopedKHActor</td>
        <td>MopedEncounter; MopedEncounterA; MopedEncounterAufnahmeS; MopedEncounterBund; MopedEncounterEntlassungS; MopedEncounterLGF; MopedEncounterS; MopedEncounterSV</td>
        <td>Encounter</td>
        <td>Encounter.identifier:DatensatzID.value</td>
        <td>Composition.encounter.resolve()</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Aufnahme-/Kontaktdatum</td>
        <td>MopedKHActor</td>
        <td>MopedEncounter; MopedEncounterA; MopedEncounterAufnahmeS; MopedEncounterBund; MopedEncounterEntlassungS; MopedEncounterLGF; MopedEncounterS; MopedEncounterSV</td>
        <td>Encounter</td>
        <td>Encounter.actualPeriod.start</td>
        <td>Composition.encounter.resolve()</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Medizinische Leistung – Code</td>
        <td>MopedKHActor</td>
        <td>MopedProcedure</td>
        <td>Procedure</td>
        <td>Procedure.code</td>
        <td>Composition.section:Leistungen.entry.resolve()</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Medizinische Leistung – Seitenlokalisation</td>
        <td>MopedKHActor</td>
        <td>MopedProcedure</td>
        <td>Procedure</td>
        <td>Procedure.bodySite</td>
        <td>Composition.section:Leistungen.entry.resolve()</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Medizinische Leistung – Abrechnungsrelevanz</td>
        <td>MopedKHActor</td>
        <td>MopedLKFRequest</td>
        <td>Claim</td>
        <td>Claim.procedure.extension:AbrechnungsRelevanz</td>
        <td>Composition.section:LKFRequests.entry.resolve()</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Medizinische Leistung – Anzahl</td>
        <td>MopedKHActor</td>
        <td>MopedProcedure</td>
        <td>Procedure</td>
        <td>Procedure.extension:Leistungsanzahl</td>
        <td>Composition.section:Leistungen.entry.resolve()</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Medizinische Leistung – Datum der Erbringung</td>
        <td>MopedKHActor</td>
        <td>MopedProcedure</td>
        <td>Procedure</td>
        <td>Procedure.occurrence[x]:occurrenceDateTime</td>
        <td>Composition.section:Leistungen.entry.resolve()</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Medizinische Leistung – Uhrzeit der Erbringung</td>
        <td>MopedKHActor</td>
        <td>MopedProcedure</td>
        <td>Procedure</td>
        <td>Procedure.occurrence[x]:occurrenceDateTime</td>
        <td>Composition.section:Leistungen.entry.resolve()</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Funktionscode/Fachgebiet leistungserbringend</td>
        <td>MopedKHActor</td>
        <td>MopedProcedure</td>
        <td>Procedure</td>
        <td>Procedure.performer.actor.resolve()</td>
        <td>Composition.section:Leistungen.entry.resolve()</td>
        <td>Referenz auf eine Abteilung</td>
    </tr>
    <tr>
        <td>Krankenanstaltennummer leistungserbringend</td>
        <td>MopedKHActor</td>
        <td>MopedProcedure</td>
        <td>Procedure</td>
        <td>Procedure.performer.actor.resolve()</td>
        <td>Composition.section:Leistungen.entry.resolve()</td>
        <td>Referenz auf eine Krankenanstalt</td>
    </tr>
    <tr>
        <td>Aufnahmezahl – funktionscodebezogen</td>
        <td>MopedKHActor</td>
        <td>MopedTransferEncounterA</td>
        <td>Encounter</td>
        <td>Encounter.identifier:AufnahmezahlFunktionscodebezogen.value</td>
        <td>Composition.section:TransferEncounter.entry.resolve()</td>
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
        <td>MopedDeviceActor</td>
        <td>MopedAnfragenComposition; MopedAufnahmeComposition; MopedBeantwortenComposition; MopedComposition; MopedEntlassenAvisoComposition; MopedEntlassenVollstaendigComposition; MopedMasterComposition; MopedUpdateComposition</td>
        <td>Composition</td>
        <td>Composition.author.resolve()</td>
        <td>Composition.author.resolve()</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Aufnahmezahl</td>
        <td>MopedKHActor</td>
        <td>MopedEncounter; MopedEncounterA; MopedEncounterAufnahmeS; MopedEncounterBund; MopedEncounterEntlassungS; MopedEncounterLGF; MopedEncounterS; MopedEncounterSV</td>
        <td>Encounter</td>
        <td>Encounter.identifier:Aufnahmezahl.value</td>
        <td>Composition.encounter.resolve()</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Datensatz-ID</td>
        <td>MopedKHActor</td>
        <td>MopedEncounter; MopedEncounterA; MopedEncounterAufnahmeS; MopedEncounterBund; MopedEncounterEntlassungS; MopedEncounterLGF; MopedEncounterS; MopedEncounterSV</td>
        <td>Encounter</td>
        <td>Encounter.identifier:DatensatzID.value</td>
        <td>Composition.encounter.resolve()</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Aufnahme-/Kontaktdatum</td>
        <td>MopedKHActor</td>
        <td>MopedEncounter; MopedEncounterA; MopedEncounterAufnahmeS; MopedEncounterBund; MopedEncounterEntlassungS; MopedEncounterLGF; MopedEncounterS; MopedEncounterSV</td>
        <td>Encounter</td>
        <td>Encounter.actualPeriod.start</td>
        <td>Composition.encounter.resolve()</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Abrechnung – Gruppe</td>
        <td>MopedKHActor</td>
        <td>MopedLKFRequest</td>
        <td>Claim</td>
        <td>Claim.diagnosisRelatedGroup</td>
        <td>Composition.section:LKFRequests.entry.resolve()</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Abrechnung – Knoten</td>
        <td>MopedKHActor</td>
        <td>MopedLKFRequest</td>
        <td>Claim</td>
        <td>Claim.extension:DiagnoseKnoten</td>
        <td>Composition.section:LKFRequests.entry.resolve()</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Leistungskomponente/Leistungspunkte</td>
        <td>MopedKHActor</td>
        <td>MopedLKFRequest</td>
        <td>Claim</td>
        <td>Claim.item:Leistungskomponente.quantity.value</td>
        <td>Composition.section:LKFRequests.entry.resolve()</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Tageskomponente/Kontaktpunkte</td>
        <td>MopedKHActor</td>
        <td>MopedLKFRequest</td>
        <td>Claim</td>
        <td>Claim.item:Tageskomponente.quantity.value</td>
        <td>Composition.section:LKFRequests.entry.resolve()</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Punkte Belagsdauerausreißer nach unten – Leistungskomponente</td>
        <td>MopedKHActor</td>
        <td>MopedLKFRequest</td>
        <td>Claim</td>
        <td>Claim.item:PunkteBelagsdauerausreisserUntenLeistungskomponente.quantity.value</td>
        <td>Composition.section:LKFRequests.entry.resolve()</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Punkte Belagsdauerausreißer nach unten – Tageskomponente</td>
        <td>MopedKHActor</td>
        <td>MopedLKFRequest</td>
        <td>Claim</td>
        <td>Claim.item:PunkteBelagsdauerausreisserUntenTageskomponente.quantity.value</td>
        <td>Composition.section:LKFRequests.entry.resolve()</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Zusatzpunkte Belagsdauerausreißer nach oben</td>
        <td>MopedKHActor</td>
        <td>MopedLKFRequest</td>
        <td>Claim</td>
        <td>Claim.item:ZusatzpunkteBelagsdauerausreisserNachOben.quantity.value</td>
        <td>Composition.section:LKFRequests.entry.resolve()</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Zusatzpunkte Intensiv</td>
        <td>MopedKHActor</td>
        <td>MopedLKFRequest</td>
        <td>Claim</td>
        <td>Claim.item:ZusatzpunkteIntensiv.quantity.value</td>
        <td>Composition.section:LKFRequests.entry.resolve()</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Zusatzpunkte Mehrfachleistungen</td>
        <td>MopedKHActor</td>
        <td>MopedLKFRequest</td>
        <td>Claim</td>
        <td>Claim.item:ZusatzpunkteMehrfachleistungen.quantity.value</td>
        <td>Composition.section:LKFRequests.entry.resolve()</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Punkte spezieller Bereiche (tageweise)</td>
        <td>MopedKHActor</td>
        <td>MopedLKFRequest</td>
        <td>Claim</td>
        <td>Claim.item:PunkteSpeziellerBereicheTageweise.quantity.value</td>
        <td>Composition.section:LKFRequests.entry.resolve()</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Punkte total</td>
        <td>MopedKHActor</td>
        <td>MopedLKFRequest</td>
        <td>Claim</td>
        <td>Claim.item:Gesamtpunkte.quantity.value</td>
        <td>Composition.section:LKFRequests.entry.resolve()</td>
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
        <td>MopedDeviceActor</td>
        <td>MopedAnfragenComposition; MopedAufnahmeComposition; MopedBeantwortenComposition; MopedComposition; MopedEntlassenAvisoComposition; MopedEntlassenVollstaendigComposition; MopedMasterComposition; MopedUpdateComposition</td>
        <td>Composition</td>
        <td>Composition.author.resolve()</td>
        <td>Composition.author.resolve()</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Aufnahmezahl</td>
        <td>MopedKHActor</td>
        <td>MopedEncounter; MopedEncounterA; MopedEncounterAufnahmeS; MopedEncounterBund; MopedEncounterEntlassungS; MopedEncounterLGF; MopedEncounterS; MopedEncounterSV</td>
        <td>Encounter</td>
        <td>Encounter.identifier:Aufnahmezahl.value</td>
        <td>Composition.encounter.resolve()</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Datensatz-ID</td>
        <td>MopedKHActor</td>
        <td>MopedEncounter; MopedEncounterA; MopedEncounterAufnahmeS; MopedEncounterBund; MopedEncounterEntlassungS; MopedEncounterLGF; MopedEncounterS; MopedEncounterSV</td>
        <td>Encounter</td>
        <td>Encounter.identifier:DatensatzID.value</td>
        <td>Composition.encounter.resolve()</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Aufnahme-/Kontaktdatum</td>
        <td>MopedKHActor</td>
        <td>MopedEncounter; MopedEncounterA; MopedEncounterAufnahmeS; MopedEncounterBund; MopedEncounterEntlassungS; MopedEncounterLGF; MopedEncounterS; MopedEncounterSV</td>
        <td>Encounter</td>
        <td>Encounter.actualPeriod.start</td>
        <td>Composition.encounter.resolve()</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Error/Warning – Wert</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Error/Warning Prozess in Arbeit</td>
    </tr>
    <tr>
        <td>Error/Warning – Code</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Error/Warning Prozess in Arbeit</td>
    </tr>
    <tr>
        <td>Error/Warning – Kommentar</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
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
        <td>MopedDeviceActor</td>
        <td>MopedAnfragenComposition; MopedAufnahmeComposition; MopedBeantwortenComposition; MopedComposition; MopedEntlassenAvisoComposition; MopedEntlassenVollstaendigComposition; MopedMasterComposition; MopedUpdateComposition</td>
        <td>Composition</td>
        <td>Composition.author.resolve()</td>
        <td>Composition.author.resolve()</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Aufnahmezahl</td>
        <td>MopedKHActor</td>
        <td>MopedEncounter; MopedEncounterA; MopedEncounterAufnahmeS; MopedEncounterBund; MopedEncounterEntlassungS; MopedEncounterLGF; MopedEncounterS; MopedEncounterSV</td>
        <td>Encounter</td>
        <td>Encounter.identifier:Aufnahmezahl.value</td>
        <td>Composition.encounter.resolve()</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Datensatz-ID</td>
        <td>MopedKHActor</td>
        <td>MopedEncounter; MopedEncounterA; MopedEncounterAufnahmeS; MopedEncounterBund; MopedEncounterEntlassungS; MopedEncounterLGF; MopedEncounterS; MopedEncounterSV</td>
        <td>Encounter</td>
        <td>Encounter.identifier:DatensatzID.value</td>
        <td>Composition.encounter.resolve()</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Aufnahme-/Kontaktdatum</td>
        <td>MopedKHActor</td>
        <td>MopedEncounter; MopedEncounterA; MopedEncounterAufnahmeS; MopedEncounterBund; MopedEncounterEntlassungS; MopedEncounterLGF; MopedEncounterS; MopedEncounterSV</td>
        <td>Encounter</td>
        <td>Encounter.actualPeriod.start</td>
        <td>Composition.encounter.resolve()</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Kommentar 1</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Kommentare die MBDS relevant sind und als X07 exportiert werden sollen enthalten in der Communication.extension:MBDSRelevanz den Wert true</td>
    </tr>
    <tr>
        <td>Kommentar 2</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Kommentare die MBDS relevant sind und als X07 exportiert werden sollen enthalten in der Communication.extension:MBDSRelevanz den Wert true</td>
    </tr>
    <tr>
        <td>Kommentar 3</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Kommentare die MBDS relevant sind und als X07 exportiert werden sollen enthalten in der Communication.extension:MBDSRelevanz den Wert true</td>
    </tr>
    <tr>
        <td>Kommentar 4</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Kommentare die MBDS relevant sind und als X07 exportiert werden sollen enthalten in der Communication.extension:MBDSRelevanz den Wert true</td>
    </tr>
    <tr>
        <td>Kommentar 5</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Kommentare die MBDS relevant sind und als X07 exportiert werden sollen enthalten in der Communication.extension:MBDSRelevanz den Wert true</td>
    </tr>
    <tr>
        <td>Kommentar 6</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Kommentare die MBDS relevant sind und als X07 exportiert werden sollen enthalten in der Communication.extension:MBDSRelevanz den Wert true</td>
    </tr>
</table>
</div>

### I11 SAPS -> FHIR
I11 wird als fallbezogenes Questionnaire/QuestionnaireResponse modelliert. 
Die Definition des Questionnares kann hier gefunden werden: 
[Saps Questionnaire](Questionnaire-LKFSAPS3Questionnaire.html)

### I12 TISS-A -> FHIR
I12 wird als fallbezogenes Questionnaire/QuestionnaireResponse modelliert. 
Die Definition des Questionnares kann hier gefunden werden: 
[TISS-A Questionnaire](Questionnaire-LKFTISSAQuestionnaire.html)

### LKF K01 -> FHIR
K01 wird als Questionnaire/QuestionnaireResponse modelliert. 
Die Definition des Questionnares kann hier gefunden werden: 
[K01 Questionnaire](Questionnaire-LKFK01Questionnaire.html)

### LKF L01 -> FHIR
L01 wird als fallbezogenes Questionnaire/QuestionnaireResponse modelliert. 
Die Definition des Questionnares kann hier gefunden werden: 
[L01 Questionnaire](Questionnaire-LKFL01Questionnaire.html)
