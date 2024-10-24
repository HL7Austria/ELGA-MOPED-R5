

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

Diese Seite enthält das Mapping der Meldungen des Ka-Org Systems zu FHIR. Die Dokumentation der Ka-Org Meldungen ist unter <a href="https://www.sozialversicherung.at/cdscontent/load?contentid=10008.787666&version=1714375049">diesem Link</a> verfügbar.

### Identifikationsteil -> FHIR
<div class="table-responsive">
<table>
    <tr>
        <td>E.1</td>
        <td></td>
        <td>Resource</td>
        <td>FHIRPath</td>
        <td>Extension</td>
        <td>Anmerkung</td>
    </tr>
    <tr>
        <td>K01, K02, K03, K04, K05, K06, K12, K27</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>SART</td>
        <td>Satzart</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>in neuer Architektur nicht mehr notwendig</td>
    </tr>
    <tr>
        <td>VPNR</td>
        <td>Vertragspartnernummer der Krankenanstalt</td>
        <td>HL7ATCoreOrganization</td>
        <td>.identifier:VPNR</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>AUFZL</td>
        <td>Aufnahmezahl</td>
        <td>MOPEDEncounter</td>
        <td>.identifier:Aufnahmezahl</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>FANU</td>
        <td>Fallnummer</td>
        <td>MOPEDAccount</td>
        <td>.extension</td>
        <td>.AnzahlBeurlaubungen</td>
        <td>Anzahl der Wiederaufnahmen nach Urlaub</td>
    </tr>
    <tr>
        <td>KOST</td>
        <td>Kostenträger (leistungszuständig)</td>
        <td>MOPEDAccount + MOPEDClaim</td>
        <td>MOPEDAccount.coverage.paymentBy.party:HL7ATCoreOrganization.identifier |MOPEDClaim.insurance.coverage:MOPEDCoverage.paymentBy.party</td>
        <td>payer</td>
        <td></td>
    </tr>
    <tr>
        <td>VSTR</td>
        <td>zuständiger Versicherungsträger</td>
        <td>MOPEDAccount + MOPEDClaim</td>
        <td>MOPEDAccount.coverage.insurer:Organization.identifier + MOPEDClaim.insurer:Organization.identifier</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>AUFN</td>
        <td>Aufnahme-/Ereignisdatum JJJJMMTT</td>
        <td>MOPEDEncounter</td>
        <td>.period.start</td>
        <td></td>
        <td>AUFN = AUFDAT; SV (erstes im Quartal mit der gleichen Aufnahmezahl)</td>
    </tr>
    <tr>
        <td>ENTL</td>
        <td>Entlassungsdatum JJJJMMTT</td>
        <td>MOPEDEncounter</td>
        <td>.period.end</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>KOMM</td>
        <td>Kommentarsatz</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>für den Identifikationsteil nicht notwendig: Entscheidung der MOPED Stakeholder</td>
    </tr>
    <tr>
        <td>VSNR</td>
        <td>Versicherungsnummer des Hauptversicherten</td>
        <td>HL7ATCorePatient</td>
        <td>identifier:socialSecurityNumber</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>ZUNA</td>
        <td>Zuname des Hauptversicherten</td>
        <td>HL7ATCorePatient</td>
        <td>.name.given</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>VONA</td>
        <td>Vorname des Hauptversicherten</td>
        <td>HL7ATCorePatient</td>
        <td>.name.family</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>GESCHL</td>
        <td>Geschlecht des Hauptversicherten</td>
        <td>HL7ATCorePatient</td>
        <td>.gender</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>GEBDAT</td>
        <td>Geburtsdatum des Hauptversicherten JJJJMMTT</td>
        <td>HL7ATCorePatient</td>
        <td>.birthDate</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>DSID</td>
        <td>Datensatz-ID</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>in neuer Architektur nicht mehr notwendig</td>
    </tr>
    <tr>
        <td>VGR</td>
        <td>Versichertengruppe/Kategorie</td>
        <td>SVCCoverage</td>
        <td>.class:Versichertenkategorien</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>AVSNR</td>
        <td>Versicherungsnummer des Mitversicherten</td>
        <td>HL7ATCorePatient</td>
        <td>identifier:socialSecurityNumber</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>AZUNA</td>
        <td>Zuname de Mitversicherten</td>
        <td>HL7ATCorePatient</td>
        <td>.name.family</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>AVONA</td>
        <td>Vorname de Mitversicherten</td>
        <td>HL7ATCorePatient</td>
        <td>.name.given</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>AGESCHL</td>
        <td>Geschlecht des Mitversicherten</td>
        <td>HL7ATCorePatient</td>
        <td>.gender</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>AGEBDAT</td>
        <td>Geburtsdatum des Mitversicherten JJJJMMTT</td>
        <td>HL7ATCorePatient</td>
        <td>.birthDate</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>FECO</td>
        <td>Fehlercode</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>in neuer Architektur nicht mehr notwendig  (Validierung gegen die Profile - Formalabweisung)</td>
    </tr>
    <tr>
        <td>DSIDR</td>
        <td>Datensatz-ID-Referenz</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>in neuer Architektur nicht mehr notwendig</td>
    </tr>
    <tr>
        <td>BKANR</td>
        <td>Krankenanstaltennummer des Bundesministeriums</td>
        <td>MOPEDAccount</td>
        <td>.owner:HL7ATCoreOrganization.identifier:GDA-OID</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>DVERS-ID</td>
        <td>Datensatzversion ID-Teil</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>in neuer Architektur nicht mehr notwendig</td>
    </tr>
    <tr>
        <td>DVERS-SA</td>
        <td>Datensatzversion Satzart-Teil</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>in neuer Architektur nicht mehr notwendig</td>
    </tr>
</table>
</div>
### Identifikationsteil für den Landesgesundheitsfonds -> FHIR
<div class="table-responsive">
<table>
    <tr>
        <td>E1.1</td>
        <td></td>
        <td>Resource</td>
        <td>FHIRPath</td>
        <td>Extension</td>
        <td>Anmerkung</td>
    </tr>
    <tr>
        <td>K09, K10, K13, K14, K20, K21, K22</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>SART</td>
        <td>Satzart</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>in neuer Architektur nicht mehr notwendig</td>
    </tr>
    <tr>
        <td>VPNR</td>
        <td>Vertragspartnernummer der Krankenanstalt</td>
        <td>HL7ATCoreOrganization</td>
        <td>.identifier:VPNR</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>AUFZL</td>
        <td>Aufnahmezahl</td>
        <td>MOPEDEncounter</td>
        <td>.identifier:Aufnahmezahl</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>FANU</td>
        <td>Fallnummer</td>
        <td>MOPEDAccount</td>
        <td>.extension</td>
        <td>.AnzahlBeurlaubungen</td>
        <td>Anzahl der Wiederaufnahmen nach Urlaub</td>
    </tr>
    <tr>
        <td>KOST</td>
        <td>Kostenträger (leistungszuständig)</td>
        <td>MOPEDAccount + MOPEDClaim</td>
        <td>MOPEDAccount.coverage.paymentBy.party:HL7ATCoreOrganization.identifier |MOPEDClaim.insurance.coverage:MOPEDCoverage.paymentBy.party</td>
        <td>payer</td>
        <td></td>
    </tr>
    <tr>
        <td>VSTR</td>
        <td>zuständiger Versicherungsträger</td>
        <td>MOPEDAccount + MOPEDClaim</td>
        <td>MOPEDAccount.coverage.insurer:Organization.identifier + MOPEDClaim.insurer:Organization.identifier</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>AUFN</td>
        <td>Aufnahme-/Ereignisdatum JJJJMMTT</td>
        <td>MOPEDEncounter</td>
        <td>.period.start</td>
        <td></td>
        <td>AUFN = AUFDAT; SV (erstes im Quartal mit der gleichen Aufnahmezahl)</td>
    </tr>
    <tr>
        <td>ENTL</td>
        <td>Entlassungsdatum JJJJMMTT</td>
        <td>MOPEDEncounter</td>
        <td>.period.end</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>KOMM</td>
        <td>Kommentarsatz</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>für den Identifikationsteil nicht notwendig: Entscheidung der MOPED Stakeholder</td>
    </tr>
    <tr>
        <td>GEVDAT</td>
        <td>Geburtsdatum des Hauptversicherten JJJJMMTT</td>
        <td>HL7ATCorePatient</td>
        <td>.birthDate</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>DSID</td>
        <td>Datensatz-ID</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>in neuer Architektur nicht mehr notwendig</td>
    </tr>
    <tr>
        <td>GEBDATA</td>
        <td>Geburtsdatum des Mitversicherten JJJJMMTT</td>
        <td>HL7ATCorePatient</td>
        <td>.birthDate</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>FECO</td>
        <td>Fehlercode</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>in neuer Architektur nicht mehr notwendig  (Validierung gegen die Profile - Formalabweisung)</td>
    </tr>
    <tr>
        <td>DSIDR</td>
        <td>Datensatz-ID Referenz</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>in neuer Architektur nicht mehr notwendig</td>
    </tr>
    <tr>
        <td>BKANR</td>
        <td>Krankenanstaltennummer des Bundesministeriums</td>
        <td>MOPEDAccount</td>
        <td>.owner:HL7ATCoreOrganization.identifier:GDA-OID</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>DVERS-ID</td>
        <td>Datensatzversion ID-Teil, Versionsnummer vom ID-Teil</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>in neuer Architektur nicht mehr notwendig</td>
    </tr>
    <tr>
        <td>DVERS-SA</td>
        <td>Datensatzversion Satzart-Teil, Versionsnummer vom Satzart-Teil</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>in neuer Architektur nicht mehr notwendig</td>
    </tr>
