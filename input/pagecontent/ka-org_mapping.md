
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


Diese Seite enthält das Mapping der Meldungen des Ka-Org Systems zu FHIR. Die Dokumentation der Ka-Org Meldungen ist unter <a href="https://www.sozialversicherung.at/cdscontent/?contentid=10007.821512">diesem Link</a> verfügbar.


### E1 -> FHIR
<div class="table-responsive">
<table>
    <tr>
        <th>Feld</th>
        <th>Abkürzung</th>
        <th>befüllt von</th>
        <th>Profile</th>
        <th>FHIR Ressource</th>
        <th>Pfad von der Ressource aus</th>
        <th>Pfad von der Composition aus</th>
        <th>Anmerkungen</th>
    </tr>
    <tr>
        <td>Satzart</td>
        <td>SART</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>in neuer Architektur nicht mehr notwendig</td>
    </tr>
    <tr>
        <td>Vertragspartnernummer der Krankenanstalt</td>
        <td>VPNR</td>
        <td>KH</td>
        <td>KHOrganization</td>
        <td>Organization</td>
        <td>Organization.identifier:VPNR</td>
        <td>Composition.section:zustaendigesKH</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Aufnahmezahl</td>
        <td>AUFZL</td>
        <td>KH</td>
        <td>MopedEncounterA, MopedEncounterS</td>
        <td>Encounter</td>
        <td>Encounter.identifier:Aufnahmezahl.value</td>
        <td>Composition.encounter</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Fallnummer</td>
        <td>FANU</td>
        <td>KH</td>
        <td>MopedComposition</td>
        <td>Composition</td>
        <td>Composition.extension:AnzahlBeurlaubungen</td>
        <td>Composition.extension:AnzahlBeurlaubungen</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Kostenträger (leistungszuständig)</td>
        <td>KOST</td>
        <td>KH</td>
        <td>SVOrganization</td>
        <td>Organization</td>
        <td>Organization.identifer</td>
        <td>Composition.section:zustaendigeSV.entry</td>
        <td>Slice mit dem System http://svc.co.at/CodeSystem/ecard-svt-cs</td>
    </tr>
    <tr>
        <td>zuständiger Versicherungsträger</td>
        <td>VSTR</td>
        <td>KH</td>
        <td>?</td>
        <td>?</td>
        <td>?</td>
        <td>?</td>
        <td>noch inhaltlich abzuklären: ggf. über den Träger des KH definiert</td>
    </tr>
    <tr>
        <td>Aufnahme-/Ereignisdatum JJJJMMTT</td>
        <td>AUFN</td>
        <td>KH</td>
        <td>MopedEncounterA, MopedEncounterS</td>
        <td>Encounter</td>
        <td>Encounter.actualPeriod.start</td>
        <td>Composition.encounter</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Entlassungsdatum JJJJMMTT</td>
        <td>ENTL</td>
        <td>KH</td>
        <td>MopedEncounterA, MopedEncounterS</td>
        <td>Encounter</td>
        <td>Encounter.actualPeriod.end</td>
        <td>Composition.encounter</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Kommentarsatz</td>
        <td>KOMM</td>
        <td>KH</td>
        <td>MopedCommunication</td>
        <td>Communication?</td>
        <td>Communication.note.text</td>
        <td>Composition.section:Kommunikation</td>
        <td>bei Kommentaren der SV muss die Communication.extension:MBDSRelevanz = false sein</td>
    </tr>
    <tr>
        <td>Versicherungsnummer des Hauptversicherten</td>
        <td>VSNR</td>
        <td>KH</td>
        <td>HL7ATCorePatient/Hauptversicherter</td>
        <td>Patient/RelatedPerson</td>
        <td>Patient/RelatedPerson.identifier:socialSecurityNumber</td>
        <td>Composition.subject/Composition.section:Hauptversicherter.entry</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Zuname des Hauptversicherten</td>
        <td>ZUNA</td>
        <td>KH</td>
        <td>HL7ATCorePatient/Hauptversicherter</td>
        <td>Patient/RelatedPerson</td>
        <td>Patient/RelatedPerson.name.family</td>
        <td>Composition.subject/Composition.section:Hauptversicherter.entry</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Vorname des Hauptversicherten</td>
        <td>VONA</td>
        <td>KH</td>
        <td>HL7ATCorePatient/Hauptversicherter</td>
        <td>Patient/RelatedPerson</td>
        <td>Patient/RelatedPerson.name.given</td>
        <td>Composition.subject/Composition.section:Hauptversicherter.entry</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Geschlecht des Hauptversicherten</td>
        <td>GESCHL</td>
        <td>KH</td>
        <td>HL7ATCorePatient/Hauptversicherter</td>
        <td>Patient/RelatedPerson</td>
        <td>Patient/RelatedPerson.gender</td>
        <td>Composition.subject/Composition.section:Hauptversicherter.entry</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Geburtsdatum des Hauptversicherten JJJJMMTT</td>
        <td>GEBDAT</td>
        <td>KH</td>
        <td>HL7ATCorePatient/Hauptversicherter</td>
        <td>Patient/RelatedPerson</td>
        <td>Patient/RelatedPerson.birthDate</td>
        <td>Composition.subject/Composition.section:Hauptversicherter.entry</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Datensatz-ID</td>
        <td>DSID</td>
        <td>/</td>
        <td>MopedComposition</td>
        <td>Composition</td>
        <td>Composition.id</td>
        <td>Composition.id</td>
        <td>Die KaOrg Datensatz-ID ist vergleichbar mit der technischen ID der Composition, welche einen Fall eindeutig identifiziert (inklusive Version)</td>
    </tr>
    <tr>
        <td>Versichertengruppe/Kategorie</td>
        <td>VGR</td>
        <td>KH</td>
        <td>MopedCoverage</td>
        <td>Coverage</td>
        <td>Coverage.class:Versichertenkategorie</td>
        <td>Composition.section:Coverages.entry</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Versicherungsnummer des Mitversicherten</td>
        <td>AVSNR</td>
        <td>KH</td>
        <td>HL7ATCorePatient</td>
        <td>Patient</td>
        <td>Patient.identifier:socialSecurityNumber</td>
        <td>Composition.subject</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Zuname de Mitversicherten</td>
        <td>AZUNA</td>
        <td>KH</td>
        <td>HL7ATCorePatient</td>
        <td>Patient</td>
        <td>Patient.name.family</td>
        <td>Composition.subject</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Vorname de Mitversicherten</td>
        <td>AVONA</td>
        <td>KH</td>
        <td>HL7ATCorePatient</td>
        <td>Patient</td>
        <td>Patient.name.given</td>
        <td>Composition.subject</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Geschlecht des Mitversicherten</td>
        <td>AGESCHL</td>
        <td>KH</td>
        <td>HL7ATCorePatient</td>
        <td>Patient</td>
        <td>Patient.gender</td>
        <td>Composition.subject</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Geburtsdatum des Mitversicherten JJJJMMTT</td>
        <td>AGEBDAT</td>
        <td>KH</td>
        <td>HL7ATCorePatient</td>
        <td>Patient</td>
        <td>Patient.birthDate</td>
        <td>Composition.subject</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Fehlercode</td>
        <td>FECO</td>
        <td>SV</td>
        <td>MopedCommunicationRequest</td>
        <td>CommunicationRequest</td>
        <td>CommunicationRequest.payload.contentCodeableConcept</td>
        <td>Composition.section:Kommunikation</td>
        <td>generischer Kommunikationsprozess in Moped ist in Arbeit :)</td>
    </tr>
    <tr>
        <td>Datensatz-ID-Referenz</td>
        <td>DSIDR</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Krankenanstaltennummer des Bundesministeriums</td>
        <td>BKANR</td>
        <td>KH</td>
        <td>KHOrganization</td>
        <td>Organization</td>
        <td>Organization.identifer:KANR</td>
        <td>Composition.section:zustaendigesKH</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Datensatzversion ID-Teil</td>
        <td>DVERS-ID</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Datensatzversion Satzart-Teil</td>
        <td>DVERS-SA</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
    </tr>
