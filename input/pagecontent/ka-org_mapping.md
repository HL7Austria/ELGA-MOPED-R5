

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
### Identifikationsteil
<div class="table-responsive">
<table>
    <tr>
        <td>E.1</td>
        <td></td>
        <td>Resource</td>
        <td>FHIRPath</td>
        <td>Extension</td>
    </tr>
    <tr>
        <td>K01, K02, K03, K04, K05, K06, K12, K27</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
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
    </tr>
    <tr>
        <td>VPNR</td>
        <td>Vertragspartnernummer der Krankenanstalt</td>
        <td>HL7ATCoreOrganization</td>
        <td>.identifier:VPNR</td>
        <td></td>
    </tr>
    <tr>
        <td>AUFZL</td>
        <td>Aufnahmezahl</td>
        <td>MOPEDAccount</td>
        <td>.identifier</td>
        <td></td>
    </tr>
    <tr>
        <td>FANU</td>
        <td>Fallnummer</td>
        <td>MOPEDAccount</td>
        <td>.extension</td>
        <td>.Fallnummer</td>
    </tr>
    <tr>
        <td>KOST</td>
        <td>Kostenträger (leistungszuständig)</td>
        <td>TBD</td>
        <td>TBD</td>
        <td>TBD</td>
    </tr>
    <tr>
        <td>VSTR</td>
        <td>zuständiger Versicherungsträger</td>
        <td>TBD</td>
        <td>TBD</td>
        <td>TBD</td>
    </tr>
    <tr>
        <td>AUFN</td>
        <td>Aufnahme-/Ereignisdatum JJJJMMTT</td>
        <td>TBD</td>
        <td>TBD</td>
        <td>TBD</td>
    </tr>
    <tr>
        <td>ENTL</td>
        <td>Entlassungsdatum JJJJMMTT</td>
        <td>MOPEDEncounter</td>
        <td>.period.end</td>
        <td></td>
    </tr>
    <tr>
        <td>KOMM</td>
        <td>Kommentarsatz</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
    </tr>
    <tr>
        <td>VSNR</td>
        <td>Versicherungsnummer des Hauptversicherten</td>
        <td>HL7ATCorePatient</td>
        <td>identifier:socialSecurityNumber</td>
        <td></td>
    </tr>
    <tr>
        <td>ZUNA</td>
        <td>Zuname des Hauptversicherten</td>
        <td>HL7ATCorePatient</td>
        <td>.name.given</td>
        <td></td>
    </tr>
    <tr>
        <td>VONA</td>
        <td>Vorname des Hauptversicherten</td>
        <td>HL7ATCorePatient</td>
        <td>.name.family</td>
        <td></td>
    </tr>
    <tr>
        <td>GESCHL</td>
        <td>Geschlecht des Hauptversicherten</td>
        <td>HL7ATCorePatient</td>
        <td>.gender</td>
        <td></td>
    </tr>
    <tr>
        <td>GEBDAT</td>
        <td>Geburtsdatum des Hauptversicherten JJJJMMTT</td>
        <td>HL7ATCorePatient</td>
        <td>.birthDate</td>
        <td></td>
    </tr>
    <tr>
        <td>DSID</td>
        <td>Datensatz-ID</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
    </tr>
    <tr>
        <td>VGR</td>
        <td>Versichertengruppe/Kategorie</td>
        <td>Coverage</td>
        <td>.class:Versichertenkategorie</td>
        <td></td>
    </tr>
    <tr>
        <td>AVSNR</td>
        <td>Versicherungsnummer des Mitversicherten</td>
        <td>HL7ATCorePatient</td>
        <td>identifier:socialSecurityNumber</td>
        <td></td>
    </tr>
    <tr>
        <td>AZUNA</td>
        <td>Zuname de Mitversicherten</td>
        <td>HL7ATCorePatient</td>
        <td>.name.family</td>
        <td></td>
    </tr>
    <tr>
        <td>AVONA</td>
        <td>Vorname de Mitversicherten</td>
        <td>HL7ATCorePatient</td>
        <td>.name.given</td>
        <td></td>
    </tr>
    <tr>
        <td>AGESCHL</td>
        <td>Geschlecht des Mitversicherten</td>
        <td>HL7ATCorePatient</td>
        <td>.gender</td>
        <td></td>
    </tr>
    <tr>
        <td>AGEBDAT</td>
        <td>Geburtsdatum des Mitversicherten JJJJMMTT</td>
        <td>HL7ATCorePatient</td>
        <td>.birthDate</td>
        <td></td>
    </tr>
    <tr>
        <td>FECO</td>
        <td>Fehlercode</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
    </tr>
    <tr>
        <td>DSIDR</td>
        <td>Datensatz-ID-Referenz</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
    </tr>
    <tr>
        <td>BKANR</td>
        <td>Krankenanstaltennummer des Bundesministeriums</td>
        <td>HL7ATCoreOrganization</td>
        <td>.identifier:GDA-OID</td>
        <td></td>
    </tr>
    <tr>
        <td>DVERS-ID</td>
        <td>Datensatzversion ID-Teil</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
    </tr>
    <tr>
        <td>DVERS-SA</td>
        <td>Datensatzversion Satzart-Teil</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
    </tr>
</table>