</table>
</div>
### K01 -> FHIR
<div class="table-responsive">
<table>
    <tr>
        <td>E.4</td>
        <td></td>
        <td>Resource</td>
        <td>FHIRPath</td>
        <td>Extension</td>
        <td>Anmerkung</td>
    </tr>
    <tr>
        <td>K01 - Aufnahmeanzeige, Ereignisanzeige; K02 - Storno Aufnahmeanzeige, Storno Ereignisanzeige	</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>SART</td>
        <td>Satzart</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>in neuer Architektur nicht mehr notwendig</td>
    </tr>
    <tr>
        <td>VPNR</td>
        <td>Vertragspartnernummer der Krankenanstalt</td>
        <td>HL7ATCoreOrganization</td>
        <td>.identifier:VPNR</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>AUFZL</td>
        <td>Aufnahmezahl</td>
        <td>MOPEDEncounter</td>
        <td>.identifier:Aufnahmezahl</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>FANU</td>
        <td>Fallnummer</td>
        <td>MOPEDAccount</td>
        <td>.extension</td>
        <td>.AnzahlBeurlaubungen</td>
        <td>Anzahl der Wiederaufnahmen nach Urlaub</td>
    </tr>
    <tr>
        <td>KOST</td>
        <td>Kostenträger (leistungszuständig)</td>
        <td>MOPEDAccount + MOPEDClaim</td>
        <td>MOPEDAccount.coverage.paymentBy.party:HL7ATCoreOrganization.identifier |MOPEDClaim.insurance.coverage:MOPEDCoverage.paymentBy.party</td>
        <td>payer</td>
        <td></td>
    </tr>
    <tr>
        <td>VSTR</td>
        <td>zuständiger Versicherungsträger</td>
        <td>MOPEDAccount + MOPEDClaim</td>
        <td>MOPEDAccount.coverage.insurer:Organization.identifier + MOPEDClaim.insurer:Organization.identifier</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>AUFN</td>
        <td>Aufnahme-/Ereignisdatum JJJJMMTT</td>
        <td>MOPEDEncounter</td>
        <td>.period.start</td>
        <td></td>
        <td>AUFN = AUFDAT; SV (erstes im Quartal mit der gleichen Aufnahmezahl)</td>
    </tr>
    <tr>
        <td>ENTL</td>
        <td>Entlassungsdatum JJJJMMTT</td>
        <td>MOPEDEncounter</td>
        <td>.period.end</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>KOMM</td>
        <td>Kommentarsatz</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>für den Identifikationsteil nicht notwendig: Entscheidung der MOPED Stakeholder</td>
    </tr>
    <tr>
        <td>VSNR</td>
        <td>Versicherungsnummer des Hauptversicherten</td>
        <td>HL7ATCorePatient</td>
        <td>identifier:socialSecurityNumber</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>ZUNA</td>
        <td>Zuname des Hauptversicherten</td>
        <td>HL7ATCorePatient</td>
        <td>.name.given</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>VONA</td>
        <td>Vorname des Hauptversicherten</td>
        <td>HL7ATCorePatient</td>
        <td>.name.family</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>GESCHL</td>
        <td>Geschlecht des Hauptversicherten</td>
        <td>HL7ATCorePatient</td>
        <td>.gender</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>GEBDAT</td>
        <td>Geburtsdatum des Hauptversicherten JJJJMMTT</td>
        <td>HL7ATCorePatient</td>
        <td>.birthDate</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>DSID</td>
        <td>Datensatz-ID</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>in neuer Architektur nicht mehr notwendig</td>
    </tr>
    <tr>
        <td>VGR</td>
        <td>Versichertengruppe/Kategorie</td>
        <td>SVCCoverage</td>
        <td>.class:Versichertenkategorien</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>AVSNR</td>
        <td>Versicherungsnummer des Mitversicherten</td>
        <td>HL7ATCorePatient</td>
        <td>identifier:socialSecurityNumber</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>AZUNA</td>
        <td>Zuname de Mitversicherten</td>
        <td>HL7ATCorePatient</td>
        <td>.name.family</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>AVONA</td>
        <td>Vorname de Mitversicherten</td>
        <td>HL7ATCorePatient</td>
        <td>.name.given</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>AGESCHL</td>
        <td>Geschlecht des Mitversicherten</td>
        <td>HL7ATCorePatient</td>
        <td>.gender</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>AGEBDAT</td>
        <td>Geburtsdatum des Mitversicherten JJJJMMTT</td>
        <td>HL7ATCorePatient</td>
        <td>.birthDate</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>FECO</td>
        <td>Fehlercode</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>in neuer Architektur nicht mehr notwendig  (Validierung gegen die Profile - Formalabweisung)</td>
    </tr>
    <tr>
        <td>DSIDR</td>
        <td>Datensatz-ID-Referenz</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>in neuer Architektur nicht mehr notwendig</td>
    </tr>
    <tr>
        <td>BKANR</td>
        <td>Krankenanstaltennummer des Bundesministeriums</td>
        <td>MOPEDAccount</td>
        <td>.owner:HL7ATCoreOrganization.identifier:GDA-OID</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>DVERS-ID</td>
        <td>Datensatzversion ID-Teil</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>in neuer Architektur nicht mehr notwendig</td>
    </tr>
    <tr>
        <td>DVERS-SA</td>
        <td>Datensatzversion Satzart-Teil</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>in neuer Architektur nicht mehr notwendig</td>
    </tr>
    <tr>
        <td>EREIG</td>
        <td>Ereignisart</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>EREIG=AUFART -> MOPEDEncounter.admission.extension:Zugangsart</td>
    </tr>
    <tr>
        <td>FKRA</td>
        <td>Funktionscode der Abteilung lt. LKF</td>
        <td>MOPEDOrganizationAbteilung</td>
        <td>.identifier:Funktionscode</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>FKRASU</td>
        <td>Funktionssubcode der Abteilung lt. LKF</td>
        <td>MOPEDOrganizationAbteilung</td>
        <td>.identifier:Funktionssubcode</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>KLAS</td>
        <td>Allgemeine Gebührenklasse/Sonderklasse</td>
        <td>MOPEDCoverageEligibilityRequest</td>
        <td>.extension</td>
        <td>PremiumClass</td>
        <td></td>
    </tr>
    <tr>
        <td>STAAT</td>
        <td>Staatsbürgerschaftsschlüssel</td>
        <td>HL7ATCorePatient</td>
        <td>.extension</td>
        <td>citizenship</td>
        <td></td>
    </tr>
    <tr>
        <td>PASTR</td>
        <td>Wohandresse des Patienten, Straße</td>
        <td>HL7ATCorePatient</td>
        <td>.address.line</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>PALKZ</td>
        <td>Wohnadresse des Patienten, Länderkennzeichen</td>
        <td>HL7ATCorePatient</td>
        <td>address.country</td>
        <td>TBD</td>
        <td></td>
    </tr>
    <tr>
        <td>PAPLZL</td>
        <td>Wohnadresse des Patienten, Postleitzahl</td>
        <td>HL7ATCorePatient</td>
        <td>.address.postalCode</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>PAORT</td>
        <td>Wohnadresse des Patienten, Ort</td>
        <td>HL7ATCorePatient</td>
        <td>.address.city</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>VERDAU</td>
        <td>Verdacht auf Arbeits-/Schülerunfall</td>
        <td>MOPEDAccount</td>
        <td>.extension</td>
        <td>VerdachtArbeitsSchülerUnfall</td>
        <td></td>
    </tr>
    <tr>
        <td>DIAG1</td>
        <td>Diganose 1, ICD10 BMSGPK Schlüssel</td>
        <td>Condition</td>
        <td>.code</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>DIAG1U1</td>
        <td>Diagnose 1, Untergliederung 1</td>
        <td>Condition</td>
        <td>.code</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>DIAG1U2</td>
        <td>Diagnose 1, Untergliederung 2</td>
        <td>Condition</td>
        <td>.code</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>DIAG2</td>
        <td>Diganose 2, ICD10 BMSGPK Schlüssel</td>
        <td>Condition</td>
        <td>.code</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>DIAG2U1</td>
        <td>Diagnose 2,  Untergliederung 1</td>
        <td>Condition</td>
        <td>.code</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>DIAG2U2</td>
        <td>Diagnose 2, Untergliederung 2</td>
        <td>Condition</td>
        <td>.code</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>DIAG3</td>
        <td>Diganose 3, ICD10 BMSGPK Schlüssel</td>
        <td>Condition</td>
        <td>.code</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>DIAG3U1</td>
        <td>Diagnose 3, Untergliederung 1</td>
        <td>Condition</td>
        <td>.code</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>DIAG3U2</td>
        <td>Diagnose 3, Untergliederung 2</td>
        <td>Condition</td>
        <td>.code</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>FREVER</td>
        <td>Fremdversschluden</td>
        <td>MOPEDAccount</td>
        <td>.extension</td>
        <td>VerdachtFremdverschulden</td>
        <td></td>
    </tr>
    <tr>
        <td>DIAG</td>
        <td>Diagnose im Klartext,kann bei Codierung entfallen</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>ab 2025 Codierung verpflichten</td>
    </tr>
    <tr>
        <td>URS</td>
        <td>Ursache der Behandlung</td>
        <td>MOPEDEncounter</td>
        <td>.reason</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>ENTBDAT</td>
        <td>Entbindungstag JJJJMMTT</td>
        <td>Observation</td>
        <td>TBD</td>
        <td>TBD</td>
        <td></td>
    </tr>
    <tr>
        <td>USVPNR</td>
        <td>Überweisende Stelle, Vertragspartnernummer</td>
        <td>MOPEDEncounter</td>
        <td>.admission.origin</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>USNA</td>
        <td>Überweisende Stelle, Name</td>
        <td>HL7ATCoreOrganization</td>
        <td>.name</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>USLKZ</td>
        <td>Länderkennzeichen der überweisenden Stelle</td>
        <td>HL7ATCoreOrganization</td>
        <td>.contact.address.country</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>USPLZL</td>
        <td>Überweisende Stelle, Postleitzahl</td>
        <td>HL7ATCoreOrganization</td>
        <td>.contact.address.postalCode</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>USORT</td>
        <td>Überweisende Stelle, Ort</td>
        <td>HL7ATCoreOrganization</td>
        <td>.contact.address.city</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>ERDAT</td>
        <td>Ereignis-/Unfalldatum JJJJMMTT</td>
        <td>MOPEDEncounter</td>
        <td>.extension</td>
        <td>Unfalldatum</td>
        <td></td>
    </tr>
    <tr>
        <td>VTAG</td>
        <td>Anzahl der Verlängerungstage</td>
        <td>MOPEDCoverageEligibilityRequest</td>
        <td>.extension</td>
        <td>Verlaengerungstage</td>
        <td></td>
    </tr>
    <tr>
        <td>VDAS</td>
        <td>VDAS-ID, Ergebnis der Abfrage</td>
        <td>MOPEDAccount</td>
        <td>.extension</td>
        <td>VDASID</td>
        <td></td>
    </tr>