</table>
</div>

### E1.1 -> FHIR
<div class="table-responsive">
<table>
    <tr>
        <th>Feld</th>
        <th>Abkürzung</th>
        <th>befüllt von</th>
        <th>Profile</th>
        <th>FHIR Ressource</th>
        <th>Pfad von der Ressource aus</th>
        <th>Pfad von der Composition aus</th>
        <th>Anmerkungen</th>
    </tr>
    <tr>
        <td>Satzart</td>
        <td>SART</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>in neuer Architektur nicht mehr notwendig</td>
    </tr>
    <tr>
        <td>Vertragspartnernummer der Krankenanstalt</td>
        <td>VPNR</td>
        <td>KH</td>
        <td>KHOrganization</td>
        <td>Organization</td>
        <td>Organization.identifier:VPNR</td>
        <td>Composition.section:zustaendigesKH</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Aufnahmezahl</td>
        <td>AUFZL</td>
        <td>KH</td>
        <td>MopedEncounterA, MopedEncounterS</td>
        <td>Encounter</td>
        <td>Encounter.identifier:Aufnahmezahl.value</td>
        <td>Composition.encounter</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Fallnummer</td>
        <td>FANU</td>
        <td>KH</td>
        <td>MopedComposition</td>
        <td>Composition</td>
        <td>Composition.extension:AnzahlBeurlaubungen</td>
        <td>Composition.extension:AnzahlBeurlaubungen</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Kostenträger (leistungszuständig)</td>
        <td>KOST</td>
        <td>KH</td>
        <td>?</td>
        <td>?</td>
        <td>?</td>
        <td>?</td>
        <td>noch inhaltlich abzuklären: ggf. über den Träger des KH definiert</td>
    </tr>
    <tr>
        <td>zuständiger Versicherungsträger</td>
        <td>VSTR</td>
        <td>KH</td>
        <td>SVOrganization</td>
        <td>Organization</td>
        <td>Organization.identifier: ?</td>
        <td>Composition.section:zustaendigeSV</td>
        <td>der slice muss erst noch in der HL7ATCoreOrganization ergänzt werden</td>
    </tr>
    <tr>
        <td>Aufnahme-/Ereignisdatum JJJJMMTT</td>
        <td>AUFN</td>
        <td>KH</td>
        <td>MopedEncounterA, MopedEncounterS</td>
        <td>Encounter</td>
        <td>Encounter.actualPeriod.start</td>
        <td>Composition.encounter</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Entlassungsdatum JJJJMMTT</td>
        <td>ENTL</td>
        <td>KH</td>
        <td>MopedEncounterA, MopedEncounterS</td>
        <td>Encounter</td>
        <td>Encounter.actualPeriod.end</td>
        <td>Composition.encounter</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Kommentarsatz</td>
        <td>KOMM</td>
        <td>KH</td>
        <td>MopedCommunication</td>
        <td>Communication?</td>
        <td>Communication.note.text</td>
        <td>Composition.section:Kommunikation</td>
        <td>bei Kommentaren der SV muss die Communication.extension:MBDSRelevanz = false sein</td>
    </tr>
    <tr>
        <td>Geburtsdatum des Hauptversicherten JJJJMMTT</td>
        <td>GEBDAT</td>
        <td>KH</td>
        <td>HL7ATCorePatient/Hauptversicherter</td>
        <td>Patient/RelatedPerson</td>
        <td>Patient/RelatedPerson.birthDate</td>
        <td>Composition.subject/Composition.section:Hauptversicherter.entry</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Datensatz-ID</td>
        <td>DSID</td>
        <td>/</td>
        <td>MopedComposition</td>
        <td>Composition</td>
        <td>Composition.id</td>
        <td>Composition.id</td>
        <td>Die KaOrg Datensatz-ID ist vergleichbar mit der technischen ID der Composition, welche einen Fall eindeutig identifiziert (inklusive Version)</td>
    </tr>
    <tr>
        <td>Geburtsdatum des Mitversicherten JJJJMMTT</td>
        <td>GEBDATA</td>
        <td>KH</td>
        <td>HL7ATCorePatient</td>
        <td>Patient</td>
        <td>Patient.birthDate</td>
        <td>Composition.subject</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Fehlercode</td>
        <td>FECO</td>
        <td>SV</td>
        <td>MopedCommunicationRequest</td>
        <td>CommunicationRequest</td>
        <td>CommunicationRequest.payload.contentCodeableConcept</td>
        <td>Composition.section:Kommunikation</td>
        <td>generischer Kommunikationsprozess in Moped ist in Arbeit :)</td>
    </tr>
    <tr>
        <td>Datensatz-ID Referenz</td>
        <td>DSIDR</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Krankenanstaltennummer des Bundesministeriums</td>
        <td>BKANR</td>
        <td>KH</td>
        <td>KHOrganization</td>
        <td>Organization</td>
        <td>Organization.identifer:KANR</td>
        <td>Composition.section:zustaendigesKH</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Datensatzversion ID-Teil, Versionsnummer vom ID-Teil</td>
        <td>DVERS-ID</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Datensatzversion Satzart-Teil, Versionsnummer vom Satzart-Teil</td>
        <td>DVERS-SA</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
    </tr>
</table>
</div>