</div>
<div class="table-responsive">
<table>
    <tr>
        <td>E1.1</td>
        <td></td>
        <td>Resource</td>
        <td>FHIRPath</td>
        <td>Extension</td>
    </tr>
    <tr>
        <td>K09, K10, K13, K14, K20, K21, K22</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
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
    </tr>
    <tr>
        <td>VPNR</td>
        <td>Vertragspartnernummer der Krankenanstalt</td>
        <td>HL7ATCoreOrganization</td>
        <td>.identifier:VPNR</td>
        <td></td>
    </tr>
    <tr>
        <td>AUFZL</td>
        <td>Aufnahmezahl</td>
        <td>MOPEDAccount</td>
        <td>.identifier</td>
        <td></td>
    </tr>
    <tr>
        <td>FANU</td>
        <td>Fallnummer</td>
        <td>MOPEDAccount</td>
        <td>.extension</td>
        <td>.Fallnummer</td>
    </tr>
    <tr>
        <td>KOST</td>
        <td>Kostenträger (leistungszuständig)</td>
        <td>TBD</td>
        <td>TBD</td>
        <td>TBD</td>
    </tr>
    <tr>
        <td>VSTR</td>
        <td>zuständiger Versicherungsträger</td>
        <td>TBD</td>
        <td>TBD</td>
        <td>TBD</td>
    </tr>
    <tr>
        <td>AUFN</td>
        <td>Aufnahme-/Ereignisdatum JJJJMMTT</td>
        <td>TBD</td>
        <td>TBD</td>
        <td>TBD</td>
    </tr>
    <tr>
        <td>ENTL</td>
        <td>Entlassungsdatum JJJJMMTT</td>
        <td>MOPEDEncounter</td>
        <td>.period.end</td>
        <td></td>
    </tr>
    <tr>
        <td>KOMM</td>
        <td>Kommentarsatz</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
    </tr>
    <tr>
        <td>GEVDAT</td>
        <td>Geburtsdatum des Hauptversicherten JJJJMMTT</td>
        <td>HL7ATCorePatient</td>
        <td>.birthDate</td>
        <td></td>
    </tr>
    <tr>
        <td>DSID</td>
        <td>Datensatz-ID</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
    </tr>
    <tr>
        <td>GEBDATA</td>
        <td>Geburtsdatum des Mitversicherten JJJJMMTT</td>
        <td>HL7ATCorePatient</td>
        <td>.birthDate</td>
        <td></td>
    </tr>
    <tr>
        <td>FECO</td>
        <td>Fehlercode</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
    </tr>
    <tr>
        <td>DSIDR</td>
        <td>Datensatz-ID Referenz</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
    </tr>
    <tr>
        <td>BKANR</td>
        <td>Krankenanstaltennummer des Bundesministeriums</td>
        <td>HL7ATCoreOrganization</td>
        <td>.identifier:GDA-OID</td>
        <td></td>
    </tr>
    <tr>
        <td>DVERS-ID</td>
        <td>Datensatzversion ID-Teil, Versionsnummer vom ID-Teil</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
    </tr>
    <tr>
        <td>DVERS-SA</td>
        <td>Datensatzversion Satzart-Teil, Versionsnummer vom Satzart-Teil</td>
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
        <td>E.4</td>
        <td></td>
        <td>Resource</td>
        <td>FHIRPath</td>
        <td>Extension</td>
    </tr>
    <tr>
        <td>K01 - Aufnahmeanzeige, Ereignisanzeige</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>K02 - Storno Aufnahmeanzeige, Storno Ereignisanzeige</td>
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
    </tr>
    <tr>
        <td>VPNR</td>
        <td>Vertragspartnernummer der Krankenanstalt</td>
        <td>HL7ATCoreOrganization</td>
        <td>.identifier:VPNR</td>
        <td></td>
    </tr>
    <tr>
        <td>AUFZL</td>
        <td>Aufnahmezahl</td>
        <td>MOPEDAccount</td>
        <td>.identifier</td>
        <td></td>
    </tr>
    <tr>
        <td>FANU</td>
        <td>Fallnummer</td>
        <td>MOPEDAccount</td>
        <td>.extension</td>
        <td>.Fallnummer</td>
    </tr>
    <tr>
        <td>KOST</td>
        <td>Kostenträger (leistungszuständig)</td>
        <td>TBD</td>
        <td>TBD</td>
        <td>TBD</td>
    </tr>
    <tr>
        <td>VSTR</td>
        <td>zuständiger Versicherungsträger</td>
        <td>TBD</td>
        <td>TBD</td>
        <td>TBD</td>
    </tr>
    <tr>
        <td>AUFN</td>
        <td>Aufnahme-/Ereignisdatum JJJJMMTT</td>
        <td>TBD</td>
        <td>TBD</td>
        <td>TBD</td>
    </tr>
    <tr>
        <td>ENTL</td>
        <td>Entlassungsdatum JJJJMMTT</td>
        <td>MOPEDEncounter</td>
        <td>.period.end</td>
        <td></td>
    </tr>
    <tr>
        <td>KOMM</td>
        <td>Kommentarsatz</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
    </tr>
    <tr>
        <td>VSNR</td>
        <td>Versicherungsnummer des Hauptversicherten</td>
        <td>HL7ATCorePatient</td>
        <td>identifier:socialSecurityNumber</td>
        <td></td>
    </tr>
    <tr>
        <td>ZUNA</td>
        <td>Zuname des Hauptversicherten</td>
        <td>HL7ATCorePatient</td>
        <td>.name.given</td>
        <td></td>
    </tr>
    <tr>
        <td>VONA</td>
        <td>Vorname des Hauptversicherten</td>
        <td>HL7ATCorePatient</td>
        <td>.name.family</td>
        <td></td>
    </tr>
    <tr>
        <td>GESCHL</td>
        <td>Geschlecht des Hauptversicherten</td>
        <td>HL7ATCorePatient</td>
        <td>.gender</td>
        <td></td>
    </tr>
    <tr>
        <td>GEBDAT</td>
        <td>Geburtsdatum des Hauptversicherten JJJJMMTT</td>
        <td>HL7ATCorePatient</td>
        <td>.birthDate</td>
        <td></td>
    </tr>
    <tr>
        <td>DSID</td>
        <td>Datensatz-ID</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
    </tr>
    <tr>
        <td>VGR</td>
        <td>Versichertengruppe/Kategorie</td>
        <td>Coverage</td>
        <td>.class:Versichertenkategorie</td>
        <td></td>
    </tr>
    <tr>
        <td>AVSNR</td>
        <td>Versicherungsnummer des Mitversicherten</td>
        <td>HL7ATCorePatient</td>
        <td>identifier:socialSecurityNumber</td>
        <td></td>
    </tr>
    <tr>
        <td>AZUNA</td>
        <td>Zuname de Mitversicherten</td>
        <td>HL7ATCorePatient</td>
        <td>.name.family</td>
        <td></td>
    </tr>
    <tr>
        <td>AVONA</td>
        <td>Vorname de Mitversicherten</td>
        <td>HL7ATCorePatient</td>
        <td>.name.given</td>
        <td></td>
    </tr>
    <tr>
        <td>AGESCHL</td>
        <td>Geschlecht des Mitversicherten</td>
        <td>HL7ATCorePatient</td>
        <td>.gender</td>
        <td></td>
    </tr>
    <tr>
        <td>AGEBDAT</td>
        <td>Geburtsdatum des Mitversicherten JJJJMMTT</td>
        <td>HL7ATCorePatient</td>
        <td>.birthDate</td>
        <td></td>
    </tr>
    <tr>
        <td>FECO</td>
        <td>Fehlercode</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
    </tr>
    <tr>
        <td>DSIDR</td>
        <td>Datensatz-ID-Referenz</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
    </tr>
    <tr>
        <td>BKANR</td>
        <td>Krankenanstaltennummer des Bundesministeriums</td>
        <td>HL7ATCoreOrganization</td>
        <td>.identifier:GDA-OID</td>
        <td></td>
    </tr>
    <tr>
        <td>DVERS-ID</td>
        <td>Datensatzversion ID-Teil</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
    </tr>
    <tr>
        <td>DVERS-SA</td>
        <td>Datensatzversion Satzart-Teil</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
    </tr>
    <tr>
        <td>FKRA</td>
        <td>Funktionscode der Abteilung lt. LKF</td>
        <td>MopedAbteilungsOrganization</td>
        <td>.identifier:Funktionscode</td>
        <td></td>
    </tr>
    <tr>
        <td>FKRASU</td>
        <td>Funktionssubcode der Abteilung lt. LKF</td>
        <td>MopedAbteilungsOrganization</td>
        <td>.identifier:Funktionssubcode</td>
        <td></td>
    </tr>
    <tr>
        <td>KLAS</td>
        <td>Allgemeine Gebührenklasse/Sonderklasse</td>
        <td>CoverageEligibilityRequest</td>
        <td>.extension</td>
        <td>PremiumClass</td>
    </tr>
    <tr>
        <td>STAAT</td>
        <td>Staatsbürgerschaftsschlüssel</td>
        <td>HL7ATCorePatient</td>
        <td>.extension</td>
        <td>citizenship</td>
    </tr>
    <tr>
        <td>PASTR</td>
        <td>Wohandresse des Patienten, Straße</td>
        <td>HL7ATCorePatient</td>
        <td>.address.line</td>
        <td></td>
    </tr>
    <tr>
        <td>PALKZ</td>
        <td>Wohnadresse des Patienten, Länderkennzeichen</td>
        <td>HL7ATCorePatient</td>
        <td>TBD</td>
        <td>TBD</td>
    </tr>
    <tr>
        <td>PAPLZL</td>
        <td>Wohnadresse des Patienten, Postleitzahl</td>
        <td>HL7ATCorePatient</td>
        <td>.address.postalCode</td>
        <td></td>
    </tr>
    <tr>
        <td>PAORT</td>
        <td>Wohnadresse des Patienten, Ort</td>
        <td>HL7ATCorePatient</td>
        <td>.address.city</td>
        <td></td>
    </tr>
    <tr>
        <td>VERDAU</td>
        <td>Verdacht auf Arbeits-/Schülerunfall</td>
        <td>MOPEDAccount</td>
        <td>.extension</td>
        <td>VerdachtArbeitsSchülerUnfall</td>
    </tr>
    <tr>
        <td>DIAG1</td>
        <td>Diganose 1, ICD10 BMSGPK Schlüssel</td>
        <td>Condition.code</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>DIAG1U1</td>
        <td>Diagnose 1, Untergliederung 1</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>DIAG1U2</td>
        <td>Diagnose 1, Untergliederung 2</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>DIAG2</td>
        <td>Diganose 2, ICD10 BMSGPK Schlüssel</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>DIAG2U1</td>
        <td>Diagnose 2,  Untergliederung 1</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>DIAG2U2</td>
        <td>Diagnose 2, Untergliederung 2</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>DIAG3</td>
        <td>Diganose 3, ICD10 BMSGPK Schlüssel</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>DIAG3U1</td>
        <td>Diagnose 3, Untergliederung 1</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>DIAG3U2</td>
        <td>Diagnose 3, Untergliederung 2</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>FREVER</td>
        <td>Fremdversschluden</td>
        <td>MOPEDAccount</td>
        <td>.extension</td>
        <td>VerdachtFremdverschulden</td>
    </tr>
    <tr>
        <td>DIAG</td>
        <td>Diagnose im Klartext,kann bei Codierung entfallen</td>
        <td>Condition.code</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>URS</td>
        <td>Ursache der Behandlung</td>
        <td>MOPEDEncounter</td>
        <td>.reason</td>
        <td></td>
    </tr>
    <tr>
        <td>ENTBDAT</td>
        <td>Entbindungstag JJJJMMTT</td>
        <td>Observation</td>
        <td>TBD</td>
        <td>TBD</td>
    </tr>
    <tr>
        <td>USVPNR</td>
        <td>Überweisende Stelle, Vertragspartnernummer</td>
        <td>MOPEDEncounter</td>
        <td>.admission.origin</td>
        <td></td>
    </tr>
    <tr>
        <td>USNA</td>
        <td>Überweisende Stelle, Name</td>
        <td>HL7ATCoreOrganization</td>
        <td>.name</td>
        <td></td>
    </tr>
    <tr>
        <td>USLKZ</td>
        <td>Länderkennzeichen der überweisenden Stelle</td>
        <td>HL7ATCoreOrganization</td>
        <td>TBD</td>
        <td>TBD</td>
    </tr>
    <tr>
        <td>USPLZL</td>
        <td>Überweisende Stelle, Postleitzahl</td>
        <td>HL7ATCoreOrganization</td>
        <td>.contact.address.postalCode</td>
        <td></td>
    </tr>
    <tr>
        <td>USORT</td>
        <td>Überweisende Stelle, Ort</td>
        <td>HL7ATCoreOrganization</td>
        <td>.contact.address.city</td>
        <td></td>
    </tr>
    <tr>
        <td>ERDAT</td>
        <td>Ereignis-/Unfalldatum JJJJMMTT</td>
        <td>MOPEDEncounter</td>
        <td>.extension</td>
        <td>Unfalldatum</td>
    </tr>
    <tr>
        <td>VTAG</td>
        <td>Anzahl der Verlängerungstage</td>
        <td>CoverageEligibilityRequest</td>
        <td>.extension</td>
        <td>ExtensionDays</td>
    </tr>
    <tr>
        <td>VDAS</td>
        <td>VDAS-ID, Ergebnis der Abfrage</td>
        <td>CoverageEligibilityRequest</td>
        <td>.extension</td>
        <td>VDASID</td>
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
    </tr>
    <tr>
        <td>K03 - Versichertenanspruchserklärung</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>K04 - Storno Versichertenanspruchserklärung</td>
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
    </tr>
    <tr>
        <td>VPNR</td>
        <td>Vertragspartnernummer der Krankenanstalt</td>
        <td>HL7ATCoreOrganization</td>
        <td>.identifier:VPNR</td>
        <td></td>
    </tr>
    <tr>
        <td>AUFZL</td>
        <td>Aufnahmezahl</td>
        <td>MOPEDAccount</td>
        <td>.identifier</td>
        <td></td>
    </tr>
    <tr>
        <td>FANU</td>
        <td>Fallnummer</td>
        <td>MOPEDAccount</td>
        <td>.extension</td>
        <td>.Fallnummer</td>
    </tr>
    <tr>
        <td>KOST</td>
        <td>Kostenträger (leistungszuständig)</td>
        <td>TBD</td>
        <td>TBD</td>
        <td>TBD</td>
    </tr>
    <tr>
        <td>VSTR</td>
        <td>zuständiger Versicherungsträger</td>
        <td>TBD</td>
        <td>TBD</td>
        <td>TBD</td>
    </tr>
    <tr>
        <td>AUFN</td>
        <td>Aufnahme-/Ereignisdatum JJJJMMTT</td>
        <td>TBD</td>
        <td>TBD</td>
        <td>TBD</td>
    </tr>
    <tr>
        <td>ENTL</td>
        <td>Entlassungsdatum JJJJMMTT</td>
        <td>MOPEDEncounter</td>
        <td>.period.end</td>
        <td></td>
    </tr>
    <tr>
        <td>KOMM</td>
        <td>Kommentarsatz</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
    </tr>
    <tr>
        <td>VSNR</td>
        <td>Versicherungsnummer des Hauptversicherten</td>
        <td>HL7ATCorePatient</td>
        <td>identifier:socialSecurityNumber</td>
        <td></td>
    </tr>
    <tr>
        <td>ZUNA</td>
        <td>Zuname des Hauptversicherten</td>
        <td>HL7ATCorePatient</td>
        <td>.name.given</td>
        <td></td>
    </tr>
    <tr>
        <td>VONA</td>
        <td>Vorname des Hauptversicherten</td>
        <td>HL7ATCorePatient</td>
        <td>.name.family</td>
        <td></td>
    </tr>
    <tr>
        <td>GESCHL</td>
        <td>Geschlecht des Hauptversicherten</td>
        <td>HL7ATCorePatient</td>
        <td>.gender</td>
        <td></td>
    </tr>
    <tr>
        <td>GEBDAT</td>
        <td>Geburtsdatum des Hauptversicherten JJJJMMTT</td>
        <td>HL7ATCorePatient</td>
        <td>.birthDate</td>
        <td></td>
    </tr>
    <tr>
        <td>DSID</td>
        <td>Datensatz-ID</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
    </tr>
    <tr>
        <td>VGR</td>
        <td>Versichertengruppe/Kategorie</td>
        <td>Coverage</td>
        <td>.class:Versichertenkategorie</td>
        <td></td>
    </tr>
    <tr>
        <td>AVSNR</td>
        <td>Versicherungsnummer des Mitversicherten</td>
        <td>HL7ATCorePatient</td>
        <td>identifier:socialSecurityNumber</td>
        <td></td>
    </tr>
    <tr>
        <td>AZUNA</td>
        <td>Zuname de Mitversicherten</td>
        <td>HL7ATCorePatient</td>
        <td>.name.family</td>
        <td></td>
    </tr>
    <tr>
        <td>AVONA</td>
        <td>Vorname de Mitversicherten</td>
        <td>HL7ATCorePatient</td>
        <td>.name.given</td>
        <td></td>
    </tr>
    <tr>
        <td>AGESCHL</td>
        <td>Geschlecht des Mitversicherten</td>
        <td>HL7ATCorePatient</td>
        <td>.gender</td>
        <td></td>
    </tr>
    <tr>
        <td>AGEBDAT</td>
        <td>Geburtsdatum des Mitversicherten JJJJMMTT</td>
        <td>HL7ATCorePatient</td>
        <td>.birthDate</td>
        <td></td>
    </tr>
    <tr>
        <td>FECO</td>
        <td>Fehlercode</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
    </tr>
    <tr>
        <td>DSIDR</td>
        <td>Datensatz-ID-Referenz</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
    </tr>
    <tr>
        <td>BKANR</td>
        <td>Krankenanstaltennummer des Bundesministeriums</td>
        <td>HL7ATCoreOrganization</td>
        <td>.identifier:GDA-OID</td>
        <td></td>
    </tr>
    <tr>
        <td>DVERS-ID</td>
        <td>Datensatzversion ID-Teil</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
    </tr>
    <tr>
        <td>DVERS-SA</td>
        <td>Datensatzversion Satzart-Teil</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
    </tr>
    <tr>
        <td>EREIG</td>
        <td>Ereignisart</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
    </tr>
    <tr>
        <td>KLAS</td>
        <td>Allgemeine Gebührenklasse/Sonderklasse</td>
        <td>CoverageEligibilityRequest</td>
        <td>.extension</td>
        <td>PremiumClass</td>
    </tr>
    <tr>
        <td>DAT-VON</td>
        <td>VAE Beginndatum</td>
        <td>CoverageEligibilityResponse</td>
        <td>.insurance.benefitPeriod.start</td>
        <td></td>
    </tr>
    <tr>
        <td>DATBIS</td>
        <td>VAE Endedatum</td>
        <td>CoverageEligibilityResponse</td>
        <td>.insurance.benefitPeriod.end</td>
        <td></td>
    </tr>
    <tr>
        <td>ENDE</td>
        <td>Fristende</td>
        <td>CoverageEligibilityResponse</td>
        <td>.extension</td>
        <td>EndOfEligibility</td>
    </tr>
    <tr>
        <td>VAEST</td>
        <td>Status der VAE</td>
        <td>CoverageEligibilityResponse</td>
        <td>.extension</td>
        <td>VAEStatus</td>
    </tr>
    <tr>
        <td>VKBEFR</td>
        <td>Verpflegskosten-Beitragsbefreiung</td>
        <td>CoverageEligibilityResponse</td>
        <td>.extension</td>
        <td>MealCostExcemption</td>
    </tr>
    <tr>
        <td>VTAGE</td>
        <td>Vortageanzahl auf Kostenbeitrag</td>
        <td>CoverageEligibilityResponse</td>
        <td>.extension</td>
        <td>NumberOfPreviouslyDaysPaid</td>
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
    </tr>
    <tr>
        <td>K05 - Entlassungsanzeige</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>K06 - Storno Entlassungsanzeige</td>
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
    </tr>
    <tr>
        <td>VPNR</td>
        <td>Vertragspartnernummer der Krankenanstalt</td>
        <td>HL7ATCoreOrganization</td>
        <td>.identifier:VPNR</td>
        <td></td>
    </tr>
    <tr>
        <td>AUFZL</td>
        <td>Aufnahmezahl</td>
        <td>MOPEDAccount</td>
        <td>.identifier</td>
        <td></td>
    </tr>
    <tr>
        <td>FANU</td>
        <td>Fallnummer</td>
        <td>MOPEDAccount</td>
        <td>.extension</td>
        <td>.Fallnummer</td>
    </tr>
    <tr>
        <td>KOST</td>
        <td>Kostenträger (leistungszuständig)</td>
        <td>TBD</td>
        <td>TBD</td>
        <td>TBD</td>
    </tr>
    <tr>
        <td>VSTR</td>
        <td>zuständiger Versicherungsträger</td>
        <td>TBD</td>
        <td>TBD</td>
        <td>TBD</td>
    </tr>
    <tr>
        <td>AUFN</td>
        <td>Aufnahme-/Ereignisdatum JJJJMMTT</td>
        <td>TBD</td>
        <td>TBD</td>
        <td>TBD</td>
    </tr>
    <tr>
        <td>ENTL</td>
        <td>Entlassungsdatum JJJJMMTT</td>
        <td>MOPEDEncounter</td>
        <td>.period.end</td>
        <td></td>
    </tr>
    <tr>
        <td>KOMM</td>
        <td>Kommentarsatz</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
    </tr>
    <tr>
        <td>VSNR</td>
        <td>Versicherungsnummer des Hauptversicherten</td>
        <td>HL7ATCorePatient</td>
        <td>identifier:socialSecurityNumber</td>
        <td></td>
    </tr>
    <tr>
        <td>ZUNA</td>
        <td>Zuname des Hauptversicherten</td>
        <td>HL7ATCorePatient</td>
        <td>.name.given</td>
        <td></td>
    </tr>
    <tr>
        <td>VONA</td>
        <td>Vorname des Hauptversicherten</td>
        <td>HL7ATCorePatient</td>
        <td>.name.family</td>
        <td></td>
    </tr>
    <tr>
        <td>GESCHL</td>
        <td>Geschlecht des Hauptversicherten</td>
        <td>HL7ATCorePatient</td>
        <td>.gender</td>
        <td></td>
    </tr>
    <tr>
        <td>GEBDAT</td>
        <td>Geburtsdatum des Hauptversicherten JJJJMMTT</td>
        <td>HL7ATCorePatient</td>
        <td>.birthDate</td>
        <td></td>
    </tr>
    <tr>
        <td>DSID</td>
        <td>Datensatz-ID</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
    </tr>
    <tr>
        <td>VGR</td>
        <td>Versichertengruppe/Kategorie</td>
        <td>Coverage</td>
        <td>.class:Versichertenkategorie</td>
        <td></td>
    </tr>
    <tr>
        <td>AVSNR</td>
        <td>Versicherungsnummer des Mitversicherten</td>
        <td>HL7ATCorePatient</td>
        <td>identifier:socialSecurityNumber</td>
        <td></td>
    </tr>
    <tr>
        <td>AZUNA</td>
        <td>Zuname de Mitversicherten</td>
        <td>HL7ATCorePatient</td>
        <td>.name.family</td>
        <td></td>
    </tr>
    <tr>
        <td>AVONA</td>
        <td>Vorname de Mitversicherten</td>
        <td>HL7ATCorePatient</td>
        <td>.name.given</td>
        <td></td>
    </tr>
    <tr>
        <td>AGESCHL</td>
        <td>Geschlecht des Mitversicherten</td>
        <td>HL7ATCorePatient</td>
        <td>.gender</td>
        <td></td>
    </tr>
    <tr>
        <td>AGEBDAT</td>
        <td>Geburtsdatum des Mitversicherten JJJJMMTT</td>
        <td>HL7ATCorePatient</td>
        <td>.birthDate</td>
        <td></td>
    </tr>
    <tr>
        <td>FECO</td>
        <td>Fehlercode</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
    </tr>
    <tr>
        <td>DSIDR</td>
        <td>Datensatz-ID-Referenz</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
    </tr>
    <tr>
        <td>BKANR</td>
        <td>Krankenanstaltennummer des Bundesministeriums</td>
        <td>HL7ATCoreOrganization</td>
        <td>.identifier:GDA-OID</td>
        <td></td>
    </tr>
    <tr>
        <td>DVERS-ID</td>
        <td>Datensatzversion ID-Teil</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
    </tr>
    <tr>
        <td>DVERS-SA</td>
        <td>Datensatzversion Satzart-Teil</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
    </tr>
    <tr>
        <td>HDIAG</td>
        <td>Hauptdiagnose ICD 10 BMSGPK Schlüssel</td>
        <td>Condition.code</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>HDIAGU1</td>
        <td>Hauptdiagnose Untergliederung 1</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>HDIAGU2</td>
        <td>Hauptdiagnose Untergliederung 2</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>ZDIAG1</td>
        <td>Zusatzdiagnose 1, ICD 10 BMSGPK Schlüssel</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>ZDIAGU1</td>
        <td>Zusatzdiagnose 1, Untergliederung 1</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>ZDIAGU2</td>
        <td>Zusatzdiagnose 1, Untergliederung 2</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>FREVER</td>
        <td>Fremdverschulden</td>
        <td>MOPEDAccount</td>
        <td>.extension</td>
        <td>VerdachtFremdverschulden</td>
    </tr>
    <tr>
        <td>DAIG</td>
        <td>Hauptdiagnose im Klartext, entfällt bei Codierung</td>
        <td>Condition.code</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>URS</td>
        <td>Ursache der Behandlung</td>
        <td>MOPEDEncounter</td>
        <td>.reason</td>
        <td></td>
    </tr>
    <tr>
        <td>ENTBDAT</td>
        <td>Entbindungsdatum JJJJMMTT</td>
        <td>Observation</td>
        <td>TBD</td>
        <td>TBD</td>
    </tr>
    <tr>
        <td>ENTGM</td>
        <td>Anzahl der Lebendgeburten, männliche Kinder</td>
        <td>Observation</td>
        <td>TBD</td>
        <td>TBD</td>
    </tr>
    <tr>
        <td>ENTGW</td>
        <td>Anzahl der Lebendgeburten, weibliche Kinder</td>
        <td>Observation</td>
        <td>TBD</td>
        <td>TBD</td>
    </tr>
    <tr>
        <td>ENTT</td>
        <td>Anzahl der Totgeburten</td>
        <td>Observation</td>
        <td>TBD</td>
        <td>TBD</td>
    </tr>
    <tr>
        <td>ENTBART</td>
        <td>Art der Entbindung</td>
        <td>Observation</td>
        <td>TBD</td>
        <td>TBD</td>
    </tr>
    <tr>
        <td>ENTS</td>
        <td>Entlassungsschlüssel</td>
        <td>MOPEDEncounter</td>
        <td>.admission.dischargeDisposition</td>
        <td></td>
    </tr>
    <tr>
        <td>AVDAT</td>
        <td>Aufnahme-, Verlegungsdatum JJJJMMTT</td>
        <td>TBD</td>
        <td>TBD</td>
        <td>TBD</td>
    </tr>
    <tr>
        <td>VKLA</td>
        <td>Verlegung Klasse</td>
        <td>TBD</td>
        <td>TBD</td>
        <td>TBD</td>
    </tr>
    <tr>
        <td>AI</td>
        <td>Avisio-Info</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
    </tr>
    <tr>
        <td>KABEFR</td>
        <td>Anzahl der Tage, für welche kein Kostenbeitrag seitens der Krankenanstalt eingehoben wurde</td>
        <td>MOPEDAccount</td>
        <td>.extension</td>
        <td>TageOhneKostenbeitrag</td>
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
    </tr>
    <tr>
        <td>K09 - Kostenmeldung stationär RG/AV/KO</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>K10 - Storno Kostenmeldung stationär RG/AV/KO</td>
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
    </tr>
    <tr>
        <td>VPNR</td>
        <td>Vertragspartnernummer der Krankenanstalt</td>
        <td>HL7ATCoreOrganization</td>
        <td>.identifier:VPNR</td>
        <td></td>
    </tr>
    <tr>
        <td>AUFZL</td>
        <td>Aufnahmezahl</td>
        <td>MOPEDAccount</td>
        <td>.identifier</td>
        <td></td>
    </tr>
    <tr>
        <td>FANU</td>
        <td>Fallnummer</td>
        <td>MOPEDAccount</td>
        <td>.extension</td>
        <td>.Fallnummer</td>
    </tr>
    <tr>
        <td>KOST</td>
        <td>Kostenträger (leistungszuständig)</td>
        <td>TBD</td>
        <td>TBD</td>
        <td>TBD</td>
    </tr>
    <tr>
        <td>VSTR</td>
        <td>zuständiger Versicherungsträger</td>
        <td>TBD</td>
        <td>TBD</td>
        <td>TBD</td>
    </tr>
    <tr>
        <td>AUFN</td>
        <td>Aufnahme-/Ereignisdatum JJJJMMTT</td>
        <td>TBD</td>
        <td>TBD</td>
        <td>TBD</td>
    </tr>
    <tr>
        <td>ENTL</td>
        <td>Entlassungsdatum JJJJMMTT</td>
        <td>MOPEDEncounter</td>
        <td>.period.end</td>
        <td></td>
    </tr>
    <tr>
        <td>AUFART</td>
        <td>Aufnahmeart</td>
        <td>MOPEDEncounter</td>
        <td>.admission.extension</td>
        <td>Zugangsart</td>
    </tr>
    <tr>
        <td>ENTLART</td>
        <td>Entlassungsart</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
    </tr>
    <tr>
        <td>KOMM</td>
        <td>Kommentarsatz</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
    </tr>
    <tr>
        <td>VSNR</td>
        <td>Versicherungsnummer des Hauptversicherten</td>
        <td>HL7ATCorePatient</td>
        <td>identifier:socialSecurityNumber</td>
        <td></td>
    </tr>
    <tr>
        <td>GESL</td>
        <td>Geschlecht</td>
        <td>HL7ATCorePatient</td>
        <td>.gender</td>
        <td></td>
    </tr>
    <tr>
        <td>GEBDAT</td>
        <td>Geburtsdatum des Hauptversicherten JJJJMMTT</td>
        <td>HL7ATCorePatient</td>
        <td>.birthDate</td>
        <td></td>
    </tr>
    <tr>
        <td>DSID</td>
        <td>Datensatz-ID</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
    </tr>
    <tr>
        <td>VGR</td>
        <td>Versichertengruppe/Kategorie</td>
        <td>Coverage</td>
        <td>.class:Versichertenkategorie</td>
        <td></td>
    </tr>
    <tr>
        <td>GEBDATA</td>
        <td>Geburtsdatum des Mitversicherten JJJJMMTT</td>
        <td>HL7ATCorePatient</td>
        <td>.birthDate</td>
        <td></td>
    </tr>
    <tr>
        <td>FECO</td>
        <td>Fehlercode</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
    </tr>
    <tr>
        <td>DSIDR</td>
        <td>Datensatz-ID-Referenz</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
    </tr>
    <tr>
        <td>BKANR</td>
        <td>Krankenanstaltennummer des Bundesministeriums</td>
        <td>HL7ATCoreOrganization</td>
        <td>.identifier:GDA-OID</td>
        <td></td>
    </tr>
    <tr>
        <td>DVERS-ID</td>
        <td>Datensatzversion ID-Teil</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
    </tr>
    <tr>
        <td>DVERS-SA</td>
        <td>Datensatzversion Satzart-Teil</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
    </tr>
    <tr>
        <td>STAATB</td>
        <td>Staatsbürgerschaft</td>
        <td>HL7ATCorePatient</td>
        <td>.extension</td>
        <td>citizenship</td>
    </tr>
    <tr>
        <td>PLZLW</td>
        <td>Hauptwohnsitz Postleitzahl</td>
        <td>HL7ATCorePatient</td>
        <td>.address.postalCode</td>
        <td></td>
    </tr>
    <tr>
        <td>EBH</td>
        <td>Entbindungsheimpflegekennzeichen</td>
        <td>Observation</td>
        <td>TBD</td>
        <td>TBD</td>
    </tr>
    <tr>
        <td>VERURL</td>
        <td>Urlaubstage im Verrechnungszeitraum</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>SOND</td>
        <td>Sonderleistungsnummer</td>
        <td>ClaimResponse</td>
        <td>TBD</td>
        <td>TBD</td>
    </tr>
    <tr>
        <td>SOANZ</td>
        <td>Anzahl Sonderleistung</td>
        <td>ClaimResponse</td>
        <td>TBD</td>
        <td>TBD</td>
    </tr>
    <tr>
        <td>KVAB</td>
        <td>Ablehnungsgrund für Leistungserbringung stationär</td>
        <td>ClaimResponse</td>
        <td>.adjudication.reason</td>
        <td></td>
    </tr>
    <tr>
        <td>QUAL</td>
        <td>Qualifier</td>
        <td>ClaimResponse</td>
        <td>TBD</td>
        <td>TBD</td>
    </tr>
    <tr>
        <td>KOANF</td>
        <td>Kostenmeldung für (A/R/K)</td>
        <td>ClaimResponse</td>
        <td>TBD</td>
        <td>TBD</td>
    </tr>
    <tr>
        <td>LDFGRP</td>
        <td>LDF-Gruppe Teil1</td>
        <td>Claim</td>
        <td>.diagnosisRelatedGroup</td>
        <td></td>
    </tr>
    <tr>
        <td>LDFKNT</td>
        <td>LDF-Gruppe Teil2</td>
        <td>Claim</td>
        <td>.extension</td>
        <td>diagnosisRelatedNode</td>
    </tr>
    <tr>
        <td>LDFPP</td>
        <td>Punkte LDF-Pauschale</td>
        <td>ClaimResponse</td>
        <td>TBD</td>
        <td>TBD</td>
    </tr>
    <tr>
        <td>VDU</td>
        <td>Punkte Verweildauerausreißer unten</td>
        <td>Claim</td>
        <td>.extension</td>
        <td>PunkteBelagsdauerausreisseruntenLeistungskomponente</td>
    </tr>
    <tr>
        <td>VDO</td>
        <td>Zusatzpunkte Verweildauerausreißer oben</td>
        <td>Claim</td>
        <td>.extension</td>
        <td>ZusatzpunkteBelagsdauerausreisserNachOben</td>
    </tr>
    <tr>
        <td>ZUINT</td>
        <td>Zusatzpunkte Intensiv</td>
        <td>Claim</td>
        <td>.extension</td>
        <td>ZusatzpunkteIntensiv</td>
    </tr>
    <tr>
        <td>ZUMEHR</td>
        <td>Zusatzpunkte Mehrleistungen</td>
        <td>Claim</td>
        <td>.extension</td>
        <td>ZusatzpunkteMehrfachleistungen</td>
    </tr>
    <tr>
        <td>PSPEZ</td>
        <td>Punkte spezieller Bereich</td>
        <td>Claim</td>
        <td>.extension</td>
        <td>PunkteSpeziellerBereicheTageweise</td>
    </tr>
    <tr>
        <td>PTOT</td>
        <td>Punkte total</td>
        <td>Claim</td>
        <td>.extension</td>
        <td>TotalPoints</td>
    </tr>
    <tr>
        <td>LDFFAK</td>
        <td>LDF-Punktewert Netto</td>
        <td>ClaimResponse</td>
        <td>TBD</td>
        <td>TBD</td>
    </tr>
    <tr>
        <td>LDFBET</td>
        <td>LDF-Betrag Netto</td>
        <td>ClaimResponse</td>
        <td>TBD</td>
        <td>TBD</td>
    </tr>
    <tr>
        <td>VERSATZ</td>
        <td>Patientenanteil für Angehörige (tägl. Satz) netto</td>
        <td>ClaimResponse</td>
        <td>TBD</td>
        <td>TBD</td>
    </tr>
    <tr>
        <td>VERPA</td>
        <td>Patientenanteil netto</td>
        <td>ClaimResponse</td>
        <td>TBD</td>
        <td>TBD</td>
    </tr>
    <tr>
        <td>BEIH</td>
        <td>Beihilfenäquivalent</td>
        <td>ClaimResponse</td>
        <td>TBD</td>
        <td>TBD</td>
    </tr>
    <tr>
        <td>FORDAV</td>
        <td>Forderungsbetrag für Ausländerverrechnung</td>
        <td>ClaimResponse</td>
        <td>TBD</td>
        <td>TBD</td>
    </tr>
    <tr>
        <td>FORDRG</td>
        <td>Forderungsbetrag für den Regress</td>
        <td>ClaimResponse</td>
        <td>TBD</td>
        <td>TBD</td>
    </tr>
    <tr>
        <td>RUE</td>
        <td>K21 Ausländerverrechnung/Regresse - Rückmeldung</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
    </tr>
    <tr>
        <td>RENR</td>
        <td>RENR</td>
        <td>ClaimResponse</td>
        <td>TBD</td>
        <td>TBD</td>
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
    </tr>
    <tr>
        <td>K20 - Kostenmeldungsanforderung</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
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
    </tr>
    <tr>
        <td>VPNR</td>
        <td>Vertragspartnernummer der Krankenanstalt</td>
        <td>HL7ATCoreOrganization</td>
        <td>.identifier:VPNR</td>
        <td></td>
    </tr>
    <tr>
        <td>AUFZL</td>
        <td>Aufnahmezahl</td>
        <td>MOPEDAccount</td>
        <td>.identifier</td>
        <td></td>
    </tr>
    <tr>
        <td>FANU</td>
        <td>Fallnummer</td>
        <td>MOPEDAccount</td>
        <td>.extension</td>
        <td>.Fallnummer</td>
    </tr>
    <tr>
        <td>KOST</td>
        <td>Kostenträger (leistungszuständig)</td>
        <td>TBD</td>
        <td>TBD</td>
        <td>TBD</td>
    </tr>
    <tr>
        <td>VSTR</td>
        <td>zuständiger Versicherungsträger</td>
        <td>TBD</td>
        <td>TBD</td>
        <td>TBD</td>
    </tr>
    <tr>
        <td>AUFN</td>
        <td>Aufnahme-/Ereignisdatum JJJJMMTT</td>
        <td>TBD</td>
        <td>TBD</td>
        <td>TBD</td>
    </tr>
    <tr>
        <td>ENTL</td>
        <td>Entlassungsdatum JJJJMMTT</td>
        <td>MOPEDEncounter</td>
        <td>.period.end</td>
        <td></td>
    </tr>
    <tr>
        <td>KOMM</td>
        <td>Kommentarsatz</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
    </tr>
    <tr>
        <td>GEVDAT</td>
        <td>Geburtsdatum des Hauptversicherten JJJJMMTT</td>
        <td>HL7ATCorePatient</td>
        <td>.birthDate</td>
        <td></td>
    </tr>
    <tr>
        <td>DSID</td>
        <td>Datensatz-ID</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
    </tr>
    <tr>
        <td>GEBDATA</td>
        <td>Geburtsdatum des Mitversicherten JJJJMMTT</td>
        <td>HL7ATCorePatient</td>
        <td>.birthDate</td>
        <td></td>
    </tr>
    <tr>
        <td>FECO</td>
        <td>Fehlercode</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
    </tr>
    <tr>
        <td>DSIDR</td>
        <td>Datensatz-ID Referenz</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
    </tr>
    <tr>
        <td>BKANR</td>
        <td>Krankenanstaltennummer des Bundesministeriums</td>
        <td>HL7ATCoreOrganization</td>
        <td>.identifier:GDA-OID</td>
        <td></td>
    </tr>
    <tr>
        <td>DVERS-ID</td>
        <td>Datensatzversion ID-Teil, Versionsnummer vom ID-Teil</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
    </tr>
    <tr>
        <td>DVERS-SA</td>
        <td>Datensatzversion Satzart-Teil, Versionsnummer vom Satzart-Teil</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
    </tr>
    <tr>
        <td>AUFKZ</td>
        <td>Aufenthaltsartkennzeichen</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
    </tr>
    <tr>
        <td>KOANF</td>
        <td>Kostenmeldung für</td>
        <td>ClaimResponse</td>
        <td>TBD</td>
        <td>TBD</td>
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
    </tr>
    <tr>
        <td>K12 - Kommentar</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
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
    </tr>
    <tr>
        <td>VPNR</td>
        <td>Vertragspartnernummer der Krankenanstalt</td>
        <td>HL7ATCoreOrganization</td>
        <td>.identifier:VPNR</td>
        <td></td>
    </tr>
    <tr>
        <td>AUFZL</td>
        <td>Aufnahmezahl</td>
        <td>MOPEDAccount</td>
        <td>.identifier</td>
        <td></td>
    </tr>
    <tr>
        <td>FANU</td>
        <td>Fallnummer</td>
        <td>MOPEDAccount</td>
        <td>.extension</td>
        <td>.Fallnummer</td>
    </tr>
    <tr>
        <td>KOST</td>
        <td>Kostenträger (leistungszuständig)</td>
        <td>TBD</td>
        <td>TBD</td>
        <td>TBD</td>
    </tr>
    <tr>
        <td>VSTR</td>
        <td>zuständiger Versicherungsträger</td>
        <td>TBD</td>
        <td>TBD</td>
        <td>TBD</td>
    </tr>
    <tr>
        <td>AUFN</td>
        <td>Aufnahme-/Ereignisdatum JJJJMMTT</td>
        <td>TBD</td>
        <td>TBD</td>
        <td>TBD</td>
    </tr>
    <tr>
        <td>ENTL</td>
        <td>Entlassungsdatum JJJJMMTT</td>
        <td>MOPEDEncounter</td>
        <td>.period.end</td>
        <td></td>
    </tr>
    <tr>
        <td>KOMM</td>
        <td>Kommentarsatz</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
    </tr>
    <tr>
        <td>VSNR</td>
        <td>Versicherungsnummer des Hauptversicherten</td>
        <td>HL7ATCorePatient</td>
        <td>identifier:socialSecurityNumber</td>
        <td></td>
    </tr>
    <tr>
        <td>ZUNA</td>
        <td>Zuname des Hauptversicherten</td>
        <td>HL7ATCorePatient</td>
        <td>.name.given</td>
        <td></td>
    </tr>
    <tr>
        <td>VONA</td>
        <td>Vorname des Hauptversicherten</td>
        <td>HL7ATCorePatient</td>
        <td>.name.family</td>
        <td></td>
    </tr>
    <tr>
        <td>GESCHL</td>
        <td>Geschlecht des Hauptversicherten</td>
        <td>HL7ATCorePatient</td>
        <td>.gender</td>
        <td></td>
    </tr>
    <tr>
        <td>GEBDAT</td>
        <td>Geburtsdatum des Hauptversicherten JJJJMMTT</td>
        <td>HL7ATCorePatient</td>
        <td>.birthDate</td>
        <td></td>
    </tr>
    <tr>
        <td>DSID</td>
        <td>Datensatz-ID</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
    </tr>
    <tr>
        <td>VGR</td>
        <td>Versichertengruppe/Kategorie</td>
        <td>Coverage</td>
        <td>.class:Versichertenkategorie</td>
        <td></td>
    </tr>
    <tr>
        <td>AVSNR</td>
        <td>Versicherungsnummer des Mitversicherten</td>
        <td>HL7ATCorePatient</td>
        <td>identifier:socialSecurityNumber</td>
        <td></td>
    </tr>
    <tr>
        <td>AZUNA</td>
        <td>Zuname de Mitversicherten</td>
        <td>HL7ATCorePatient</td>
        <td>.name.family</td>
        <td></td>
    </tr>
    <tr>
        <td>AVONA</td>
        <td>Vorname de Mitversicherten</td>
        <td>HL7ATCorePatient</td>
        <td>.name.given</td>
        <td></td>
    </tr>
    <tr>
        <td>AGESCHL</td>
        <td>Geschlecht des Mitversicherten</td>
        <td>HL7ATCorePatient</td>
        <td>.gender</td>
        <td></td>
    </tr>
    <tr>
        <td>AGEBDAT</td>
        <td>Geburtsdatum des Mitversicherten JJJJMMTT</td>
        <td>HL7ATCorePatient</td>
        <td>.birthDate</td>
        <td></td>
    </tr>
    <tr>
        <td>FECO</td>
        <td>Fehlercode</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
    </tr>
    <tr>
        <td>DSIDR</td>
        <td>Datensatz-ID-Referenz</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
    </tr>
    <tr>
        <td>BKANR</td>
        <td>Krankenanstaltennummer des Bundesministeriums</td>
        <td>HL7ATCoreOrganization</td>
        <td>.identifier:GDA-OID</td>
        <td></td>
    </tr>
    <tr>
        <td>DVERS-ID</td>
        <td>Datensatzversion ID-Teil</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
    </tr>
    <tr>
        <td>DVERS-SA</td>
        <td>Datensatzversion Satzart-Teil</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
    </tr>
    <tr>
        <td>ZEILNR</td>
        <td>Zeilennummer</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
    </tr>
    <tr>
        <td>TEXT1</td>
        <td>Kommentartext</td>
        <td>ClaimResponse</td>
        <td>.extension</td>
        <td>comments</td>
    </tr>
    <tr>
        <td>TEXT2</td>
        <td>Kommentartext</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>TEXT3</td>
        <td>Kommentartext</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>TEXT4</td>
        <td>Kommentartext</td>
        <td></td>
        <td></td>
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
    </tr>
    <tr>
        <td>K21 - Rückmeldung Ausländerverrechnung/Regresse</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>K22 - Storno Rückmeldung Ausländerverrechnung/Regresse</td>
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
    </tr>
    <tr>
        <td>VPNR</td>
        <td>Vertragspartnernummer der Krankenanstalt</td>
        <td>HL7ATCoreOrganization</td>
        <td>.identifier:VPNR</td>
        <td></td>
    </tr>
    <tr>
        <td>AUFZL</td>
        <td>Aufnahmezahl</td>
        <td>MOPEDAccount</td>
        <td>.identifier</td>
        <td></td>
    </tr>
    <tr>
        <td>FANU</td>
        <td>Fallnummer</td>
        <td>MOPEDAccount</td>
        <td>.extension</td>
        <td>.Fallnummer</td>
    </tr>
    <tr>
        <td>KOST</td>
        <td>Kostenträger (leistungszuständig)</td>
        <td>TBD</td>
        <td>TBD</td>
        <td>TBD</td>
    </tr>
    <tr>
        <td>VSTR</td>
        <td>zuständiger Versicherungsträger</td>
        <td>TBD</td>
        <td>TBD</td>
        <td>TBD</td>
    </tr>
    <tr>
        <td>AUFN</td>
        <td>Aufnahme-/Ereignisdatum JJJJMMTT</td>
        <td>TBD</td>
        <td>TBD</td>
        <td>TBD</td>
    </tr>
    <tr>
        <td>ENTL</td>
        <td>Entlassungsdatum JJJJMMTT</td>
        <td>MOPEDEncounter</td>
        <td>.period.end</td>
        <td></td>
    </tr>
    <tr>
        <td>KOMM</td>
        <td>Kommentarsatz</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
    </tr>
    <tr>
        <td>GEVDAT</td>
        <td>Geburtsdatum des Hauptversicherten JJJJMMTT</td>
        <td>HL7ATCorePatient</td>
        <td>.birthDate</td>
        <td></td>
    </tr>
    <tr>
        <td>DSID</td>
        <td>Datensatz-ID</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
    </tr>
    <tr>
        <td>GEBDATA</td>
        <td>Geburtsdatum des Mitversicherten JJJJMMTT</td>
        <td>HL7ATCorePatient</td>
        <td>.birthDate</td>
        <td></td>
    </tr>
    <tr>
        <td>FECO</td>
        <td>Fehlercode</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
    </tr>
    <tr>
        <td>DSIDR</td>
        <td>Datensatz-ID Referenz</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
    </tr>
    <tr>
        <td>BKANR</td>
        <td>Krankenanstaltennummer des Bundesministeriums</td>
        <td>HL7ATCoreOrganization</td>
        <td>.identifier:GDA-OID</td>
        <td></td>
    </tr>
    <tr>
        <td>DVERS-ID</td>
        <td>Datensatzversion ID-Teil, Versionsnummer vom ID-Teil</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
    </tr>
    <tr>
        <td>DVERS-SA</td>
        <td>Datensatzversion Satzart-Teil, Versionsnummer vom Satzart-Teil</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
    </tr>
    <tr>
        <td>KOANF</td>
        <td>Kostenmeldung</td>
        <td>ClaimResponse</td>
        <td>TBD</td>
        <td>TBD</td>
    </tr>
    <tr>
        <td>LDFBET</td>
        <td>LDF-Betrag Netto</td>
        <td>ClaimResponse</td>
        <td>TBD</td>
        <td>TBD</td>
    </tr>
    <tr>
        <td>VERSATZ</td>
        <td>Patientenanteil für Angehörige</td>
        <td>ClaimResponse</td>
        <td>TBD</td>
        <td>TBD</td>
    </tr>
    <tr>
        <td>VERPA</td>
        <td>Patientenanteil </td>
        <td>ClaimResponse</td>
        <td>TBD</td>
        <td>TBD</td>
    </tr>
    <tr>
        <td>ZKZ</td>
        <td>Zahlungskennzeichen Regress</td>
        <td>ClaimResponse</td>
        <td>TBD</td>
        <td>TBD</td>
    </tr>
    <tr>
        <td>BETRAV</td>
        <td>Betrag Ausländerverrechnung</td>
        <td>ClaimResponse</td>
        <td>TBD</td>
        <td>TBD</td>
    </tr>
    <tr>
        <td>BETRRG</td>
        <td>Betrag Regress</td>
        <td>ClaimResponse</td>
        <td>TBD</td>
        <td>TBD</td>
    </tr>
    <tr>
        <td>RENR</td>
        <td>Rechnungsnummer</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
    </tr>
    <tr>
        <td>ART</td>
        <td>Abrechnungsart Ausländerverrechnung</td>
        <td>ClaimResponse</td>
        <td>TBD</td>
        <td>TBD</td>
    </tr>
    <tr>
        <td>PROZ</td>
        <td>Prozentsatz der Zahlung</td>
        <td>ClaimResponse</td>
        <td>TBD</td>
        <td>TBD</td>
    </tr>
    <tr>
        <td>SCHEIN</td>
        <td>Betreuungsschein bei Ausländerverrechnung</td>
        <td>ClaimResponse</td>
        <td>TBD</td>
        <td>TBD</td>
    </tr>
    <tr>
        <td>LAND</td>
        <td>Landescode</td>
        <td>ClaimResponse</td>
        <td>TBD</td>
        <td>TBD</td>
    </tr>
    <tr>
        <td>GRUND</td>
        <td>Grund, warum keine Zahlung erfolgte</td>
        <td>ClaimResponse</td>
        <td>TBD</td>
        <td>TBD</td>
    </tr>
    <tr>
        <td>FREMDRE</td>
        <td>Rechnungsnummer der zwischenstaatlichen Abrechnung</td>
        <td>ClaimResponse</td>
        <td>TBD</td>
        <td>TBD</td>
    </tr>
    <tr>
        <td>ELBNR</td>
        <td>Roderungsnummer der ÖGK</td>
        <td>ClaimResponse</td>
        <td>TBD</td>
        <td>TBD</td>
    </tr>
    <tr>
        <td>ASVT</td>
        <td>Bezeichnung des ausländischen SV-Trägers</td>
        <td>TBD Organization</td>
        <td>TBD</td>
        <td>TBD</td>
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
    </tr>
    <tr>
        <td>K27 - EKVK-Datenmeldung (nur an ÖGK)</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
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
    </tr>
    <tr>
        <td>VPNR</td>
        <td>Vertragspartnernummer der Krankenanstalt</td>
        <td>HL7ATCoreOrganization</td>
        <td>.identifier:VPNR</td>
        <td></td>
    </tr>
    <tr>
        <td>AUFZL</td>
        <td>Aufnahmezahl</td>
        <td>MOPEDAccount</td>
        <td>.identifier</td>
        <td></td>
    </tr>
    <tr>
        <td>FANU</td>
        <td>Fallnummer</td>
        <td>MOPEDAccount</td>
        <td>.extension</td>
        <td>.Fallnummer</td>
    </tr>
    <tr>
        <td>KOST</td>
        <td>Kostenträger (leistungszuständig)</td>
        <td>TBD</td>
        <td>TBD</td>
        <td>TBD</td>
    </tr>
    <tr>
        <td>VSTR</td>
        <td>zuständiger Versicherungsträger</td>
        <td>TBD</td>
        <td>TBD</td>
        <td>TBD</td>
    </tr>
    <tr>
        <td>AUFN</td>
        <td>Aufnahme-/Ereignisdatum JJJJMMTT</td>
        <td>TBD</td>
        <td>TBD</td>
        <td>TBD</td>
    </tr>
    <tr>
        <td>ENTL</td>
        <td>Entlassungsdatum JJJJMMTT</td>
        <td>MOPEDEncounter</td>
        <td>.period.end</td>
        <td></td>
    </tr>
    <tr>
        <td>KOMM</td>
        <td>Kommentarsatz</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
    </tr>
    <tr>
        <td>VSNR</td>
        <td>Versicherungsnummer des Hauptversicherten</td>
        <td>HL7ATCorePatient</td>
        <td>identifier:socialSecurityNumber</td>
        <td></td>
    </tr>
    <tr>
        <td>ZUNA</td>
        <td>Zuname des Hauptversicherten</td>
        <td>HL7ATCorePatient</td>
        <td>.name.given</td>
        <td></td>
    </tr>
    <tr>
        <td>VONA</td>
        <td>Vorname des Hauptversicherten</td>
        <td>HL7ATCorePatient</td>
        <td>.name.family</td>
        <td></td>
    </tr>
    <tr>
        <td>GESCHL</td>
        <td>Geschlecht des Hauptversicherten</td>
        <td>HL7ATCorePatient</td>
        <td>.gender</td>
        <td></td>
    </tr>
    <tr>
        <td>GEBDAT</td>
        <td>Geburtsdatum des Hauptversicherten JJJJMMTT</td>
        <td>HL7ATCorePatient</td>
        <td>.birthDate</td>
        <td></td>
    </tr>
    <tr>
        <td>DSID</td>
        <td>Datensatz-ID</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
    </tr>
    <tr>
        <td>VGR</td>
        <td>Versichertengruppe/Kategorie</td>
        <td>Coverage</td>
        <td>.class:Versichertenkategorie</td>
        <td></td>
    </tr>
    <tr>
        <td>AVSNR</td>
        <td>Versicherungsnummer des Mitversicherten</td>
        <td>HL7ATCorePatient</td>
        <td>identifier:socialSecurityNumber</td>
        <td></td>
    </tr>
    <tr>
        <td>AZUNA</td>
        <td>Zuname de Mitversicherten</td>
        <td>HL7ATCorePatient</td>
        <td>.name.family</td>
        <td></td>
    </tr>
    <tr>
        <td>AVONA</td>
        <td>Vorname de Mitversicherten</td>
        <td>HL7ATCorePatient</td>
        <td>.name.given</td>
        <td></td>
    </tr>
    <tr>
        <td>AGESCHL</td>
        <td>Geschlecht des Mitversicherten</td>
        <td>HL7ATCorePatient</td>
        <td>.gender</td>
        <td></td>
    </tr>
    <tr>
        <td>AGEBDAT</td>
        <td>Geburtsdatum des Mitversicherten JJJJMMTT</td>
        <td>HL7ATCorePatient</td>
        <td>.birthDate</td>
        <td></td>
    </tr>
    <tr>
        <td>FECO</td>
        <td>Fehlercode</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
    </tr>
    <tr>
        <td>DSIDR</td>
        <td>Datensatz-ID-Referenz</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
    </tr>
    <tr>
        <td>BKANR</td>
        <td>Krankenanstaltennummer des Bundesministeriums</td>
        <td>HL7ATCoreOrganization</td>
        <td>.identifier:GDA-OID</td>
        <td></td>
    </tr>
    <tr>
        <td>DVERS-ID</td>
        <td>Datensatzversion ID-Teil</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
    </tr>
    <tr>
        <td>DVERS-SA</td>
        <td>Datensatzversion Satzart-Teil</td>
        <td>/</td>
        <td>/</td>
        <td>/</td>
    </tr>
    <tr>
        <td>EWR-Versicherungsnummer des Patienten</td>
        <td></td>
        <td>Patient</td>
        <td>TBD</td>
        <td>TBD</td>
    </tr>
    <tr>
        <td>Zuname</td>
        <td></td>
        <td>HL7ATCorePatient</td>
        <td>.name.family</td>
        <td></td>
    </tr>
    <tr>
        <td>Vorname</td>
        <td></td>
        <td>HL7ATCorePatient</td>
        <td>.name.given</td>
        <td></td>
    </tr>
    <tr>
        <td>Geschlecht</td>
        <td></td>
        <td>HL7ATCorePatient</td>
        <td>.gender</td>
        <td></td>
    </tr>
    <tr>
        <td>Geburtsdatum JJJJMMTT</td>
        <td></td>
        <td>HL7ATCorePatient</td>
        <td>.birthDate</td>
        <td></td>
    </tr>
    <tr>
        <td>Staatenschlüssel</td>
        <td></td>
        <td>TBD Organization</td>
        <td>.contact.address.country</td>
        <td></td>
    </tr>
    <tr>
        <td>Instituionscode des zuständen Trägers</td>
        <td></td>
        <td>TBD Organization</td>
        <td>.identifier:institutionCode</td>
        <td></td>
    </tr>
    <tr>
        <td>Akronym des zuständigen Trägers</td>
        <td></td>
        <td>TBD Organization</td>
        <td>.alias</td>
        <td></td>
    </tr>
    <tr>
        <td>Kartennummer</td>
        <td></td>
        <td>Claim ? (to be discussed)</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>Endedatum des Anspruches JJJJMMTT</td>
        <td></td>
        <td>Claim ? (to be discussed)</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>Art der Anspruchsbescheinigung</td>
        <td></td>
        <td>Claim ? (to be discussed)</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>Beginndatum des Anspruches JJJJMMTT</td>
        <td></td>
        <td>Claim ? (to be discussed)</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>Bei EFORM &quot; ANFO mit der Wohnort-Stadt des Patienten</td>
        <td></td>
        <td>Claim ? (to be discussed)</td>
        <td></td>
        <td></td>
    </tr>
</table>
</div>