</table>
</div>
### K03 -> FHIR
<div class="table-responsive">
<table>
    <tr>
        <td>E.5</td>
        <td></td>
        <td>Resource</td>
        <td>FHIRPath</td>
        <td>Extension</td>
        <td>Anmerkung</td>
    </tr>
    <tr>
        <td>K03 - Versichertenanspruchserklärung; K04 - Storno Versichertenanspruchserklärung	</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>SART</td>
        <td>Satzart</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>in neuer Architektur nicht mehr notwendig</td>
    </tr>
    <tr>
        <td>VPNR</td>
        <td>Vertragspartnernummer der Krankenanstalt</td>
        <td>HL7ATCoreOrganization</td>
        <td>.identifier:VPNR</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>AUFZL</td>
        <td>Aufnahmezahl</td>
        <td>MOPEDEncounter</td>
        <td>.identifier:Aufnahmezahl</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>FANU</td>
        <td>Fallnummer</td>
        <td>MOPEDAccount</td>
        <td>.extension</td>
        <td>.AnzahlBeurlaubungen</td>
        <td>Anzahl der Wiederaufnahmen nach Urlaub</td>
    </tr>
    <tr>
        <td>KOST</td>
        <td>Kostenträger (leistungszuständig)</td>
        <td>MOPEDAccount + MOPEDClaim</td>
        <td>MOPEDAccount.coverage.paymentBy.party:HL7ATCoreOrganization.identifier |MOPEDClaim.insurance.coverage:MOPEDCoverage.paymentBy.party</td>
        <td>payer</td>
        <td></td>
    </tr>
    <tr>
        <td>VSTR</td>
        <td>zuständiger Versicherungsträger</td>
        <td>MOPEDAccount + MOPEDClaim</td>
        <td>MOPEDAccount.coverage.insurer:Organization.identifier + MOPEDClaim.insurer:Organization.identifier</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>AUFN</td>
        <td>Aufnahme-/Ereignisdatum JJJJMMTT</td>
        <td>MOPEDEncounter</td>
        <td>.period.start</td>
        <td></td>
        <td>AUFN = AUFDAT; SV (erstes im Quartal mit der gleichen Aufnahmezahl)</td>
    </tr>
    <tr>
        <td>ENTL</td>
        <td>Entlassungsdatum JJJJMMTT</td>
        <td>MOPEDEncounter</td>
        <td>.period.end</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>KOMM</td>
        <td>Kommentarsatz</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>für den Identifikationsteil nicht notwendig: Entscheidung der MOPED Stakeholder</td>
    </tr>
    <tr>
        <td>VSNR</td>
        <td>Versicherungsnummer des Hauptversicherten</td>
        <td>HL7ATCorePatient</td>
        <td>identifier:socialSecurityNumber</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>ZUNA</td>
        <td>Zuname des Hauptversicherten</td>
        <td>HL7ATCorePatient</td>
        <td>.name.given</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>VONA</td>
        <td>Vorname des Hauptversicherten</td>
        <td>HL7ATCorePatient</td>
        <td>.name.family</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>GESCHL</td>
        <td>Geschlecht des Hauptversicherten</td>
        <td>HL7ATCorePatient</td>
        <td>.gender</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>GEBDAT</td>
        <td>Geburtsdatum des Hauptversicherten JJJJMMTT</td>
        <td>HL7ATCorePatient</td>
        <td>.birthDate</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>DSID</td>
        <td>Datensatz-ID</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>in neuer Architektur nicht mehr notwendig</td>
    </tr>
    <tr>
        <td>VGR</td>
        <td>Versichertengruppe/Kategorie</td>
        <td>SVCCoverage</td>
        <td>.class:Versichertenkategorien</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>AVSNR</td>
        <td>Versicherungsnummer des Mitversicherten</td>
        <td>HL7ATCorePatient</td>
        <td>identifier:socialSecurityNumber</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>AZUNA</td>
        <td>Zuname de Mitversicherten</td>
        <td>HL7ATCorePatient</td>
        <td>.name.family</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>AVONA</td>
        <td>Vorname de Mitversicherten</td>
        <td>HL7ATCorePatient</td>
        <td>.name.given</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>AGESCHL</td>
        <td>Geschlecht des Mitversicherten</td>
        <td>HL7ATCorePatient</td>
        <td>.gender</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>AGEBDAT</td>
        <td>Geburtsdatum des Mitversicherten JJJJMMTT</td>
        <td>HL7ATCorePatient</td>
        <td>.birthDate</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>FECO</td>
        <td>Fehlercode</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>in neuer Architektur nicht mehr notwendig  (Validierung gegen die Profile - Formalabweisung)</td>
    </tr>
    <tr>
        <td>DSIDR</td>
        <td>Datensatz-ID-Referenz</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>in neuer Architektur nicht mehr notwendig</td>
    </tr>
    <tr>
        <td>BKANR</td>
        <td>Krankenanstaltennummer des Bundesministeriums</td>
        <td>MOPEDAccount</td>
        <td>.owner:HL7ATCoreOrganization.identifier:GDA-OID</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>DVERS-ID</td>
        <td>Datensatzversion ID-Teil</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>in neuer Architektur nicht mehr notwendig</td>
    </tr>
    <tr>
        <td>DVERS-SA</td>
        <td>Datensatzversion Satzart-Teil</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>in neuer Architektur nicht mehr notwendig</td>
    </tr>
    <tr>
        <td>EREIG</td>
        <td>Ereignisart</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>EREIG=AUFART -> MOPEDEncounter.admission.extension:Zugangsart</td>
    </tr>
    <tr>
        <td>KLAS</td>
        <td>Allgemeine Gebührenklasse/Sonderklasse</td>
        <td>MOPEDCoverageEligibilityRequest</td>
        <td>.extension</td>
        <td>PremiumClass</td>
        <td></td>
    </tr>
    <tr>
        <td>DAT-VON</td>
        <td>VAE Beginndatum</td>
        <td>MOPEDCoverageEligibilityResponse</td>
        <td>.insurance.benefitPeriod.start</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>DATBIS</td>
        <td>VAE Endedatum</td>
        <td>MOPEDCoverageEligibilityResponse</td>
        <td>.insurance.benefitPeriod.end</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>ENDE</td>
        <td>Fristende</td>
        <td>MOPEDCoverageEligibilityResponse</td>
        <td>.extension</td>
        <td>Fristende</td>
        <td></td>
    </tr>
    <tr>
        <td>VAEST</td>
        <td>Status der VAE</td>
        <td>MOPEDCoverageEligibilityResponse</td>
        <td>.extension</td>
        <td>VAEStatus</td>
        <td></td>
    </tr>
    <tr>
        <td>VKBEFR</td>
        <td>Verpflegskosten-Beitragsbefreiung</td>
        <td>MOPEDCoverageEligibilityResponse</td>
        <td>.extension</td>
        <td>MealCoVerpflegskostenBeitragsbefreiungstExcemption</td>
        <td></td>
    </tr>
    <tr>
        <td>VTAGE</td>
        <td>Vortageanzahl auf Kostenbeitrag</td>
        <td>MOPEDCoverageEligibilityResponse</td>
        <td>.extension</td>
        <td>NumberOfPreviouslyDaysPaid</td>
        <td></td>
    </tr>