### K01 -> FHIR
<div class="table-responsive">
<table>
    <tr>
        <th>Feld</th>
        <th>Abkürzung</th>
        <th>befüllt von</th>
        <th>Profile</th>
        <th>FHIR Ressource</th>
        <th>Pfad von der Ressource aus</th>
        <th>Pfad von der Composition aus</th>
        <th>Anmerkungen</th>
    </tr>
    <tr>
        <td>E.1. Identifikationsteil</td>
        <td></td>
        <td>siehe E1</td>
        <td>siehe E1</td>
        <td>siehe E1</td>
        <td>siehe E1</td>
        <td>siehe E1</td>
        <td>siehe E1</td>
    </tr>
    <tr>
        <td>Ereignisart</td>
        <td>EREIG</td>
        <td>KH</td>
        <td>MopedEncounterA, MopedEncounterS</td>
        <td>Encounter</td>
        <td>Encounter.admission.extension:aufnahmeart</td>
        <td>Composition.encounter</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Funktionscode der Abteilung lt. LKF</td>
        <td>FKRA</td>
        <td>KH</td>
        <td>MopedOrganizationAbteilung</td>
        <td>Organization</td>
        <td>Encounter.serviceProvider.resolve().identifier:Funktionscode</td>
        <td>Composition.section:TransferEncounter</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Funktionssubcode der Abteilung lt. LKF</td>
        <td>FKRASU</td>
        <td>KH</td>
        <td>MopedOrganizationAbteilung</td>
        <td>Organization</td>
        <td>Encounter.serviceProvider.resolve().identifier:Funktionssubcode</td>
        <td>Composition.section:TransferEncounter</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Allgemeine Gebührenklasse/Sonderklasse</td>
        <td>KLAS</td>
        <td>KH</td>
        <td>VAERequest</td>
        <td>Claim</td>
        <td>Claim.supportingInfo:Sonderklasse</td>
        <td>Composition.section:VAERequests</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Staatsbürgerschaftsschlüssel</td>
        <td>STAAT</td>
        <td>KH</td>
        <td>HL7ATCorePatient</td>
        <td>Patient</td>
        <td>Patient.extension:citizenship</td>
        <td>Composition.subject</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Wohandresse des Patienten, Straße</td>
        <td>PASTR</td>
        <td>KH</td>
        <td>HL7ATCorePatient</td>
        <td>Patient</td>
        <td>Patient.address.line</td>
        <td>Composition.subject</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Wohnadresse des Patienten, Länderkennzeichen</td>
        <td>PALKZ</td>
        <td>KH</td>
        <td>HL7ATCorePatient</td>
        <td>Patient</td>
        <td>Patient.address.country</td>
        <td>Composition.subject</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Wohnadresse des Patienten, Postleitzahl</td>
        <td>PAPLZL</td>
        <td>KH</td>
        <td>HL7ATCorePatient</td>
        <td>Patient</td>
        <td>Patient.address.postalCode</td>
        <td>Composition.subject</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Wohnadresse des Patienten, Ort</td>
        <td>PAORT</td>
        <td>KH</td>
        <td>HL7ATCorePatient</td>
        <td>Patient</td>
        <td>Patient.address.city</td>
        <td>Composition.subject</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Verdacht auf Arbeits-/Schülerunfall</td>
        <td>VERDAU</td>
        <td>KH</td>
        <td>VAERequest</td>
        <td>Claim</td>
        <td>Claim.accident.type</td>
        <td>Composition.section:VAERequests.entry</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Diganose 1, ICD10 BMSGPK Schlüssel</td>
        <td>DIAG1</td>
        <td>KH</td>
        <td>MopedCondition</td>
        <td>Condition</td>
        <td>Condition.code</td>
        <td>Composition.section:Diagnosen</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Diagnose 1, Untergliederung 1</td>
        <td>DIAG1U1</td>
        <td>KH</td>
        <td>MopedCondition</td>
        <td>Condition</td>
        <td>Condition.code</td>
        <td>Composition.section:Diagnosen</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Diagnose 1, Untergliederung 2</td>
        <td>DIAG1U2</td>
        <td>KH</td>
        <td>MopedCondition</td>
        <td>Condition</td>
        <td>Condition.code</td>
        <td>Composition.section:Diagnosen</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Diganose 2, ICD10 BMSGPK Schlüssel</td>
        <td>DIAG2</td>
        <td>KH</td>
        <td>MopedCondition</td>
        <td>Condition</td>
        <td>Condition.code</td>
        <td>Composition.section:Diagnosen</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Diagnose 2,  Untergliederung 1</td>
        <td>DIAG2U1</td>
        <td>KH</td>
        <td>MopedCondition</td>
        <td>Condition</td>
        <td>Condition.code</td>
        <td>Composition.section:Diagnosen</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Diagnose 2, Untergliederung 2</td>
        <td>DIAG2U2</td>
        <td>KH</td>
        <td>MopedCondition</td>
        <td>Condition</td>
        <td>Condition.code</td>
        <td>Composition.section:Diagnosen</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Diganose 3, ICD10 BMSGPK Schlüssel</td>
        <td>DIAG3</td>
        <td>KH</td>
        <td>MopedCondition</td>
        <td>Condition</td>
        <td>Condition.code</td>
        <td>Composition.section:Diagnosen</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Diagnose 3, Untergliederung 1</td>
        <td>DIAG3U1</td>
        <td>KH</td>
        <td>MopedCondition</td>
        <td>Condition</td>
        <td>Condition.code</td>
        <td>Composition.section:Diagnosen</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Diagnose 3, Untergliederung 2</td>
        <td>DIAG3U2</td>
        <td>KH</td>
        <td>MopedCondition</td>
        <td>Condition</td>
        <td>Condition.code</td>
        <td>Composition.section:Diagnosen</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Fremdversschluden</td>
        <td>FREVER</td>
        <td>KH</td>
        <td>VAERequest</td>
        <td>Claim</td>
        <td>Claim.supportingInfo:VerdachtFremdverschulden</td>
        <td>Composition.section:VAERequests.entry</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Diagnose im Klartext,kann bei Codierung entfallen</td>
        <td>DIAG</td>
        <td>/</td>
        <td>/</td>
        <td></td>
        <td>/</td>
        <td>/</td>
        <td>nicht notwendig da alle Diagnosen codiert werden</td>
    </tr>
    <tr>
        <td>Ursache der Behandlung</td>
        <td>URS</td>
        <td>KH</td>
        <td>MopedEncounter</td>
        <td>Encounter</td>
        <td>Encounter.reason:Ursache.value</td>
        <td>Composition.encounter</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Entbindungstag JJJJMMTT</td>
        <td>ENTBDAT</td>
        <td>/</td>
        <td>/</td>
        <td></td>
        <td>/</td>
        <td>/</td>
        <td>erst in K05 relevant</td>
    </tr>
    <tr>
        <td>Überweisende Stelle, Vertragspartnernummer</td>
        <td>USVPNR</td>
        <td>KH</td>
        <td>MopedEncounter</td>
        <td>Encounter</td>
        <td>Encounter.admission.origin.resolve().identifier:VPNR</td>
        <td>Composition.encounter</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Überweisende Stelle, Name</td>
        <td>USNA</td>
        <td>KH</td>
        <td>MopedEncounter</td>
        <td>Encounter</td>
        <td>Encounter.admission.origin.resolve().name</td>
        <td>Composition.encounter</td>
        <td>Überlegung, ob diese Organization 'contained' wird im Encounter</td>
    </tr>
    <tr>
        <td>Länderkennzeichen der überweisenden Stelle</td>
        <td>USLKZ</td>
        <td>KH</td>
        <td>MopedEncounter</td>
        <td>Encounter</td>
        <td>Encounter.admission.origin.resolve().contact.address.country</td>
        <td>Composition.encounter</td>
        <td>Überlegung, ob diese Organization 'contained' wird im Encounter</td>
    </tr>
    <tr>
        <td>Überweisende Stelle, Postleitzahl</td>
        <td>USPLZL</td>
        <td>KH</td>
        <td>MopedEncounter</td>
        <td>Encounter</td>
        <td>Encounter.admission.origin.resolve().contact.address.postalCode</td>
        <td>Composition.encounter</td>
        <td>Überlegung, ob diese Organization 'contained' wird im Encounter</td>
    </tr>
    <tr>
        <td>Überweisende Stelle, Ort</td>
        <td>USORT</td>
        <td>KH</td>
        <td>MopedEncounter</td>
        <td>Encounter</td>
        <td>Encounter.admission.origin.resolve().contact.address.city</td>
        <td>Composition.encounter</td>
        <td>Überlegung, ob diese Organization 'contained' wird im Encounter</td>
    </tr>
    <tr>
        <td>Ereignis-/Unfalldatum JJJJMMTT (initiales Aufnahmedatum)</td>
        <td>ERDAT</td>
        <td>KH</td>
        <td>MopedEncounter</td>
        <td>Encounter</td>
        <td>Encounter.actualPeriod.start</td>
        <td>Composition.encounter</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Ereignis-/Unfalldatum JJJJMMTT (echtes Unfalldatum)</td>
        <td>ERDAT</td>
        <td>KH</td>
        <td>VAERequest</td>
        <td>Claim</td>
        <td>Claim.accident.date</td>
        <td>Composition.section:VAERequests.entry</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Ereignis-/Unfalldatum JJJJMMTT (Verlängerungsdatum)</td>
        <td>ERDAT</td>
        <td>KH</td>
        <td>VAERequest</td>
        <td>Claim</td>
        <td>Claim.?</td>
        <td>Composition.section:VAERequests.entry</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Anzahl der Verlängerungstage</td>
        <td>VTAG</td>
        <td>KH</td>
        <td>VAERequest</td>
        <td>Claim</td>
        <td>Claim.supportingInfo:Veraengerungstage</td>
        <td>Composition.section:VAERequests.entry</td>
        <td>Nicht das Unfalldatum sondern das VAE Verlängerungsdatum; Modellierung der Verlängerung ist in Arbeit</td>
    </tr>
    <tr>
        <td>VDAS-ID, Ergebnis der Abfrage</td>
        <td>VDAS</td>
        <td>KH</td>
        <td>MopedCoverage</td>
        <td>Coverage</td>
        <td>Coverage.identifier:VDASID</td>
        <td>Composition.section:Coverages.entry</td>
        <td></td>
    </tr>