</table>
</div>
### K05 -> FHIR
<div class="table-responsive">
<table>
    <tr>
        <td>E.6</td>
        <td></td>
        <td>Resource</td>
        <td>FHIRPath</td>
        <td>Extension</td>
        <td>Anmerkung</td>
    </tr>
    <tr>
        <td>K05 - Entlassungsanzeige; K06 - Storno Entlassungsanzeige	</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>SART</td>
        <td>Satzart</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>in neuer Architektur nicht mehr notwendig</td>
    </tr>
    <tr>
        <td>VPNR</td>
        <td>Vertragspartnernummer der Krankenanstalt</td>
        <td>HL7ATCoreOrganization</td>
        <td>.identifier:VPNR</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>AUFZL</td>
        <td>Aufnahmezahl</td>
        <td>MOPEDEncounter</td>
        <td>.identifier:Aufnahmezahl</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>FANU</td>
        <td>Fallnummer</td>
        <td>MOPEDAccount</td>
        <td>.extension</td>
        <td>.AnzahlBeurlaubungen</td>
        <td>Anzahl der Wiederaufnahmen nach Urlaub</td>
    </tr>
    <tr>
        <td>KOST</td>
        <td>Kostenträger (leistungszuständig)</td>
        <td>MOPEDAccount + MOPEDClaim</td>
        <td>MOPEDAccount.coverage.paymentBy.party:HL7ATCoreOrganization.identifier |MOPEDClaim.insurance.coverage:MOPEDCoverage.paymentBy.party</td>
        <td>payer</td>
        <td></td>
    </tr>
    <tr>
        <td>VSTR</td>
        <td>zuständiger Versicherungsträger</td>
        <td>MOPEDAccount + MOPEDClaim</td>
        <td>MOPEDAccount.coverage.insurer:Organization.identifier + MOPEDClaim.insurer:Organization.identifier</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>AUFN</td>
        <td>Aufnahme-/Ereignisdatum JJJJMMTT</td>
        <td>MOPEDEncounter</td>
        <td>.period.start</td>
        <td></td>
        <td>AUFN = AUFDAT; SV (erstes im Quartal mit der gleichen Aufnahmezahl)</td>
    </tr>
    <tr>
        <td>ENTL</td>
        <td>Entlassungsdatum JJJJMMTT</td>
        <td>MOPEDEncounter</td>
        <td>.period.end</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>KOMM</td>
        <td>Kommentarsatz</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>für den Identifikationsteil nicht notwendig: Entscheidung der MOPED Stakeholder</td>
    </tr>
    <tr>
        <td>VSNR</td>
        <td>Versicherungsnummer des Hauptversicherten</td>
        <td>HL7ATCorePatient</td>
        <td>identifier:socialSecurityNumber</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>ZUNA</td>
        <td>Zuname des Hauptversicherten</td>
        <td>HL7ATCorePatient</td>
        <td>.name.given</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>VONA</td>
        <td>Vorname des Hauptversicherten</td>
        <td>HL7ATCorePatient</td>
        <td>.name.family</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>GESCHL</td>
        <td>Geschlecht des Hauptversicherten</td>
        <td>HL7ATCorePatient</td>
        <td>.gender</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>GEBDAT</td>
        <td>Geburtsdatum des Hauptversicherten JJJJMMTT</td>
        <td>HL7ATCorePatient</td>
        <td>.birthDate</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>DSID</td>
        <td>Datensatz-ID</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>in neuer Architektur nicht mehr notwendig</td>
    </tr>
    <tr>
        <td>VGR</td>
        <td>Versichertengruppe/Kategorie</td>
        <td>SVCCoverage</td>
        <td>.class:Versichertenkategorien</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>AVSNR</td>
        <td>Versicherungsnummer des Mitversicherten</td>
        <td>HL7ATCorePatient</td>
        <td>identifier:socialSecurityNumber</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>AZUNA</td>
        <td>Zuname de Mitversicherten</td>
        <td>HL7ATCorePatient</td>
        <td>.name.family</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>AVONA</td>
        <td>Vorname de Mitversicherten</td>
        <td>HL7ATCorePatient</td>
        <td>.name.given</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>AGESCHL</td>
        <td>Geschlecht des Mitversicherten</td>
        <td>HL7ATCorePatient</td>
        <td>.gender</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>AGEBDAT</td>
        <td>Geburtsdatum des Mitversicherten JJJJMMTT</td>
        <td>HL7ATCorePatient</td>
        <td>.birthDate</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>FECO</td>
        <td>Fehlercode</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>in neuer Architektur nicht mehr notwendig  (Validierung gegen die Profile - Formalabweisung)</td>
    </tr>
    <tr>
        <td>DSIDR</td>
        <td>Datensatz-ID-Referenz</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>in neuer Architektur nicht mehr notwendig</td>
    </tr>
    <tr>
        <td>BKANR</td>
        <td>Krankenanstaltennummer des Bundesministeriums</td>
        <td>MOPEDAccount</td>
        <td>.owner:HL7ATCoreOrganization.identifier:GDA-OID</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>DVERS-ID</td>
        <td>Datensatzversion ID-Teil</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>in neuer Architektur nicht mehr notwendig</td>
    </tr>
    <tr>
        <td>DVERS-SA</td>
        <td>Datensatzversion Satzart-Teil</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>in neuer Architektur nicht mehr notwendig</td>
    </tr>
    <tr>
        <td>HDIAG</td>
        <td>Hauptdiagnose ICD 10 BMSGPK Schlüssel</td>
        <td>Condition</td>
        <td>.code</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>HDIAGU1</td>
        <td>Hauptdiagnose Untergliederung 1</td>
        <td>Condition</td>
        <td>.code</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>HDIAGU2</td>
        <td>Hauptdiagnose Untergliederung 2</td>
        <td>Condition</td>
        <td>.code</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>ZDIAG1</td>
        <td>Zusatzdiagnose 1, ICD 10 BMSGPK Schlüssel</td>
        <td>Condition</td>
        <td>.code</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>ZDIAGU1</td>
        <td>Zusatzdiagnose 1, Untergliederung 1</td>
        <td>Condition</td>
        <td>.code</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>ZDIAGU2</td>
        <td>Zusatzdiagnose 1, Untergliederung 2</td>
        <td>Condition</td>
        <td>.code</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>FREVER</td>
        <td>Fremdverschulden</td>
        <td>MOPEDAccount</td>
        <td>.extension</td>
        <td>VerdachtFremdverschulden</td>
        <td></td>
    </tr>
    <tr>
        <td>DAIG</td>
        <td>Hauptdiagnose im Klartext, entfällt bei Codierung</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>ab 2025 Codierung verpflichten</td>
    </tr>
    <tr>
        <td>URS</td>
        <td>Ursache der Behandlung</td>
        <td>MOPEDEncounter</td>
        <td>.reason</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>ENTBDAT</td>
        <td>Entbindungsdatum JJJJMMTT</td>
        <td>Observation</td>
        <td>TBD</td>
        <td>TBD</td>
        <td></td>
    </tr>
    <tr>
        <td>ENTGM</td>
        <td>Anzahl der Lebendgeburten, männliche Kinder</td>
        <td>Observation</td>
        <td>TBD</td>
        <td>TBD</td>
        <td></td>
    </tr>
    <tr>
        <td>ENTGW</td>
        <td>Anzahl der Lebendgeburten, weibliche Kinder</td>
        <td>Observation</td>
        <td>TBD</td>
        <td>TBD</td>
        <td></td>
    </tr>
    <tr>
        <td>ENTT</td>
        <td>Anzahl der Totgeburten</td>
        <td>Observation</td>
        <td>TBD</td>
        <td>TBD</td>
        <td></td>
    </tr>
    <tr>
        <td>ENTBART</td>
        <td>Art der Entbindung</td>
        <td>Observation</td>
        <td>TBD</td>
        <td>TBD</td>
        <td></td>
    </tr>
    <tr>
        <td>ENTS</td>
        <td>Entlassungsschlüssel</td>
        <td>MOPEDEncounter</td>
        <td>.admission.dischargeDisposition</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>AVDAT</td>
        <td>Aufnahme-, Verlegungsdatum JJJJMMTT</td>
        <td>TBD</td>
        <td>TBD</td>
        <td>TBD</td>
        <td></td>
    </tr>
    <tr>
        <td>VKLA</td>
        <td>Verlegung Klasse</td>
        <td>TBD</td>
        <td>TBD</td>
        <td>TBD</td>
        <td></td>
    </tr>
    <tr>
        <td>AI</td>
        <td>Avisio-Info</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>in neuer Architektur nicht mehr notwendig (über Encounter Status abgebildet)</td>
    </tr>
    <tr>
        <td>KABEFR</td>
        <td>Anzahl der Tage, für welche kein Kostenbeitrag seitens der Krankenanstalt eingehoben wurde</td>
        <td>MOPEDAccount</td>
        <td>.extension</td>
        <td>TageOhneKostenbeitrag</td>
        <td></td>
    </tr>
</table>
</div>
### K09 -> FHIR
<div class="table-responsive">
<table>
    <tr>
        <td>E.8</td>
        <td></td>
        <td>Resource</td>
        <td>FHIRPath</td>
        <td>Extension</td>
        <td>Anmerkung</td>
    </tr>
    <tr>
        <td>K09 - Kostenmeldung stationär RG/AV/KO; K10 - Storno Kostenmeldung stationär RG/AV/KO</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>SART</td>
        <td>Satzart</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>in neuer Architektur nicht mehr notwendig</td>
    </tr>
    <tr>
        <td>VPNR</td>
        <td>Vertragspartnernummer der Krankenanstalt</td>
        <td>HL7ATCoreOrganization</td>
        <td>.identifier:VPNR</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>AUFZL</td>
        <td>Aufnahmezahl</td>
        <td>MOPEDEncounter</td>
        <td>.identifier:Aufnahmezahl</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>FANU</td>
        <td>Fallnummer</td>
        <td>MOPEDAccount</td>
        <td>.extension</td>
        <td>.AnzahlBeurlaubungen</td>
        <td>Anzahl der Wiederaufnahmen nach Urlaub</td>
    </tr>
    <tr>
        <td>KOST</td>
        <td>Kostenträger (leistungszuständig)</td>
        <td>MOPEDAccount + MOPEDClaim</td>
        <td>MOPEDAccount.coverage.paymentBy.party:HL7ATCoreOrganization.identifier |MOPEDClaim.insurance.coverage:MOPEDCoverage.paymentBy.party</td>
        <td>payer</td>
        <td></td>
    </tr>
    <tr>
        <td>VSTR</td>
        <td>zuständiger Versicherungsträger</td>
        <td>MOPEDAccount + MOPEDClaim</td>
        <td>MOPEDAccount.coverage.insurer:Organization.identifier + MOPEDClaim.insurer:Organization.identifier</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>AUFN</td>
        <td>Aufnahme-/Ereignisdatum JJJJMMTT</td>
        <td>MOPEDEncounter</td>
        <td>.period.start</td>
        <td></td>
        <td>AUFN = AUFDAT; SV (erstes im Quartal mit der gleichen Aufnahmezahl)</td>
    </tr>
    <tr>
        <td>ENTL</td>
        <td>Entlassungsdatum JJJJMMTT</td>
        <td>MOPEDEncounter</td>
        <td>.period.end</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>AUFART</td>
        <td>Aufnahmeart</td>
        <td>MOPEDEncounter</td>
        <td>.admission.extension</td>
        <td>Zugangsart</td>
        <td></td>
    </tr>
    <tr>
        <td>ENTLART</td>
        <td>Entlassungsart</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>ENTLART = ENTS -> MOPEDEncounter.admission.dischargeDisposition</td>
    </tr>
    <tr>
        <td>KOMM</td>
        <td>Kommentarsatz</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>für den Identifikationsteil nicht notwendig: Entscheidung der MOPED Stakeholder</td>
    </tr>
    <tr>
        <td>VSNR</td>
        <td>Versicherungsnummer des Hauptversicherten</td>
        <td>HL7ATCorePatient</td>
        <td>identifier:socialSecurityNumber</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>GESL</td>
        <td>Geschlecht</td>
        <td>HL7ATCorePatient</td>
        <td>.gender</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>GEBDAT</td>
        <td>Geburtsdatum des Hauptversicherten JJJJMMTT</td>
        <td>HL7ATCorePatient</td>
        <td>.birthDate</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>DSID</td>
        <td>Datensatz-ID</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>in neuer Architektur nicht mehr notwendig</td>
    </tr>
    <tr>
        <td>VGR</td>
        <td>Versichertengruppe/Kategorie</td>
        <td>SVCCoverage</td>
        <td>.class:Versichertenkategorien</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>GEBDATA</td>
        <td>Geburtsdatum des Mitversicherten JJJJMMTT</td>
        <td>HL7ATCorePatient</td>
        <td>.birthDate</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>FECO</td>
        <td>Fehlercode</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>in neuer Architektur nicht mehr notwendig  (Validierung gegen die Profile - Formalabweisung)</td>
    </tr>
    <tr>
        <td>DSIDR</td>
        <td>Datensatz-ID-Referenz</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>in neuer Architektur nicht mehr notwendig</td>
    </tr>
    <tr>
        <td>BKANR</td>
        <td>Krankenanstaltennummer des Bundesministeriums</td>
        <td>MOPEDAccount</td>
        <td>.owner:HL7ATCoreOrganization.identifier:GDA-OID</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>DVERS-ID</td>
        <td>Datensatzversion ID-Teil</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>in neuer Architektur nicht mehr notwendig</td>
    </tr>
    <tr>
        <td>DVERS-SA</td>
        <td>Datensatzversion Satzart-Teil</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>in neuer Architektur nicht mehr notwendig</td>
    </tr>
    <tr>
        <td>STAATB</td>
        <td>Staatsbürgerschaft</td>
        <td>HL7ATCorePatient</td>
        <td>.extension</td>
        <td>citizenship</td>
        <td></td>
    </tr>
    <tr>
        <td>STAATW</td>
        <td>Hauptwohnsitz Staat</td>
        <td>HL7ATCorePatient</td>
        <td>address.country</td>
        <td>TBD</td>
        <td></td>
    </tr>
    <tr>
        <td>PLZLW</td>
        <td>Hauptwohnsitz Postleitzahl</td>
        <td>HL7ATCorePatient</td>
        <td>.address.postalCode</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>EBH</td>
        <td>Entbindungsheimpflegekennzeichen</td>
        <td>Observation</td>
        <td>TBD</td>
        <td>TBD</td>
        <td></td>
    </tr>
    <tr>
        <td>VERURL</td>
        <td>Urlaubstage im Verrechnungszeitraum</td>
        <td>Claim</td>
        <td>TBD</td>
        <td>TBD</td>
        <td></td>
    </tr>
    <tr>
        <td>SOND</td>
        <td>Sonderleistungsnummer</td>
        <td>MOPEDClaimResponse</td>
        <td>.extension</td>
        <td>Sonderleistungsnummer</td>
        <td></td>
    </tr>
    <tr>
        <td>SOANZ</td>
        <td>Anzahl Sonderleistung</td>
        <td>MOPEDClaimResponse</td>
        <td>.extension</td>
        <td>AnzahlSonderleistungen</td>
        <td></td>
    </tr>
    <tr>
        <td>KVAB</td>
        <td>Ablehnungsgrund für Leistungserbringung stationär</td>
        <td>MOPEDClaimResponse</td>
        <td>.adjudication.reason</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>QUAL</td>
        <td>Qualifier</td>
        <td>ClaimResponse</td>
        <td>TBD</td>
        <td>TBD</td>
        <td></td>
    </tr>
    <tr>
        <td>KOANF</td>
        <td>Kostenmeldung für (A/R/K)</td>
        <td>MOPEDClaimResponse</td>
        <td>.extension</td>
        <td>KostenmeldungARK</td>
        <td></td>
    </tr>
    <tr>
        <td>LDFGRP</td>
        <td>LDF-Gruppe Teil1</td>
        <td>MOPEDClaim & MOPEDClaimResponse</td>
        <td>.diagnosisRelatedGroup</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>LDFKNT</td>
        <td>LDF-Gruppe Teil2</td>
        <td>MOPEDClaim & MOPEDClaimResponse</td>
        <td>.extension</td>
        <td>diagnoseKnoten</td>
        <td></td>
    </tr>
    <tr>
        <td>LDFPP</td>
        <td>Punkte LDF-Pauschale</td>
        <td>MOPEDClaimResponse</td>
        <td>.extension</td>
        <td>PunkteLDFPauschale</td>
        <td></td>
    </tr>
    <tr>
        <td>VDU</td>
        <td>Punkte Verweildauerausreißer unten</td>
        <td>MOPEDClaim & MOPEDClaimResponse</td>
        <td>.extension</td>
        <td>PunkteBelagsdauerausreisseruntenLeistungskomponente</td>
        <td></td>
    </tr>
    <tr>
        <td>VDO</td>
        <td>Zusatzpunkte Verweildauerausreißer oben</td>
        <td>MOPEDClaim & MOPEDClaimResponse</td>
        <td>.extension</td>
        <td>ZusatzpunkteBelagsdauerausreisserNachOben</td>
        <td></td>
    </tr>
    <tr>
        <td>ZUINT</td>
        <td>Zusatzpunkte Intensiv</td>
        <td>MOPEDClaim & MOPEDClaimResponse</td>
        <td>.extension</td>
        <td>ZusatzpunkteIntensiv</td>
        <td></td>
    </tr>
    <tr>
        <td>ZUMEHR</td>
        <td>Zusatzpunkte Mehrleistungen</td>
        <td>MOPEDClaim & MOPEDClaimResponse</td>
        <td>.extension</td>
        <td>ZusatzpunkteMehrfachleistungen</td>
        <td></td>
    </tr>
    <tr>
        <td>PSPEZ</td>
        <td>Punkte spezieller Bereich</td>
        <td>MOPEDClaim & MOPEDClaimResponse</td>
        <td>.extension</td>
        <td>PunkteSpeziellerBereicheTageweise</td>
        <td></td>
    </tr>
    <tr>
        <td>PTOT</td>
        <td>Punkte total</td>
        <td>MOPEDClaim & MOPEDClaimResponse</td>
        <td>.extension</td>
        <td>TotalPoints</td>
        <td></td>
    </tr>
    <tr>
        <td>LDFFAK</td>
        <td>LDF-Punktewert Netto</td>
        <td>MOPEDClaimResponse</td>
        <td>.extension</td>
        <td>LDFPunktewertNetto</td>
        <td></td>
    </tr>
    <tr>
        <td>LDFBET</td>
        <td>LDF-Betrag Netto</td>
        <td>MOPEDClaimResponse</td>
        <td>.extension</td>
        <td>LDFBetragNetto</td>
        <td></td>
    </tr>
    <tr>
        <td>VERSATZ</td>
        <td>Patientenanteil für Angehörige (tägl. Satz) netto</td>
        <td>MOPEDClaimResponse</td>
        <td>.extension</td>
        <td>PatientenanteilAngehoerige</td>
        <td></td>
    </tr>
    <tr>
        <td>VERPA</td>
        <td>Patientenanteil netto</td>
        <td>MOPEDClaimResponse</td>
        <td>.extension</td>
        <td>Patientenanteil </td>
        <td></td>
    </tr>
    <tr>
        <td>BEIH</td>
        <td>Beihilfenäquivalent</td>
        <td>MOPEDClaimResponse</td>
        <td>.extension</td>
        <td>Beihilfenaequivalent</td>
        <td></td>
    </tr>
    <tr>
        <td>FORDAV</td>
        <td>Forderungsbetrag für Ausländerverrechnung</td>
        <td>MOPEDClaimResponse</td>
        <td>.extension</td>
        <td>ForderungsbetragAuslaenderverrechnungRegress</td>
        <td></td>
    </tr>
    <tr>
        <td>FORDRG</td>
        <td>Forderungsbetrag für den Regress</td>
        <td>MOPEDClaimResponse</td>
        <td>.extension</td>
        <td>ForderungsbetragAuslaenderverrechnungRegress</td>
        <td></td>
    </tr>
    <tr>
        <td>RUE</td>
        <td>K21 Ausländerverrechnung/Regresse - Rückmeldung</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>in neuer Architektur nicht notwendig (Notifications)</td>
    </tr>
    <tr>
        <td>RENR</td>
        <td>RENR</td>
        <td>MOPEDClaimResponse</td>
        <td>.extension</td>
        <td>RechnungsnummerKHLGF</td>
        <td></td>
    </tr>
</table>
</div>
### K20 -> FHIR
<div class="table-responsive">
<table>
    <tr>
        <td>E.9</td>
        <td></td>
        <td>Resource</td>
        <td>FHIRPath</td>
        <td>Extension</td>
        <td>Anmerkung</td>
    </tr>
    <tr>
        <td>K20 - Kostenmeldungsanforderung</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>SART</td>
        <td>Satzart</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>in neuer Architektur nicht mehr notwendig</td>
    </tr>
    <tr>
        <td>VPNR</td>
        <td>Vertragspartnernummer der Krankenanstalt</td>
        <td>HL7ATCoreOrganization</td>
        <td>.identifier:VPNR</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>AUFZL</td>
        <td>Aufnahmezahl</td>
        <td>MOPEDEncounter</td>
        <td>.identifier:Aufnahmezahl</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>FANU</td>
        <td>Fallnummer</td>
        <td>MOPEDAccount</td>
        <td>.extension</td>
        <td>.AnzahlBeurlaubungen</td>
        <td>Anzahl der Wiederaufnahmen nach Urlaub</td>
    </tr>
    <tr>
        <td>KOST</td>
        <td>Kostenträger (leistungszuständig)</td>
        <td>MOPEDAccount + MOPEDClaim</td>
        <td>MOPEDAccount.coverage.paymentBy.party:HL7ATCoreOrganization.identifier |MOPEDClaim.insurance.coverage:MOPEDCoverage.paymentBy.party</td>
        <td>payer</td>
        <td></td>
    </tr>
    <tr>
        <td>VSTR</td>
        <td>zuständiger Versicherungsträger</td>
        <td>MOPEDAccount + MOPEDClaim</td>
        <td>MOPEDAccount.coverage.insurer:Organization.identifier + MOPEDClaim.insurer:Organization.identifier</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>AUFN</td>
        <td>Aufnahme-/Ereignisdatum JJJJMMTT</td>
        <td>MOPEDEncounter</td>
        <td>.period.start</td>
        <td></td>
        <td>AUFN = AUFDAT; SV (erstes im Quartal mit der gleichen Aufnahmezahl)</td>
    </tr>
    <tr>
        <td>ENTL</td>
        <td>Entlassungsdatum JJJJMMTT</td>
        <td>MOPEDEncounter</td>
        <td>.period.end</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>KOMM</td>
        <td>Kommentarsatz</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>für den Identifikationsteil nicht notwendig: Entscheidung der MOPED Stakeholder</td>
    </tr>
    <tr>
        <td>GEVDAT</td>
        <td>Geburtsdatum des Hauptversicherten JJJJMMTT</td>
        <td>HL7ATCorePatient</td>
        <td>.birthDate</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>DSID</td>
        <td>Datensatz-ID</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>in neuer Architektur nicht mehr notwendig</td>
    </tr>
    <tr>
        <td>GEBDATA</td>
        <td>Geburtsdatum des Mitversicherten JJJJMMTT</td>
        <td>HL7ATCorePatient</td>
        <td>.birthDate</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>FECO</td>
        <td>Fehlercode</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>in neuer Architektur nicht mehr notwendig  (Validierung gegen die Profile - Formalabweisung)</td>
    </tr>
    <tr>
        <td>DSIDR</td>
        <td>Datensatz-ID Referenz</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>in neuer Architektur nicht mehr notwendig</td>
    </tr>
    <tr>
        <td>BKANR</td>
        <td>Krankenanstaltennummer des Bundesministeriums</td>
        <td>MOPEDAccount</td>
        <td>.owner:HL7ATCoreOrganization.identifier:GDA-OID</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>DVERS-ID</td>
        <td>Datensatzversion ID-Teil, Versionsnummer vom ID-Teil</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>in neuer Architektur nicht mehr notwendig</td>
    </tr>
    <tr>
        <td>DVERS-SA</td>
        <td>Datensatzversion Satzart-Teil, Versionsnummer vom Satzart-Teil</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>in neuer Architektur nicht mehr notwendig</td>
    </tr>
    <tr>
        <td>AUFKZ</td>
        <td>Aufenthaltsartkennzeichen</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>in neuer Architektur nicht mehr notwendig: kann abgeleitet werden aus AUFART(KaOrg)/Zugangsart oder AUFART2(LKF)/Aufnahmeart</td>
    </tr>
    <tr>
        <td>KOANF</td>
        <td>Kostenmeldung für</td>
        <td>MOPEDClaimResponse</td>
        <td>.extension</td>
        <td>KostenmeldungARK</td>
        <td></td>
    </tr>