</table>
</div>

### K03 -> FHIR
<div class="table-responsive">
<table>
    <tr>
        <th>Feld</th>
        <th>Abkürzung</th>
        <th>befüllt von</th>
        <th>Profile</th>
        <th>FHIR Ressource</th>
        <th>Pfad von der Ressource aus</th>
        <th>Pfad von der Composition aus</th>
        <th>Anmerkungen</th>
    </tr>
    <tr>
        <td>E.1. Identifikationsteil</td>
        <td></td>
        <td>siehe E1</td>
        <td>siehe E1</td>
        <td>siehe E1</td>
        <td>siehe E1</td>
        <td>siehe E1</td>
        <td>siehe E1</td>
    </tr>
    <tr>
        <td>Ereignisart</td>
        <td>EREIG</td>
        <td>KH</td>
        <td></td>
        <td>MopedEncounter</td>
        <td>Encounter.admission.extension:aufnahmeart</td>
        <td>Composition.encounter</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Allgemeine Gebührenklasse/Sonderklasse</td>
        <td>KLAS</td>
        <td>KH</td>
        <td>VAEResponse</td>
        <td>ClaimResponse</td>
        <td>VAEResponse.extension:MopedSupportingInfoSonderklasse</td>
        <td>Composition.section:VAEResponses</td>
        <td>wird in R6 von einer extension zu einem normalen supportingInfo slice</td>
    </tr>
    <tr>
        <td>VAE Beginndatum</td>
        <td>DAT-VON</td>
        <td>SV</td>
        <td>VAEResponse</td>
        <td>ClaimResponse</td>
        <td>VAEResponse.preAuthPeriod.start</td>
        <td>Composition.section:VAEResponses</td>
        <td>/</td>
    </tr>
    <tr>
        <td>VAE Endedatum</td>
        <td>DATBIS</td>
        <td>SV</td>
        <td>VAEResponse</td>
        <td>ClaimResponse</td>
        <td>VAEResponse.preAuthPeriod.end</td>
        <td>Composition.section:VAEResponses</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Fristende</td>
        <td>ENDE</td>
        <td>SV</td>
        <td>VAEResponse</td>
        <td>ClaimResponse</td>
        <td>VAEResponse.preAuthPeriod.end</td>
        <td>Composition.section:VAEResponses</td>
        <td>falls das Feld preAuthPeriod.end befüllt ist, gibt es ein Fristende (Fristende = 1)</td>
    </tr>
    <tr>
        <td>Status der VAE</td>
        <td>VAEST</td>
        <td>SV</td>
        <td>VAEResponse</td>
        <td>ClaimResponse</td>
        <td>VAEResponse.decision</td>
        <td>Composition.section:VAEResponses</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Verpflegskosten-Beitragsbefreiung</td>
        <td>VKBEFR</td>
        <td>SV</td>
        <td>VAEResponse</td>
        <td>ClaimResponse</td>
        <td>VAEResponse.extension:VerpflegskostenBeitragsbefreiung</td>
        <td>Composition.section:VAEResponses</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Vortageanzahl auf Kostenbeitrag</td>
        <td>VTAGE</td>
        <td>SV</td>
        <td>VAEResponse</td>
        <td>ClaimResponse</td>
        <td>VAEResponse.extension:MopedSupportingInfoVortageanzahlAufKostenbeitrag</td>
        <td>Composition.section:VAEResponses</td>
        <td>wird in R6 von einer extension zu einem normalen supportingInfo slice</td>
    </tr>
</table>
</div>

### K05 -> FHIR
<div class="table-responsive">
<table>
    <tr>
        <th>Feld</th>
        <th>Abkürzung</th>
        <th>befüllt von</th>
        <th>Profile</th>
        <th>FHIR Ressource</th>
        <th>Pfad von der Ressource aus</th>
        <th>Pfad von der Composition aus</th>
        <th>Anmerkungen</th>
    </tr>
    <tr>
        <td>E.1. Identifikationsteil</td>
        <td></td>
        <td>siehe E1</td>
        <td>siehe E1</td>
        <td>siehe E1</td>
        <td>siehe E1</td>
        <td>siehe E1</td>
        <td>siehe E1</td>
    </tr>
    <tr>
        <td>Hauptdiagnose ICD 10 BMSGPK Schlüssel</td>
        <td>HDIAG</td>
        <td>KH</td>
        <td>MopedCondition</td>
        <td>Condition</td>
        <td>Condition.code</td>
        <td>Composition.section:Diagnosen</td>
        <td>Haupt und Zusatzdiagnosen können durch das Feld Condition.extension:Diagnosetyp unterschieden werden</td>
    </tr>
    <tr>
        <td>Hauptdiagnose Untergliederung 1</td>
        <td>HDIAGU1</td>
        <td>KH</td>
        <td>MopedCondition</td>
        <td>Condition</td>
        <td>Condition.code</td>
        <td>Composition.section:Diagnosen</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Hauptdiagnose Untergliederung 2</td>
        <td>HDIAGU2</td>
        <td>KH</td>
        <td>MopedCondition</td>
        <td>Condition</td>
        <td>Condition.code</td>
        <td>Composition.section:Diagnosen</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Zusatzdiagnose 1, ICD 10 BMSGPK Schlüssel</td>
        <td>ZDIAG1</td>
        <td>KH</td>
        <td>MopedCondition</td>
        <td>Condition</td>
        <td>Condition.code</td>
        <td>Composition.section:Diagnosen</td>
        <td>Haupt und Zusatzdiagnosen können durch das Feld Condition.extension:Diagnosetyp unterschieden werden</td>
    </tr>
    <tr>
        <td>Zusatzdiagnose 1, Untergliederung 1</td>
        <td>ZDIAGU1</td>
        <td>KH</td>
        <td>MopedCondition</td>
        <td>Condition</td>
        <td>Condition.code</td>
        <td>Composition.section:Diagnosen</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Zusatzdiagnose 1, Untergliederung 2</td>
        <td>ZDIAGU2</td>
        <td>KH</td>
        <td>MopedCondition</td>
        <td>Condition</td>
        <td>Condition.code</td>
        <td>Composition.section:Diagnosen</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Fremdverschulden</td>
        <td>FREVER</td>
        <td>KH</td>
        <td>VAERequest</td>
        <td>Claim</td>
        <td>VAERequest.supportingInfo:VerdachtFremdverschulden.value</td>
        <td>Composition.section:VAERequests</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Hauptdiagnose im Klartext, entfällt bei Codierung</td>
        <td>DAIG</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>aufgrund der verpflichtenden Diagnosecodierung nicht mehr notwendig</td>
    </tr>
    <tr>
        <td>Ursache der Behandlung</td>
        <td>URS</td>
        <td>KH</td>
        <td>MopedEncounterA, MopedEncounterS</td>
        <td>Encounter</td>
        <td>Encounter.reason</td>
        <td>Composition.encounter</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Entbindungsdatum JJJJMMTT</td>
        <td>ENTBDAT</td>
        <td>KH</td>
        <td>?</td>
        <td>Observation?</td>
        <td>?</td>
        <td>?</td>
        <td>Thema Geburt in Arbeit</td>
    </tr>
    <tr>
        <td>Anzahl der Lebendgeburten, männliche Kinder</td>
        <td>ENTGM</td>
        <td>KH</td>
        <td>?</td>
        <td>Observation?</td>
        <td>?</td>
        <td>?</td>
        <td>Thema Geburt in Arbeit</td>
    </tr>
    <tr>
        <td>Anzahl der Lebendgeburten, weibliche Kinder</td>
        <td>ENTGW</td>
        <td>KH</td>
        <td>?</td>
        <td>Observation?</td>
        <td>?</td>
        <td>?</td>
        <td>Thema Geburt in Arbeit</td>
    </tr>
    <tr>
        <td>Anzahl der Totgeburten</td>
        <td>ENTT</td>
        <td>KH</td>
        <td>?</td>
        <td>Observation?</td>
        <td>?</td>
        <td>?</td>
        <td>Thema Geburt in Arbeit</td>
    </tr>
    <tr>
        <td>Art der Entbindung</td>
        <td>ENTBART</td>
        <td>KH</td>
        <td>?</td>
        <td>Observation?</td>
        <td>?</td>
        <td>?</td>
        <td>Thema Geburt in Arbeit</td>
    </tr>
    <tr>
        <td>Entlassungsschlüssel</td>
        <td>ENTS</td>
        <td>KH</td>
        <td>MopedEncounterA, MopedEncounterS</td>
        <td>Encounter</td>
        <td>Encounter.admission.dischargeDisposition</td>
        <td>Composition.encounter</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Aufnahme-, Verlegungsdatum JJJJMMTT</td>
        <td>AVDAT</td>
        <td>KH</td>
        <td>VAERequest</td>
        <td>Claim</td>
        <td>Claim.supportingInfo:Sonderklasse.timingPeriod</td>
        <td>Composition.section:VAERequests</td>
        <td>bei einer Verlegung der Klasse muss die VAE neu eingebracht (und somit auch die alte gecancelt werden)</td>
    </tr>
    <tr>
        <td>Verlegung Klasse</td>
        <td>VKLA</td>
        <td>KH</td>
        <td>VAERequest</td>
        <td>Claim</td>
        <td>Claim.supportingInfo:Sonderklasse</td>
        <td>Composition.section:VAERequests</td>
        <td>bei einer Verlegung der Klasse muss die VAE neu eingebracht (und somit auch die alte gecancelt werden)</td>
    </tr>
    <tr>
        <td>Avisio-Info</td>
        <td>AI</td>
        <td>KH</td>
        <td>MopedEncounterA, MopedEncounterS</td>
        <td>Encounter</td>
        <td>Encounter.status</td>
        <td>Composition.encounter</td>
        <td>Wenn der Encounter.status = discharged bedeutet das, dass ein Entlassungsaviso vorliegt</td>
    </tr>
    <tr>
        <td>Anzahl der Tage, für welche kein Kostenbeitrag seitens der Krankenanstalt eingehoben wurde</td>
        <td>KABEFR</td>
        <td>KH</td>
        <td>MopedEncounterA, MopedEncounterS</td>
        <td>Encounter</td>
        <td>Encounter.extension:TageOhneKostenbeitrag</td>
        <td>Composition.encounter</td>
        <td>/</td>
    </tr>