</table>
</div>
### K12 -> FHIR
<div class="table-responsive">
<table>
    <tr>
        <td>E.10</td>
        <td></td>
        <td>Resource</td>
        <td>FHIRPath</td>
        <td>Extension</td>
        <td>Anmerkung</td>
    </tr>
    <tr>
        <td>K12 - Kommentar</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>SART</td>
        <td>Satzart</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>in neuer Architektur nicht mehr notwendig</td>
    </tr>
    <tr>
        <td>VPNR</td>
        <td>Vertragspartnernummer der Krankenanstalt</td>
        <td>HL7ATCoreOrganization</td>
        <td>.identifier:VPNR</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>AUFZL</td>
        <td>Aufnahmezahl</td>
        <td>MOPEDEncounter</td>
        <td>.identifier:Aufnahmezahl</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>FANU</td>
        <td>Fallnummer</td>
        <td>MOPEDAccount</td>
        <td>.extension</td>
        <td>.AnzahlBeurlaubungen</td>
        <td>Anzahl der Wiederaufnahmen nach Urlaub</td>
    </tr>
    <tr>
        <td>KOST</td>
        <td>Kostenträger (leistungszuständig)</td>
        <td>MOPEDAccount + MOPEDClaim</td>
        <td>MOPEDAccount.coverage.paymentBy.party:HL7ATCoreOrganization.identifier |MOPEDClaim.insurance.coverage:MOPEDCoverage.paymentBy.party</td>
        <td>payer</td>
        <td></td>
    </tr>
    <tr>
        <td>VSTR</td>
        <td>zuständiger Versicherungsträger</td>
        <td>MOPEDAccount + MOPEDClaim</td>
        <td>MOPEDAccount.coverage.insurer:Organization.identifier + MOPEDClaim.insurer:Organization.identifier</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>AUFN</td>
        <td>Aufnahme-/Ereignisdatum JJJJMMTT</td>
        <td>MOPEDEncounter</td>
        <td>.period.start</td>
        <td></td>
        <td>AUFN = AUFDAT; SV (erstes im Quartal mit der gleichen Aufnahmezahl)</td>
    </tr>
    <tr>
        <td>ENTL</td>
        <td>Entlassungsdatum JJJJMMTT</td>
        <td>MOPEDEncounter</td>
        <td>.period.end</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>KOMM</td>
        <td>Kommentarsatz</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>für den Identifikationsteil nicht notwendig: Entscheidung der MOPED Stakeholder</td>
    </tr>
    <tr>
        <td>VSNR</td>
        <td>Versicherungsnummer des Hauptversicherten</td>
        <td>HL7ATCorePatient</td>
        <td>identifier:socialSecurityNumber</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>ZUNA</td>
        <td>Zuname des Hauptversicherten</td>
        <td>HL7ATCorePatient</td>
        <td>.name.given</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>VONA</td>
        <td>Vorname des Hauptversicherten</td>
        <td>HL7ATCorePatient</td>
        <td>.name.family</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>GESCHL</td>
        <td>Geschlecht des Hauptversicherten</td>
        <td>HL7ATCorePatient</td>
        <td>.gender</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>GEBDAT</td>
        <td>Geburtsdatum des Hauptversicherten JJJJMMTT</td>
        <td>HL7ATCorePatient</td>
        <td>.birthDate</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>DSID</td>
        <td>Datensatz-ID</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>in neuer Architektur nicht mehr notwendig</td>
    </tr>
    <tr>
        <td>VGR</td>
        <td>Versichertengruppe/Kategorie</td>
        <td>SVCCoverage</td>
        <td>.class:Versichertenkategorien</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>AVSNR</td>
        <td>Versicherungsnummer des Mitversicherten</td>
        <td>HL7ATCorePatient</td>
        <td>identifier:socialSecurityNumber</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>AZUNA</td>
        <td>Zuname de Mitversicherten</td>
        <td>HL7ATCorePatient</td>
        <td>.name.family</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>AVONA</td>
        <td>Vorname de Mitversicherten</td>
        <td>HL7ATCorePatient</td>
        <td>.name.given</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>AGESCHL</td>
        <td>Geschlecht des Mitversicherten</td>
        <td>HL7ATCorePatient</td>
        <td>.gender</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>AGEBDAT</td>
        <td>Geburtsdatum des Mitversicherten JJJJMMTT</td>
        <td>HL7ATCorePatient</td>
        <td>.birthDate</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>FECO</td>
        <td>Fehlercode</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>in neuer Architektur nicht mehr notwendig  (Validierung gegen die Profile - Formalabweisung)</td>
    </tr>
    <tr>
        <td>DSIDR</td>
        <td>Datensatz-ID-Referenz</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>in neuer Architektur nicht mehr notwendig</td>
    </tr>
    <tr>
        <td>BKANR</td>
        <td>Krankenanstaltennummer des Bundesministeriums</td>
        <td>MOPEDAccount</td>
        <td>.owner:HL7ATCoreOrganization.identifier:GDA-OID</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>DVERS-ID</td>
        <td>Datensatzversion ID-Teil</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>in neuer Architektur nicht mehr notwendig</td>
    </tr>
    <tr>
        <td>DVERS-SA</td>
        <td>Datensatzversion Satzart-Teil</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>in neuer Architektur nicht mehr notwendig</td>
    </tr>
    <tr>
        <td>ZEILNR</td>
        <td>Zeilennummer</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>in neuer Architektur nicht mehr notwendig</td>
    </tr>
    <tr>
        <td>TEXT1</td>
        <td>Kommentartext</td>
        <td>ClaimResponse</td>
        <td>.extension</td>
        <td>comments</td>
        <td></td>
    </tr>
    <tr>
        <td>TEXT2</td>
        <td>Kommentartext</td>
        <td>ClaimResponse</td>
        <td>.extension</td>
        <td>comments</td>
        <td></td>
    </tr>
    <tr>
        <td>TEXT3</td>
        <td>Kommentartext</td>
        <td>ClaimResponse</td>
        <td>.extension</td>
        <td>comments</td>
        <td></td>
    </tr>
    <tr>
        <td>TEXT4</td>
        <td>Kommentartext</td>
        <td>ClaimResponse</td>
        <td>.extension</td>
        <td>comments</td>
        <td></td>
    </tr>
</table>
</div>
### K13 -> FHIR
<div class="table-responsive">
<table>
    <tr>
        <td>E.11</td>
        <td></td>
        <td>Resource</td>
        <td>FHIRPath</td>
        <td>Extension</td>
        <td>Anmerkung</td>
    </tr>
    <tr>
        <td>K13 - Leistungsdaten ambulant; K14 - Storno Leistungsdaten ambulant	</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>SART</td>
        <td>Satzart</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>in neuer Architektur nicht mehr notwendig</td>
    </tr>
    <tr>
        <td>VPNR</td>
        <td>Vertragspartnernummer der Krankenanstalt</td>
        <td>HL7ATCoreOrganization</td>
        <td>.identifier:VPNR</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>AUFZL</td>
        <td>Aufnahmezahl</td>
        <td>MOPEDEncounter</td>
        <td>.identifier:Aufnahmezahl</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>FANU</td>
        <td>Fallnummer</td>
        <td>MOPEDAccount</td>
        <td>.extension</td>
        <td>.AnzahlBeurlaubungen</td>
        <td>Anzahl der Wiederaufnahmen nach Urlaub</td>
    </tr>
    <tr>
        <td>KOST</td>
        <td>Kostenträger (leistungszuständig)</td>
        <td>MOPEDAccount + MOPEDClaim</td>
        <td>MOPEDAccount.coverage.paymentBy.party:HL7ATCoreOrganization.identifier |MOPEDClaim.insurance.coverage:MOPEDCoverage.paymentBy.party</td>
        <td>payer</td>
        <td></td>
    </tr>
    <tr>
        <td>VSTR</td>
        <td>zuständiger Versicherungsträger</td>
        <td>MOPEDAccount + MOPEDClaim</td>
        <td>MOPEDAccount.coverage.insurer:Organization.identifier + MOPEDClaim.insurer:Organization.identifier</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>AUFN</td>
        <td>Aufnahme-/Ereignisdatum JJJJMMTT</td>
        <td>MOPEDEncounter</td>
        <td>.period.start</td>
        <td></td>
        <td>AUFN = AUFDAT; SV (erstes im Quartal mit der gleichen Aufnahmezahl)</td>
    </tr>
    <tr>
        <td>ENTL</td>
        <td>Entlassungsdatum JJJJMMTT</td>
        <td>MOPEDEncounter</td>
        <td>.period.end</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>KOMM</td>
        <td>Kommentarsatz</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>für den Identifikationsteil nicht notwendig: Entscheidung der MOPED Stakeholder</td>
    </tr>
    <tr>
        <td>GEVDAT</td>
        <td>Geburtsdatum des Hauptversicherten JJJJMMTT</td>
        <td>HL7ATCorePatient</td>
        <td>.birthDate</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>DSID</td>
        <td>Datensatz-ID</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>in neuer Architektur nicht mehr notwendig</td>
    </tr>
    <tr>
        <td>GEBDATA</td>
        <td>Geburtsdatum des Mitversicherten JJJJMMTT</td>
        <td>HL7ATCorePatient</td>
        <td>.birthDate</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>FECO</td>
        <td>Fehlercode</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>in neuer Architektur nicht mehr notwendig  (Validierung gegen die Profile - Formalabweisung)</td>
    </tr>
    <tr>
        <td>DSIDR</td>
        <td>Datensatz-ID Referenz</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>in neuer Architektur nicht mehr notwendig</td>
    </tr>
    <tr>
        <td>BKANR</td>
        <td>Krankenanstaltennummer des Bundesministeriums</td>
        <td>MOPEDAccount</td>
        <td>.owner:HL7ATCoreOrganization.identifier:GDA-OID</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>DVERS-ID</td>
        <td>Datensatzversion ID-Teil, Versionsnummer vom ID-Teil</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>in neuer Architektur nicht mehr notwendig</td>
    </tr>
    <tr>
        <td>DVERS-SA</td>
        <td>Datensatzversion Satzart-Teil, Versionsnummer vom Satzart-Teil</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>in neuer Architektur nicht mehr notwendig</td>
    </tr>
    <tr>
        <td>FKRA</td>
        <td>Abteilung - Funktionscode der Ambulanz</td>
        <td>MOPEDOrganizationAbteilung</td>
        <td>.identifier:Funktionscode</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>FKRASU</td>
        <td>Abteilung - Subcode</td>
        <td>MOPEDOrganizationAbteilung</td>
        <td>.identifier:Funktionssubcode</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>BDAT</td>
        <td>Behandlungsdatum JJJJMMTT</td>
        <td>MOPEDEncounter</td>
        <td>.period.start</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>KOANF</td>
        <td>Kostenmeldung</td>
        <td>MOPEDClaimResponse</td>
        <td>.extension</td>
        <td>KostenmeldungARK</td>
        <td></td>
    </tr>
    <tr>
        <td>LDFGRP</td>
        <td>LDF-Gruppe 1</td>
        <td>MOPEDClaim & MOPEDClaimResponse</td>
        <td>.diagnosisRelatedGroup</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>LDFKNR</td>
        <td>LDF-Gruppe 2</td>
        <td>MOPEDClaim & MOPEDClaimResponse</td>
        <td>.extension</td>
        <td>diagnoseKnoten</td>
        <td></td>
    </tr>
    <tr>
        <td> PTOT</td>
        <td>Punkte Total</td>
        <td>MOPEDClaim & MOPEDClaimResponse</td>
        <td>.extension</td>
        <td>TotalPoints</td>
        <td></td>
    </tr>
    <tr>
        <td>LDFFAK</td>
        <td>LDF-Punktewert netto</td>
        <td>MOPEDClaimResponse</td>
        <td>.extension</td>
        <td>LDFPunktewertNetto</td>
        <td></td>
    </tr>
    <tr>
        <td>LDFBET</td>
        <td>LDF-Betrag Netto</td>
        <td>MOPEDClaimResponse</td>
        <td>.extension</td>
        <td>LDFBetragNetto</td>
        <td></td>
    </tr>
    <tr>
        <td>BEIH</td>
        <td>Beihilfenäquivalent</td>
        <td>MOPEDClaimResponse</td>
        <td>.extension</td>
        <td>Beihilfenaequivalent</td>
        <td></td>
    </tr>
    <tr>
        <td>FORDAV</td>
        <td>Forderungsbetrag für Ausländerverrechnung</td>
        <td>MOPEDClaimResponse</td>
        <td>.extension</td>
        <td>ForderungsbetragAuslaenderverrechnungRegress</td>
        <td></td>
    </tr>
    <tr>
        <td>FORDRG</td>
        <td>Forderungsbetrag für den Regress</td>
        <td>MOPEDClaimResponse</td>
        <td>.extension</td>
        <td>ForderungsbetragAuslaenderverrechnungRegress</td>
        <td></td>
    </tr>
    <tr>
        <td>ABTFC_LP</td>
        <td>Leistungspunkte</td>
        <td>MOPEDClaim & MOPEDClaimResponse</td>
        <td>.extension</td>
        <td>LeistungskomponenteLeistungspunkte</td>
        <td></td>
    </tr>
    <tr>
        <td>ABTFC_KP</td>
        <td>Kontaktpunkte</td>
        <td>MOPEDClaim & MOPEDClaimResponse</td>
        <td>.extension</td>
        <td>TageskomponenteKontaktpunkte</td>
        <td></td>
    </tr>
</table>
</div>
### K21 -> FHIR
<div class="table-responsive">
<table>
    <tr>
        <td>E.13</td>
        <td></td>
        <td>Resource</td>
        <td>FHIRPath</td>
        <td>Extension</td>
        <td>Anmerkung</td>
    </tr>
    <tr>
        <td>K21 - Rückmeldung Ausländerverrechnung/Regresse; K22 - Storno Rückmeldung Ausländerverrechnung/Regresse</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>SART</td>
        <td>Satzart</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>in neuer Architektur nicht mehr notwendig</td>
    </tr>
    <tr>
        <td>VPNR</td>
        <td>Vertragspartnernummer der Krankenanstalt</td>
        <td>HL7ATCoreOrganization</td>
        <td>.identifier:VPNR</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>AUFZL</td>
        <td>Aufnahmezahl</td>
        <td>MOPEDEncounter</td>
        <td>.identifier:Aufnahmezahl</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>FANU</td>
        <td>Fallnummer</td>
        <td>MOPEDAccount</td>
        <td>.extension</td>
        <td>.AnzahlBeurlaubungen</td>
        <td>Anzahl der Wiederaufnahmen nach Urlaub</td>
    </tr>
    <tr>
        <td>KOST</td>
        <td>Kostenträger (leistungszuständig)</td>
        <td>MOPEDAccount + MOPEDClaim</td>
        <td>MOPEDAccount.coverage.paymentBy.party:HL7ATCoreOrganization.identifier |MOPEDClaim.insurance.coverage:MOPEDCoverage.paymentBy.party</td>
        <td>payer</td>
        <td></td>
    </tr>
    <tr>
        <td>VSTR</td>
        <td>zuständiger Versicherungsträger</td>
        <td>MOPEDAccount + MOPEDClaim</td>
        <td>MOPEDAccount.coverage.insurer:Organization.identifier + MOPEDClaim.insurer:Organization.identifier</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>AUFN</td>
        <td>Aufnahme-/Ereignisdatum JJJJMMTT</td>
        <td>MOPEDEncounter</td>
        <td>.period.start</td>
        <td></td>
        <td>AUFN = AUFDAT; SV (erstes im Quartal mit der gleichen Aufnahmezahl)</td>
    </tr>
    <tr>
        <td>ENTL</td>
        <td>Entlassungsdatum JJJJMMTT</td>
        <td>MOPEDEncounter</td>
        <td>.period.end</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>KOMM</td>
        <td>Kommentarsatz</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>für den Identifikationsteil nicht notwendig: Entscheidung der MOPED Stakeholder</td>
    </tr>
    <tr>
        <td>GEVDAT</td>
        <td>Geburtsdatum des Hauptversicherten JJJJMMTT</td>
        <td>HL7ATCorePatient</td>
        <td>.birthDate</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>DSID</td>
        <td>Datensatz-ID</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>in neuer Architektur nicht mehr notwendig</td>
    </tr>
    <tr>
        <td>GEBDATA</td>
        <td>Geburtsdatum des Mitversicherten JJJJMMTT</td>
        <td>HL7ATCorePatient</td>
        <td>.birthDate</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>FECO</td>
        <td>Fehlercode</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>in neuer Architektur nicht mehr notwendig  (Validierung gegen die Profile - Formalabweisung)</td>
    </tr>
    <tr>
        <td>DSIDR</td>
        <td>Datensatz-ID Referenz</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>in neuer Architektur nicht mehr notwendig</td>
    </tr>
    <tr>
        <td>BKANR</td>
        <td>Krankenanstaltennummer des Bundesministeriums</td>
        <td>MOPEDAccount</td>
        <td>.owner:HL7ATCoreOrganization.identifier:GDA-OID</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>DVERS-ID</td>
        <td>Datensatzversion ID-Teil, Versionsnummer vom ID-Teil</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>in neuer Architektur nicht mehr notwendig</td>
    </tr>
    <tr>
        <td>DVERS-SA</td>
        <td>Datensatzversion Satzart-Teil, Versionsnummer vom Satzart-Teil</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>in neuer Architektur nicht mehr notwendig</td>
    </tr>
    <tr>
        <td>KOANF</td>
        <td>Kostenmeldung</td>
        <td>MOPEDClaimResponse</td>
        <td>.extension</td>
        <td>KostenmeldungARK</td>
        <td></td>
    </tr>
    <tr>
        <td>LDFBET</td>
        <td>LDF-Betrag Netto</td>
        <td>MOPEDClaimResponse</td>
        <td>.extension</td>
        <td>LDFBetragNetto</td>
        <td></td>
    </tr>
    <tr>
        <td>VERSATZ</td>
        <td>Patientenanteil für Angehörige</td>
        <td>MOPEDClaimResponse</td>
        <td>.extension</td>
        <td>PatientenanteilAngehoerige</td>
        <td></td>
    </tr>
    <tr>
        <td>VERPA</td>
        <td>Patientenanteil </td>
        <td>MOPEDClaimResponse</td>
        <td>.extension</td>
        <td>Patientenanteil </td>
        <td></td>
    </tr>
    <tr>
        <td>ZKZ</td>
        <td>Zahlungskennzeichen Regress</td>
        <td>ClaimResponse</td>
        <td>TBD</td>
        <td>TBD</td>
        <td></td>
    </tr>
    <tr>
        <td>BETRAV</td>
        <td>Betrag Ausländerverrechnung</td>
        <td>ClaimResponse</td>
        <td>TBD</td>
        <td>TBD</td>
        <td></td>
    </tr>
    <tr>
        <td>BETRRG</td>
        <td>Betrag Regress</td>
        <td>ClaimResponse</td>
        <td>TBD</td>
        <td>TBD</td>
        <td></td>
    </tr>
    <tr>
        <td>RENR</td>
        <td>Rechnungsnummer</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>nicht notwendig: Entscheidung der MOPED Stakeholder</td>
    </tr>
    <tr>
        <td>ART</td>
        <td>Abrechnungsart Ausländerverrechnung</td>
        <td>ClaimResponse</td>
        <td>TBD</td>
        <td>TBD</td>
        <td></td>
    </tr>
    <tr>
        <td>PROZ</td>
        <td>Prozentsatz der Zahlung</td>
        <td>ClaimResponse</td>
        <td>TBD</td>
        <td>TBD</td>
        <td></td>
    </tr>
    <tr>
        <td>SCHEIN</td>
        <td>Betreuungsschein bei Ausländerverrechnung</td>
        <td>ClaimResponse</td>
        <td>TBD</td>
        <td>TBD</td>
        <td></td>
    </tr>
    <tr>
        <td>LAND</td>
        <td>Landescode</td>
        <td>ClaimResponse</td>
        <td>TBD</td>
        <td>TBD</td>
        <td></td>
    </tr>
    <tr>
        <td>GRUND</td>
        <td>Grund, warum keine Zahlung erfolgte</td>
        <td>ClaimResponse</td>
        <td>TBD</td>
        <td>TBD</td>
        <td></td>
    </tr>
    <tr>
        <td>FREMDRE</td>
        <td>Rechnungsnummer der zwischenstaatlichen Abrechnung</td>
        <td>ClaimResponse</td>
        <td>TBD</td>
        <td>TBD</td>
        <td></td>
    </tr>
    <tr>
        <td>ELBNR</td>
        <td>Roderungsnummer der ÖGK</td>
        <td>ClaimResponse</td>
        <td>TBD</td>
        <td>TBD</td>
        <td></td>
    </tr>
    <tr>
        <td>ASVT</td>
        <td>Bezeichnung des ausländischen SV-Trägers</td>
        <td>TBD Organization</td>
        <td>TBD</td>
        <td>TBD</td>
        <td></td>
    </tr>