</table>
</div>

### K09 -> FHIR
<div class="table-responsive">
<table>
    <tr>
        <th>Feld</th>
        <th>Abkürzung</th>
        <th>befüllt von</th>
        <th>Profile</th>
        <th>FHIR Ressource</th>
        <th>Pfad von der Ressource aus</th>
        <th>Pfad von der Composition aus</th>
        <th>Anmerkungen</th>
    </tr>
    <tr>
        <td>IDTEIL Landesfonds</td>
        <td></td>
        <td>siehe E1.1</td>
        <td>siehe E1.1</td>
        <td>siehe E1.1</td>
        <td>siehe E1.1</td>
        <td>siehe E1.1</td>
        <td>siehe E1.1</td>
    </tr>
    <tr>
        <td>Staatsbürgerschaft</td>
        <td>STAATB</td>
        <td>KH</td>
        <td>HL7ATCorePatient</td>
        <td>Patient</td>
        <td>Patient.extension:citizenship</td>
        <td>Composition.subject</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Hauptwohnsitz Staat</td>
        <td>STAATW</td>
        <td>KH</td>
        <td>HL7ATCorePatient</td>
        <td>Patient</td>
        <td>Patient.address.country</td>
        <td>Composition.subject</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Hauptwohnsitz Postleitzahl</td>
        <td>PLZLW</td>
        <td>KH</td>
        <td>HL7ATCorePatient</td>
        <td>Patient</td>
        <td>Patient.address.postalCode</td>
        <td>Composition.subject</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Aufnahmeart</td>
        <td>AUFART</td>
        <td>KH</td>
        <td>MopedEncounterA, MopedEncounterS</td>
        <td>Encounter</td>
        <td>Encounter.admission.extension:aufnahmeart</td>
        <td>Composition.encounter</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Entlassungsart</td>
        <td>ENTLART</td>
        <td>KH</td>
        <td>MopedEncounterA, MopedEncounterS</td>
        <td>Encounter</td>
        <td>Encounter.admission.dischargeDisposition</td>
        <td>Composition.encounter</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Entbindungsheimpflegekennzeichen</td>
        <td>EBH</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>laut Abstimmung: vorläufige Überarbeitung KaOrg - Feld wird voraussichtlich entfernt</td>
    </tr>
    <tr>
        <td>Urlaubstage im Verrechnungszeitraum</td>
        <td>VERURL</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>laut Abstimmung: vorläufige Überarbeitung KaOrg - Feld wird voraussichtlich entfernt</td>
    </tr>
    <tr>
        <td>Sonderleistungsnummer</td>
        <td>SOND</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>laut Abstimmung: vorläufige Überarbeitung KaOrg - Feld wird voraussichtlich entfernt</td>
    </tr>
    <tr>
        <td>Anzahl Sonderleistung</td>
        <td>SOANZ</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>laut Abstimmung: vorläufige Überarbeitung KaOrg - Feld wird voraussichtlich entfernt</td>
    </tr>
    <tr>
        <td>Ablehnungsgrund für Leistungserbringung stationär</td>
        <td>KVAB</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>laut Abstimmung: vorläufige Überarbeitung KaOrg - Feld wird voraussichtlich entfernt</td>
    </tr>
    <tr>
        <td>Qualifier</td>
        <td>QUAL</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>laut Abstimmung: vorläufige Überarbeitung KaOrg - Feld wird voraussichtlich entfernt</td>
    </tr>
    <tr>
        <td>Kostenmeldung für (A/R/K)</td>
        <td>KOANF</td>
        <td>LGF</td>
        <td>ARKRequest</td>
        <td>Claim</td>
        <td>Claim.subType</td>
        <td>Composition.section:ARKKostenInformation</td>
        <td>/</td>
    </tr>
    <tr>
        <td>LDF-Gruppe Teil1</td>
        <td>LDFGRP</td>
        <td>LGF/(KH)</td>
        <td>ARKRequest</td>
        <td>Claim</td>
        <td>Claim.diagnosisRelatedGroup</td>
        <td>Composition.section:ARKKostenInformation</td>
        <td>/</td>
    </tr>
    <tr>
        <td>LDF-Gruppe Teil2</td>
        <td>LDFKNT</td>
        <td>LGF/(KH)</td>
        <td>ARKRequest</td>
        <td>Claim</td>
        <td>Claim.extension:DiagnoseKnoten</td>
        <td>Composition.section:ARKKostenInformation</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Punkte LDF-Pauschale</td>
        <td>LDFPP</td>
        <td>LGF/(KH)</td>
        <td>ARKRequest</td>
        <td>Claim</td>
        <td>Claim.item:Leistungskomponente.quantity.value + Claim.item:Tageskomponente.quantity.value</td>
        <td>Composition.section:ARKKostenInformation</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Punkte Verweildauerausreißer unten</td>
        <td>VDU</td>
        <td>LGF/(KH)</td>
        <td>ARKRequest</td>
        <td>Claim</td>
        <td>Claim.item:PunkteBelagsdauerausreisserUntenLeistungskomponente.quantity.value + Claim.item:PunkteBelagsdauerausreisserUntenTageskomponente.quantity.value</td>
        <td>Composition.section:ARKKostenInformation</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Zusatzpunkte Verweildauerausreißer oben</td>
        <td>VDO</td>
        <td>LGF/(KH)</td>
        <td>ARKRequest</td>
        <td>Claim</td>
        <td>Claim.item:ZusatzpunkteBelagsdauerausreisserNachOben.quantity.value</td>
        <td>Composition.section:ARKKostenInformation</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Zusatzpunkte Intensiv</td>
        <td>ZUINT</td>
        <td>LGF/(KH)</td>
        <td>ARKRequest</td>
        <td>Claim</td>
        <td>Claim.item:ZusatzpunkteIntensiv.quantity.value</td>
        <td>Composition.section:ARKKostenInformation</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Zusatzpunkte Mehrleistungen</td>
        <td>ZUMEHR</td>
        <td>LGF/(KH)</td>
        <td>ARKRequest</td>
        <td>Claim</td>
        <td>Claim.item:ZusatzpunkteMehrfachleistungen.quantity.value</td>
        <td>Composition.section:ARKKostenInformation</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Punkte spezieller Bereich</td>
        <td>PSPEZ</td>
        <td>LGF/(KH)</td>
        <td>ARKRequest</td>
        <td>Claim</td>
        <td>Claim.item:PunkteSpeziellerBereicheTageweise.quantity.value</td>
        <td>Composition.section:ARKKostenInformation</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Punkte total</td>
        <td>PTOT</td>
        <td>LGF/(KH)</td>
        <td>ARKRequest</td>
        <td>Claim</td>
        <td>Claim.item:Gesamtpunkte.quantity.value</td>
        <td>Composition.section:ARKKostenInformation</td>
        <td>/</td>
    </tr>
    <tr>
        <td>LDF-Punktewert Netto</td>
        <td>LDFFAK</td>
        <td>LGF</td>
        <td>ARKRequest</td>
        <td>Claim</td>
        <td>Claim.item:Gesamtpunkte.unitPrice</td>
        <td>Composition.section:ARKKostenInformation</td>
        <td>/</td>
    </tr>
    <tr>
        <td>LDF-Betrag Netto</td>
        <td>LDFBET</td>
        <td>LGF</td>
        <td>ARKRequest</td>
        <td>Claim</td>
        <td>Claim.item:Gesamtpunkte.net</td>
        <td>Composition.section:ARKKostenInformation</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Patientenanteil für Angehörige (tägl. Satz) netto</td>
        <td>VERSATZ</td>
        <td>LGF</td>
        <td>ARKRequest</td>
        <td>Claim</td>
        <td>Claim.item:Patientenanteil.unitPrice</td>
        <td>Composition.section:ARKKostenInformation</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Patientenanteil netto</td>
        <td>VERPA</td>
        <td>LGF</td>
        <td>ARKRequest</td>
        <td>Claim</td>
        <td>Claim.item:Patientenanteil.net</td>
        <td>Composition.section:ARKKostenInformation</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Beihilfenäquivalent</td>
        <td>BEIH</td>
        <td>LGF</td>
        <td>ARKRequest</td>
        <td>Claim</td>
        <td>Claim.extension:Beihilfenäquivalent</td>
        <td>Composition.section:ARKKostenInformation</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Forderungsbetrag für Ausländerverrechnung</td>
        <td>FORDAV</td>
        <td>LGF</td>
        <td>ARKRequest</td>
        <td>Claim</td>
        <td>Claim.total</td>
        <td>Composition.section:ARKKostenInformation</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Forderungsbetrag für den Regress</td>
        <td>FORDRG</td>
        <td>LGF</td>
        <td>ARKRequest</td>
        <td>Claim</td>
        <td>Claim.total</td>
        <td>Composition.section:ARKKostenInformation</td>
        <td>/</td>
    </tr>
    <tr>
        <td>K21 Ausländerverrechnung/Regresse - Rückmeldung</td>
        <td>RUE</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>laut Abstimmung: vorläufige Überarbeitung KaOrg - Feld wird voraussichtlich entfernt</td>
    </tr>
    <tr>
        <td>RENR</td>
        <td>RENR</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>laut Abstimmung: vorläufige Überarbeitung KaOrg - Feld wird voraussichtlich entfernt</td>
    </tr>