</table>
</div>
### K27 -> FHIR
<div class="table-responsive">
<table>
    <tr>
        <td>E.15</td>
        <td></td>
        <td>Resource</td>
        <td>FHIRPath</td>
        <td>Extension</td>
        <td>Anmerkung</td>
    </tr>
    <tr>
        <td>K27 - EKVK-Datenmeldung (nur an ÖGK)</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>SART</td>
        <td>Satzart</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>in neuer Architektur nicht mehr notwendig</td>
    </tr>
    <tr>
        <td>VPNR</td>
        <td>Vertragspartnernummer der Krankenanstalt</td>
        <td>HL7ATCoreOrganization</td>
        <td>.identifier:VPNR</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>AUFZL</td>
        <td>Aufnahmezahl</td>
        <td>MOPEDEncounter</td>
        <td>.identifier:Aufnahmezahl</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>FANU</td>
        <td>Fallnummer</td>
        <td>MOPEDAccount</td>
        <td>.extension</td>
        <td>.AnzahlBeurlaubungen</td>
        <td>Anzahl der Wiederaufnahmen nach Urlaub</td>
    </tr>
    <tr>
        <td>KOST</td>
        <td>Kostenträger (leistungszuständig)</td>
        <td>MOPEDAccount + MOPEDClaim</td>
        <td>MOPEDAccount.coverage.paymentBy.party:HL7ATCoreOrganization.identifier |MOPEDClaim.insurance.coverage:MOPEDCoverage.paymentBy.party</td>
        <td>payer</td>
        <td></td>
    </tr>
    <tr>
        <td>VSTR</td>
        <td>zuständiger Versicherungsträger</td>
        <td>MOPEDAccount + MOPEDClaim</td>
        <td>MOPEDAccount.coverage.insurer:Organization.identifier + MOPEDClaim.insurer:Organization.identifier</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>AUFN</td>
        <td>Aufnahme-/Ereignisdatum JJJJMMTT</td>
        <td>MOPEDEncounter</td>
        <td>.period.start</td>
        <td></td>
        <td>AUFN = AUFDAT; SV (erstes im Quartal mit der gleichen Aufnahmezahl)</td>
    </tr>
    <tr>
        <td>ENTL</td>
        <td>Entlassungsdatum JJJJMMTT</td>
        <td>MOPEDEncounter</td>
        <td>.period.end</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>KOMM</td>
        <td>Kommentarsatz</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>für den Identifikationsteil nicht notwendig: Entscheidung der MOPED Stakeholder</td>
    </tr>
    <tr>
        <td>VSNR</td>
        <td>Versicherungsnummer des Hauptversicherten</td>
        <td>HL7ATCorePatient</td>
        <td>identifier:socialSecurityNumber</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>ZUNA</td>
        <td>Zuname des Hauptversicherten</td>
        <td>HL7ATCorePatient</td>
        <td>.name.given</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>VONA</td>
        <td>Vorname des Hauptversicherten</td>
        <td>HL7ATCorePatient</td>
        <td>.name.family</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>GESCHL</td>
        <td>Geschlecht des Hauptversicherten</td>
        <td>HL7ATCorePatient</td>
        <td>.gender</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>GEBDAT</td>
        <td>Geburtsdatum des Hauptversicherten JJJJMMTT</td>
        <td>HL7ATCorePatient</td>
        <td>.birthDate</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>DSID</td>
        <td>Datensatz-ID</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>in neuer Architektur nicht mehr notwendig</td>
    </tr>
    <tr>
        <td>VGR</td>
        <td>Versichertengruppe/Kategorie</td>
        <td>SVCCoverage</td>
        <td>.class:Versichertenkategorien</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>AVSNR</td>
        <td>Versicherungsnummer des Mitversicherten</td>
        <td>HL7ATCorePatient</td>
        <td>identifier:socialSecurityNumber</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>AZUNA</td>
        <td>Zuname de Mitversicherten</td>
        <td>HL7ATCorePatient</td>
        <td>.name.family</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>AVONA</td>
        <td>Vorname de Mitversicherten</td>
        <td>HL7ATCorePatient</td>
        <td>.name.given</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>AGESCHL</td>
        <td>Geschlecht des Mitversicherten</td>
        <td>HL7ATCorePatient</td>
        <td>.gender</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>AGEBDAT</td>
        <td>Geburtsdatum des Mitversicherten JJJJMMTT</td>
        <td>HL7ATCorePatient</td>
        <td>.birthDate</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>FECO</td>
        <td>Fehlercode</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>in neuer Architektur nicht mehr notwendig  (Validierung gegen die Profile - Formalabweisung)</td>
    </tr>
    <tr>
        <td>DSIDR</td>
        <td>Datensatz-ID-Referenz</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>in neuer Architektur nicht mehr notwendig</td>
    </tr>
    <tr>
        <td>BKANR</td>
        <td>Krankenanstaltennummer des Bundesministeriums</td>
        <td>MOPEDAccount</td>
        <td>.owner:HL7ATCoreOrganization.identifier:GDA-OID</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>DVERS-ID</td>
        <td>Datensatzversion ID-Teil</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>in neuer Architektur nicht mehr notwendig</td>
    </tr>
    <tr>
        <td>DVERS-SA</td>
        <td>Datensatzversion Satzart-Teil</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
        <td>in neuer Architektur nicht mehr notwendig</td>
    </tr>
    <tr>
        <td>EVSNR</td>
        <td>EWR-Versicherungsnummer des Patienten</td>
        <td>Patient</td>
        <td>TBD</td>
        <td>TBD</td>
        <td></td>
    </tr>
    <tr>
        <td>EZUNA</td>
        <td>Zuname</td>
        <td>HL7ATCorePatient</td>
        <td>.name.family</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>EVONA</td>
        <td>Vorname</td>
        <td>HL7ATCorePatient</td>
        <td>.name.given</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>EGESL</td>
        <td>Geschlecht</td>
        <td>HL7ATCorePatient</td>
        <td>.gender</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>EGEBD</td>
        <td>Geburtsdatum JJJJMMTT</td>
        <td>HL7ATCorePatient</td>
        <td>.birthDate</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>ESTAAT</td>
        <td>Staatenschlüssel</td>
        <td>TBD Organization</td>
        <td>.contact.address.country</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>EIC</td>
        <td>Instituionscode des zuständen Trägers</td>
        <td>TBD Organization</td>
        <td>.identifier:institutionCode</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>EAKRO</td>
        <td>Akronym des zuständigen Trägers</td>
        <td>HL7ATCoreOrganization</td>
        <td>.identifier:alias</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>EKANR</td>
        <td>Kartennummer</td>
        <td>Claim ?</td>
        <td>TBD</td>
        <td>TBD</td>
        <td></td>
    </tr>
    <tr>
        <td>EAEND</td>
        <td>Endedatum des Anspruches JJJJMMTT</td>
        <td>Claim ?</td>
        <td>TBD</td>
        <td>TBD</td>
        <td></td>
    </tr>
    <tr>
        <td>EFORM</td>
        <td>Art der Anspruchsbescheinigung</td>
        <td>Claim ?</td>
        <td>TBD</td>
        <td>TBD</td>
        <td></td>
    </tr>
    <tr>
        <td>EABEG</td>
        <td>Beginndatum des Anspruches JJJJMMTT</td>
        <td>Claim ?</td>
        <td>TBD</td>
        <td>TBD</td>
        <td></td>
    </tr>
    <tr>
        <td>ESTADT</td>
        <td>Bei EFORM " ANFO mit der Wohnort-Stadt des Patienten</td>
        <td>Claim ?</td>
        <td>TBD</td>
        <td>TBD</td>
        <td></td>
    </tr>
</table>
</div>