</table>
</div>

### K12 -> FHIR
<div class="table-responsive">
<table>
    <tr>
        <th>Feld</th>
        <th>Abkürzung</th>
        <th>befüllt von</th>
        <th>Profile</th>
        <th>FHIR Ressource</th>
        <th>Pfad von der Ressource aus</th>
        <th>Pfad von der Composition aus</th>
        <th>Anmerkungen</th>
    </tr>
    <tr>
        <td>Identifikationsteil</td>
        <td></td>
        <td>siehe E1</td>
        <td>siehe E1</td>
        <td>siehe E1</td>
        <td>siehe E1</td>
        <td>siehe E1</td>
        <td>siehe E1</td>
    </tr>
    <tr>
        <td>Zeilennummer</td>
        <td>ZEILNR</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Kommentartext</td>
        <td>TEXT1</td>
        <td>SV/KH</td>
        <td>MopedCommunication</td>
        <td>Communication?</td>
        <td>Communication.note.text</td>
        <td>Composition.section:Kommunikation</td>
        <td>bei Kommentaren der SV muss die Communication.extension:MBDSRelevanz = false sein</td>
    </tr>
    <tr>
        <td>Kommentartext</td>
        <td>TEXT2</td>
        <td>SV/KH</td>
        <td>MopedCommunication</td>
        <td>Communication?</td>
        <td>Communication.note.text</td>
        <td>Composition.section:Kommunikation</td>
        <td>bei Kommentaren der SV muss die Communication.extension:MBDSRelevanz = false sein</td>
    </tr>
    <tr>
        <td>Kommentartext</td>
        <td>TEXT3</td>
        <td>SV/KH</td>
        <td>MopedCommunication</td>
        <td>Communication?</td>
        <td>Communication.note.text</td>
        <td>Composition.section:Kommunikation</td>
        <td>bei Kommentaren der SV muss die Communication.extension:MBDSRelevanz = false sein</td>
    </tr>
    <tr>
        <td>Kommentartext</td>
        <td>TEXT4</td>
        <td>SV/KH</td>
        <td>MopedCommunication</td>
        <td>Communication?</td>
        <td>Communication.note.text</td>
        <td>Composition.section:Kommunikation</td>
        <td>bei Kommentaren der SV muss die Communication.extension:MBDSRelevanz = false sein</td>
    </tr>
</table>
</div>

### K13 -> FHIR
<div class="table-responsive">
<table>
    <tr>
        <th>Feld</th>
        <th>Abkürzung</th>
        <th>befüllt von</th>
        <th>Profile</th>
        <th>FHIR Ressource</th>
        <th>Pfad von der Ressource aus</th>
        <th>Pfad von der Composition aus</th>
        <th>Anmerkungen</th>
    </tr>
    <tr>
        <td>IDTEIL Landesfonds</td>
        <td></td>
        <td>siehe E1.1</td>
        <td>siehe E1.1</td>
        <td>siehe E1.1</td>
        <td>siehe E1.1</td>
        <td>siehe E1.1</td>
        <td>siehe E1.1</td>
    </tr>
    <tr>
        <td>Abteilung - Funktionscode der Ambulanz</td>
        <td>FKRA</td>
        <td>KH</td>
        <td>MopedTransferEncounterA, MopedTransferEncounterI, MopedTransferEncounterS</td>
        <td>Encounter</td>
        <td>Encounter.serviceProvider.resolve().identifier:Funktionscode</td>
        <td>Composition.section:TransferEncounter</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Abteilung - Subcode</td>
        <td>FKRASU</td>
        <td>KH</td>
        <td>MopedTransferEncounterA, MopedTransferEncounterI, MopedTransferEncounterS</td>
        <td>Encounter</td>
        <td>Encounter.serviceProvider.resolve().identifier:Funktionssubcode</td>
        <td>Composition.section:TransferEncounter</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Behandlungsdatum JJJJMMTT</td>
        <td>BDAT</td>
        <td>KH</td>
        <td>MopedEncounterA, MopedEncounterS</td>
        <td>Encounter</td>
        <td>Encounter.actualPeriod.start</td>
        <td>Composition.encounter</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Kostenmeldung für A/R/K</td>
        <td>KOANF</td>
        <td>LGF</td>
        <td>ARKRequest</td>
        <td>Claim</td>
        <td>Claim.subType</td>
        <td>Composition.section:ARKKostenInformation</td>
        <td>/</td>
    </tr>
    <tr>
        <td>LDF-Gruppe 1</td>
        <td>LDFGRP</td>
        <td>LGF/(KH)</td>
        <td>ARKRequest</td>
        <td>Claim</td>
        <td>Claim.diagnosisRelatedGroup</td>
        <td>Composition.section:ARKKostenInformation</td>
        <td>/</td>
    </tr>
    <tr>
        <td>LDF-Gruppe 2</td>
        <td>LDFKNR</td>
        <td>LGF/(KH)</td>
        <td>ARKRequest</td>
        <td>Claim</td>
        <td>Claim.extension:DiagnoseKnoten</td>
        <td>Composition.section:ARKKostenInformation</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Punkte Total</td>
        <td>PTOT</td>
        <td>LGF/(KH)</td>
        <td>ARKRequest</td>
        <td>Claim</td>
        <td>Claim.item:Gesamtpunkte.quantity.value</td>
        <td>Composition.section:ARKKostenInformation</td>
        <td>/</td>
    </tr>
    <tr>
        <td>LDF-Punktewert netto</td>
        <td>LDFFAK</td>
        <td>LGF</td>
        <td>ARKRequest</td>
        <td>Claim</td>
        <td>Claim.item:Gesamtpunkte.unitPrice</td>
        <td>Composition.section:ARKKostenInformation</td>
        <td>/</td>
    </tr>
    <tr>
        <td>LDF-Betrag Netto</td>
        <td>LDFBET</td>
        <td>LGF</td>
        <td>ARKRequest</td>
        <td>Claim</td>
        <td>Claim.item:Gesamtpunkte.net</td>
        <td>Composition.section:ARKKostenInformation</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Beihilfenäquivalent</td>
        <td>BEIH</td>
        <td>LGF</td>
        <td>ARKRequest</td>
        <td>Claim</td>
        <td>Claim.extension:Beihilfenäquivalent</td>
        <td>Composition.section:ARKKostenInformation</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Forderungsbetrag für Ausländerverrechnung</td>
        <td>FORDAV</td>
        <td>LGF</td>
        <td>ARKRequest</td>
        <td>Claim</td>
        <td>Claim.total.amount</td>
        <td>Composition.section:ARKKostenInformation</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Forderungsbetrag für den Regress</td>
        <td>FORDRG</td>
        <td>LGF</td>
        <td>ARKRequest</td>
        <td>Claim</td>
        <td>Claim.total.amount</td>
        <td>Composition.section:ARKKostenInformation</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Leistungspunkte</td>
        <td>ABTFC_LP</td>
        <td>LGF/KH</td>
        <td>ARKRequest</td>
        <td>Claim</td>
        <td>Claim.item:Leistungskomponente.quantity.value</td>
        <td>Composition.section:ARKKostenInformation</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Kontaktpunkte</td>
        <td>ABTFC_KP</td>
        <td>LGF/KH</td>
        <td>ARKRequest</td>
        <td>Claim</td>
        <td>Claim.item:Tageskomponente.quantity.value</td>
        <td>Composition.section:ARKKostenInformation</td>
        <td>/</td>
    </tr>
</table>
</div>

### K20 -> FHIR
<div class="table-responsive">
<table>
    <tr>
        <th>Feld</th>
        <th>Abkürzung</th>
        <th>befüllt von</th>
        <th>Profile</th>
        <th>FHIR Ressource</th>
        <th>Pfad von der Ressource aus</th>
        <th>Pfad von der Composition aus</th>
        <th>Anmerkungen</th>
    </tr>
    <tr>
        <td>IDTEIL Landesfonds</td>
        <td></td>
        <td>siehe E1.1</td>
        <td>siehe E1.1</td>
        <td>siehe E1.1</td>
        <td>siehe E1.1</td>
        <td>siehe E1.1</td>
        <td>diese Meldung ist in Moped in dieser Form nicht mehr notwendig</td>
    </tr>
    <tr>
        <td>Aufenthaltsartkennzeichen</td>
        <td>AUFKZ</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>diese Meldung ist in Moped in dieser Form nicht mehr notwendig</td>
    </tr>
    <tr>
        <td>Kostenmeldung für</td>
        <td>KOANF</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>diese Meldung ist in Moped in dieser Form nicht mehr notwendig</td>
    </tr>
</table>
</div>

### K21 -> FHIR
<div class="table-responsive">
<table>
    <tr>
        <th>Feld</th>
        <th>Abkürzung</th>
        <th>befüllt von</th>
        <th>Profile</th>
        <th>FHIR Ressource</th>
        <th>Pfad von der Ressource aus</th>
        <th>Pfad von der Composition aus</th>
        <th>Anmerkungen</th>
    </tr>
    <tr>
        <td>IDTEIL Landesfonds</td>
        <td></td>
        <td>siehe E1.1</td>
        <td>siehe E1.1</td>
        <td>siehe E1.1</td>
        <td>siehe E1.1</td>
        <td>siehe E1.1</td>
        <td>siehe E1.1</td>
    </tr>
    <tr>
        <td>Kostenmeldung</td>
        <td>KOANF</td>
        <td>SV</td>
        <td>ARKResponse</td>
        <td>ClaimResponse</td>
        <td>ClaimResponse.subType</td>
        <td>Composition.section:ARKRueckmeldung</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Zahlungskennzeichen Regress</td>
        <td>ZKZ</td>
        <td>SV</td>
        <td>MopedARKStatusUpdate</td>
        <td>PaymentReconciliation</td>
        <td>PaymentReconciliation.allocation.extension:Zahlungskennzeichen</td>
        <td>Composition.section:ARKRueckmeldung</td>
        <td>/</td>
    </tr>
    <tr>
        <td>LDF-Betrag Netto</td>
        <td>LDFBET</td>
        <td>LGF</td>
        <td>ARKRequest</td>
        <td>Claim</td>
        <td>Claim.item:Gesamtpunkte.net</td>
        <td>Composition.section:ARKKostenInformation</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Patientenanteil für Angehörige</td>
        <td>VERSATZ</td>
        <td>SV</td>
        <td>ARKResponse</td>
        <td>ClaimResponse</td>
        <td>ClaimResponse.addItem:Patientenanteil.unitPrice</td>
        <td>Composition.section:ARKRueckmeldung</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Patientenanteil</td>
        <td>VERPA</td>
        <td>SV</td>
        <td>ARKResponse</td>
        <td>ClaimResponse</td>
        <td>ClaimResponse.addItem:Patientenanteil.net</td>
        <td>Composition.section:ARKRueckmeldung</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Betrag Ausländerverrechnung</td>
        <td>BETRAV</td>
        <td>SV</td>
        <td>ARKResponse</td>
        <td>ClaimResponse</td>
        <td>ClaimResponse.total.amount</td>
        <td>Composition.section:ARKRueckmeldung</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Betrag Regress</td>
        <td>BETRRG</td>
        <td>SV</td>
        <td>ARKResponse</td>
        <td>ClaimResponse</td>
        <td>ClaimResponse.total.amount</td>
        <td>Composition.section:ARKRueckmeldung</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Rechnungsnummer</td>
        <td>RENR</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>laut Abstimmung: vorläufige Überarbeitung KaOrg - Feld wird voraussichtlich entfernt</td>
    </tr>
    <tr>
        <td>Abrechnungsart Ausländerverrechnung</td>
        <td>ART</td>
        <td>SV</td>
        <td>ARKResponse</td>
        <td>ClaimResponse</td>
        <td>ClaimResponse.extension:AbrechnungsartAuslaenderverrechnung</td>
        <td>Composition.section:ARKRueckmeldung</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Prozentsatz der Zahlung</td>
        <td>PROZ</td>
        <td>SV</td>
        <td>MopedARKStatusUpdate</td>
        <td>PaymentReconciliation</td>
        <td>PaymentReconciliation.extension:Zahlungsprozentsatz</td>
        <td>Composition.section:ARKRueckmeldung</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Betreuungsschein bei Ausländerverrechnung</td>
        <td>SCHEIN</td>
        <td>SV</td>
        <td>ARKResponse</td>
        <td>ClaimResponse</td>
        <td>ClaimResponse.extension:Betreuungsschein</td>
        <td>Composition.section:ARKRueckmeldung</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Landescode</td>
        <td>LAND</td>
        <td>SV</td>
        <td>ARKResponse</td>
        <td>ClaimResponse</td>
        <td>?</td>
        <td>Composition.section:ARKRueckmeldung</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Grund, warum keine Zahlung erfolgte</td>
        <td>GRUND</td>
        <td>SV</td>
        <td>MopedARKStatusUpdate</td>
        <td>PaymentReconciliation</td>
        <td>PaymentReconciliation.allocation.extension:keineZahlungGrund</td>
        <td>Composition.section:ARKRueckmeldung</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Rechnungsnummer der zwischenstaatlichen Abrechnung</td>
        <td>FREMDRE</td>
        <td>SV</td>
        <td>ARKResponse</td>
        <td>ClaimResponse</td>
        <td>ClaimResponse.extension:MopedSupportingInfoFREMDRE</td>
        <td>Composition.section:ARKRueckmeldung</td>
        <td>wird in R6 von einer extension zu einem normalen supportingInfo slice</td>
    </tr>
    <tr>
        <td>Forderungsnummer der ÖGK</td>
        <td>ELBNR</td>
        <td>SV</td>
        <td>ARKResponse</td>
        <td>ClaimResponse</td>
        <td>ClaimResponse.extension:MopedSupportingInfoOEGKELBNR</td>
        <td>Composition.section:ARKRueckmeldung</td>
        <td>wird in R6 von einer extension zu einem normalen supportingInfo slice</td>
    </tr>
    <tr>
        <td>Bezeichnung des ausländischen SV-Trägers</td>
        <td>ASVT</td>
        <td>SV</td>
        <td>ARKResponse</td>
        <td>ClaimResponse</td>
        <td>?</td>
        <td>Composition.section:ARKRueckmeldung</td>
        <td>/</td>
    </tr>
</table>
</div>

### K27 -> FHIR
<div class="table-responsive">
<table>
    <tr>
        <th>Feld</th>
        <th>Abkürzung</th>
        <th>befüllt von</th>
        <th>Profile</th>
        <th>FHIR Ressource</th>
        <th>Pfad von der Ressource aus</th>
        <th>Pfad von der Composition aus</th>
        <th>Anmerkungen</th>
    </tr>
    <tr>
        <td>E.1. Identifikationsteil</td>
        <td></td>
        <td>siehe E1</td>
        <td>siehe E1</td>
        <td>siehe E1</td>
        <td>siehe E1</td>
        <td>siehe E1</td>
        <td>siehe E1</td>
    </tr>
    <tr>
        <td>EWR-Versicherungsnummer des Patienten</td>
        <td>EVSNR</td>
        <td></td>
        <td>HL7ATCorePatient</td>
        <td>Patient</td>
        <td>Patientidentifier:socialSecurityNumber</td>
        <td>Composition.subject</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Zuname</td>
        <td>EZUNA</td>
        <td></td>
        <td>HL7ATCorePatient</td>
        <td>Patient</td>
        <td>Patient.name.family</td>
        <td>Composition.subject</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Vorname</td>
        <td>EVONA</td>
        <td></td>
        <td>HL7ATCorePatient</td>
        <td>Patient</td>
        <td>Patient.name.given</td>
        <td>Composition.subject</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Geschlecht</td>
        <td>EGESL</td>
        <td></td>
        <td>HL7ATCorePatient</td>
        <td>Patient</td>
        <td>Patient.gender</td>
        <td>Composition.subject</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Geburtsdatum JJJJMMTT</td>
        <td>EGEBD</td>
        <td></td>
        <td>HL7ATCorePatient</td>
        <td>Patient</td>
        <td>Patient.birthDate</td>
        <td>Composition.subject</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Staatenschlüssel</td>
        <td>ESTAAT</td>
        <td></td>
        <td>MopedEKVKOrganization</td>
        <td>Organization</td>
        <td>Coverage.insurer.resolve().contact.address.country</td>
        <td>Composition.section:Coverages</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Instituionscode des zuständen Trägers</td>
        <td>EIC</td>
        <td></td>
        <td>MopedEKVKOrganization</td>
        <td>Organization</td>
        <td>Coverage.insurer.resolve().identifier:Institutionscode</td>
        <td>Composition.section:Coverages</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Akronym des zuständigen Trägers</td>
        <td>EAKRO</td>
        <td></td>
        <td>MopedEKVKOrganization</td>
        <td>Organization</td>
        <td>Coverage.insurer.resolve().alias</td>
        <td>Composition.section:Coverages</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Kartennummer</td>
        <td>EKANR</td>
        <td></td>
        <td>EKVKCoverage/BilateralCoverage</td>
        <td>Coverage</td>
        <td>Coverage.subscriberId</td>
        <td>Composition.section:Coverages</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Endedatum des Anspruches JJJJMMTT</td>
        <td>EAEND</td>
        <td></td>
        <td>EKVKCoverage/BilateralCoverage</td>
        <td>Coverage</td>
        <td>Coverage.period.end</td>
        <td>Composition.section:Coverages</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Art der Anspruchsbescheinigung</td>
        <td>EFORM</td>
        <td></td>
        <td>EKVKCoverage/BilateralCoverage</td>
        <td>Coverage</td>
        <td>?</td>
        <td>Composition.section:Coverages</td>
        <td>wird mit Terminologen abgeklärt</td>
    </tr>
    <tr>
        <td>Beginndatum des Anspruches JJJJMMTT</td>
        <td>EABEG</td>
        <td></td>
        <td>EKVKCoverage/BilateralCoverage</td>
        <td>Coverage</td>
        <td>Coverage.period.start</td>
        <td>Composition.section:Coverages</td>
        <td>/</td>
    </tr>
    <tr>
        <td>Bei EFORM " ANFO mit der Wohnort-Stadt des Patienten</td>
        <td>ESTADT</td>
        <td></td>
        <td>HL7ATCorePatient</td>
        <td>Patient</td>
        <td>Patient.address.city</td>
        <td>Composition.subject</td>
        <td>/</td>
    </tr>
</table>
</div>
