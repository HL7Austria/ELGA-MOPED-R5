

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
### K01 -> FHIR
<div class="table-responsive">
<table class="table">
<thead><tr><th>Abkürzung</th><th>Beschreibung</th><th>FHIR Resource</th><th>Pfad</th><th>Referenz für Leistungsabrechnung</th><th>&nbsp;</th><th>Referenz für Versicherungsstatusabfrage</th><th>&nbsp;</th></tr></thead><tbody>
 <tr><td>SART</td><td>Satzart</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr>
 <tr><td>VPNR</td><td>Vertragspartnernummer der Krankenanstalt</td><td>Organization</td><td>.identifier</td><td>Claim</td><td>.provider</td><td>CoverageEligibilityRequest</td><td>.provider</td></tr>
 <tr><td>AUFZL</td><td>Aufnahmezahl</td><td>Encounter</td><td>.identifier</td><td>Claim</td><td>.encounter</td><td>&nbsp;</td><td>&nbsp;</td></tr>
 <tr><td>FANU</td><td>Fallnummer</td><td>Encounter</td><td>.identifier</td><td>Claim</td><td>.encounter</td><td>&nbsp;</td><td>&nbsp;</td></tr>
 <tr><td>KOST</td><td>Kostenträger (leistungszuständig)</td><td>Organization</td><td>.identifier</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr>
 <tr><td>VSTR</td><td>zuständiger Versicherungsträger</td><td>Organization</td><td>.identifier</td><td>Claim</td><td>.insurer</td><td>CoverageEligibilityRequest</td><td>.insurer</td></tr>
 <tr><td>AUFN</td><td>Aufnahme-/Ereignisdatum JJJJMMTT</td><td>Encounter</td><td>.actualPeriod.start</td><td>Claim</td><td>.encounter</td><td>CoverageEligibilityRequest</td><td>.servicedPeriod.start</td></tr>
 <tr><td>ENTL</td><td>Entlassungsdatum JJJJMMTT</td><td>Encounter</td><td>.actualPeriod.end</td><td>Claim</td><td>.encounter</td><td>CoverageEligibilityRequest</td><td>.servicedPeriod.end</td></tr>
 <tr><td>KOMM</td><td>Kommentarsatz</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr>
 <tr><td>VSNR</td><td>Versicherungsnummer des Hauptversicherten</td><td>Patient</td><td>.identifier:socialSecurityNumber</td><td>Claim</td><td>.patient</td><td>CoverageEligibilityRequest</td><td>.patient</td></tr>
 <tr><td>ZUNA</td><td>Zuname des Hauptversicherten</td><td>Patient</td><td>.name.family</td><td>Claim</td><td>.patient</td><td>CoverageEligibilityRequest</td><td>.patient</td></tr>
 <tr><td>VONA</td><td>Vorname des Hauptversicherten</td><td>Patient</td><td>.name.given</td><td>Claim</td><td>.patient</td><td>CoverageEligibilityRequest</td><td>.patient</td></tr>
 <tr><td>GESCHL</td><td>Geschlecht des Hauptversicherten</td><td>Patient</td><td>.gender.AdministrativeGenderAddition</td><td>Claim</td><td>.patient</td><td>CoverageEligibilityRequest</td><td>.patient</td></tr>
 <tr><td>GEBDAT</td><td>Geburtsdatum des Hauptversicherten JJJJMMTT</td><td>Patient</td><td>.birthdate</td><td>Claim</td><td>.patient</td><td>CoverageEligibilityRequest</td><td>.patient</td></tr>
 <tr><td>DSID</td><td>Datensatz-ID</td><td>Claim</td><td>.traceNumber</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr>
 <tr><td>VGR</td><td>Versichertengruppe/Kategorie</td><td>Coverage</td><td>.class</td><td>Claim</td><td>.insurance.coverage</td><td>CoverageEligibilityRequest</td><td>.insurance.coverage</td></tr>
 <tr><td>AVSNR</td><td>Versicherungsnummer des Mitversicherten</td><td>Patient</td><td>.identifier:socialSecurityNumber</td><td>Claim</td><td>.patient</td><td>CoverageEligibilityRequest</td><td>.patient</td></tr>
 <tr><td>AZUNA</td><td>Zuname de Mitversicherten</td><td>Patient</td><td>.name.family</td><td>Claim</td><td>.patient</td><td>CoverageEligibilityRequest</td><td>.patient</td></tr>
 <tr><td>AVONA</td><td>Vorname de Mitversicherten</td><td>Patient</td><td>.name.given</td><td>Claim</td><td>.patient</td><td>CoverageEligibilityRequest</td><td>.patient</td></tr>
 <tr><td>AGESCHL</td><td>Geschlecht des Mitversicherten</td><td>Patient</td><td>.gender.AdministrativeGenderAddition</td><td>Claim</td><td>.patient</td><td>CoverageEligibilityRequest</td><td>.patient</td></tr>
 <tr><td>AGEBDAT</td><td>Geburtsdatum des Mitversicherten JJJJMMTT</td><td>Patient</td><td>.birthdate</td><td>Claim</td><td>.patient</td><td>CoverageEligibilityRequest</td><td>.patient</td></tr>
 <tr><td>FECO</td><td>Fehlercode</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr>
 <tr><td>DSIDR</td><td>Datensatz-ID-Referenz</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr>
 <tr><td>BKANR</td><td>Krankenanstaltennummer des Bundesministeriums</td><td>Organization</td><td>.identifier</td><td>&nbsp;</td><td>&nbsp;</td><td>CoverageEligibilityRequest</td><td>.facility</td></tr>
 <tr><td>DVERS-ID</td><td>Datensatzversion ID-Teil</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr>
 <tr><td>DVERS-SA</td><td>Datensatzversion Satzart-Teil</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr>
 <tr><td>EREIG</td><td>Ereignisart</td><td>Encounter</td><td>.admission.admitSource</td><td>Claim</td><td>.encounter</td><td>CoverageEligibilityRequest</td><td>.item </td></tr>
 <tr><td>FKRA</td><td>Funktionscode der Abteilung lt. LKF</td><td>Organization</td><td>.identifier</td><td>Claim</td><td>.careTeam.provider</td><td>CoverageEligibilityRequest</td><td>item.facility</td></tr>
 <tr><td>FKRASU</td><td>Funktionssubcode der Abteilung lt. LKF</td><td>Organization</td><td>.identifier</td><td>Claim</td><td>.careTeam.provider</td><td>CoverageEligibilityRequest</td><td>item.facility</td></tr>
 <tr><td>KLAS</td><td>Allgemeine Gebührenklasse/Sonderklasse</td><td>Coverage</td><td>.class</td><td>Claim</td><td>.insurance.coverage</td><td>CoverageEligibilityRequest</td><td>.insurance.coverage</td></tr>
 <tr><td>STAAT</td><td>Staatsbürgerschaftsschlüssel</td><td>Patient</td><td>.citizenship</td><td>Claim</td><td>.patient</td><td>CoverageEligibilityRequest</td><td>.patient</td></tr>
 <tr><td>PASTR</td><td>Wohandresse des Patienten, Straße</td><td>Patient</td><td>.address.line</td><td>Claim</td><td>.patient</td><td>CoverageEligibilityRequest</td><td>.patient</td></tr>
 <tr><td>PALKZ</td><td>Wohnadresse des Patienten, Länderkennzeichen</td><td>Patient</td><td>.address.country</td><td>Claim</td><td>.patient</td><td>CoverageEligibilityRequest</td><td>.patient</td></tr>
 <tr><td>PAPLZL</td><td>Wohnadresse des Patienten, Postleitzahl</td><td>Patient</td><td>.address.postalCode</td><td>Claim</td><td>.patient</td><td>CoverageEligibilityRequest</td><td>.patient</td></tr>
 <tr><td>PAORT</td><td>Wohnadresse des Patienten, Ort</td><td>Patient</td><td>.address.city</td><td>Claim</td><td>.patient</td><td>CoverageEligibilityRequest</td><td>.patient</td></tr>
 <tr><td>VERDAU</td><td>Verdacht auf Arbeits-/Schülerunfall</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr>
 <tr><td>DIAG1</td><td>Diganose 1, ICD10 BMSGPK Schlüssel</td><td>Condition</td><td>.code</td><td>Claim</td><td>.diagnosis.diagnosis.diagnosisReferenc</td><td>CoverageEligibilityRequest</td><td>.item.diagnosis</td></tr>
 <tr><td>DIAG1U1</td><td>Diagnose 1, Untergliederung 1</td><td>Condition</td><td>.code</td><td>Claim</td><td>.diagnosis.diagnosis.diagnosisReferenc</td><td>CoverageEligibilityRequest</td><td>.item.diagnosis</td></tr>
 <tr><td>DIAG1U2</td><td>Diagnose 1, Untergliederung 2</td><td>Condition</td><td>.code</td><td>Claim</td><td>.diagnosis.diagnosis.diagnosisReferenc</td><td>CoverageEligibilityRequest</td><td>.item.diagnosis</td></tr>
 <tr><td>DIAG2</td><td>Diganose 2, ICD10 BMSGPK Schlüssel</td><td>Condition</td><td>.code</td><td>Claim</td><td>.diagnosis.diagnosis.diagnosisReferenc</td><td>CoverageEligibilityRequest</td><td>.item.diagnosis</td></tr>
 <tr><td>DIAG2U1</td><td>Diagnose 2,  Untergliederung 1</td><td>Condition</td><td>.code</td><td>Claim</td><td>.diagnosis.diagnosis.diagnosisReferenc</td><td>CoverageEligibilityRequest</td><td>.item.diagnosis</td></tr>
 <tr><td>DIAG2U2</td><td>Diagnose 2, Untergliederung 2</td><td>Condition</td><td>.code</td><td>Claim</td><td>.diagnosis.diagnosis.diagnosisReferenc</td><td>CoverageEligibilityRequest</td><td>.item.diagnosis</td></tr>
 <tr><td>DIAG3</td><td>Diganose 3, ICD10 BMSGPK Schlüssel</td><td>Condition</td><td>.code</td><td>Claim</td><td>.diagnosis.diagnosis.diagnosisReferenc</td><td>CoverageEligibilityRequest</td><td>.item.diagnosis</td></tr>
 <tr><td>DIAG3U1</td><td>Diagnose 3, Untergliederung 1</td><td>Condition</td><td>.code</td><td>Claim</td><td>.diagnosis.diagnosis.diagnosisReferenc</td><td>CoverageEligibilityRequest</td><td>.item.diagnosis</td></tr>
 <tr><td>DIAG3U2</td><td>Diagnose 3, Untergliederung 2</td><td>Condition</td><td>.code</td><td>Claim</td><td>.diagnosis.diagnosis.diagnosisReferenc</td><td>CoverageEligibilityRequest</td><td>.item.diagnosis</td></tr>
 <tr><td>FREVER</td><td>Fremdversschluden</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr>
 <tr><td>DIAG</td><td>Diagnose im Klartext,kann bei Codierung entfallen</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td></tr>
 <tr><td>URS</td><td>Ursache der Behandlung</td><td>Encounter</td><td>.reason</td><td>Claim</td><td>.encounter</td><td>&nbsp;</td><td>&nbsp;</td></tr>
 <tr><td>ENTBDAT</td><td>Entbindungstag JJJJMMTT</td><td>Procedure</td><td>.occurrence[x]</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr>
 <tr><td>USVPNR</td><td>Überweisende Stelle, Vertragspartnernummer</td><td>Organization</td><td>.identifier</td><td>Claim</td><td>.encounter.admission.origin</td><td>&nbsp;</td><td>&nbsp;</td></tr>
 <tr><td>USNA</td><td>Überweisende Stelle, Name</td><td>Organization</td><td>.name</td><td>Claim</td><td>.encounter.admission.origin</td><td>&nbsp;</td><td>&nbsp;</td></tr>
 <tr><td>USLKZ</td><td>Länderkennzeichen der überweisenden Stelle</td><td>Organization</td><td>.contact.address.country</td><td>Claim</td><td>.encounter.admission.origin</td><td>&nbsp;</td><td>&nbsp;</td></tr>
 <tr><td>USPLZL</td><td>Überweisende Stelle, Postleitzahl</td><td>Organization</td><td>.contact.address.postalCode</td><td>Claim</td><td>.encounter.admission.origin</td><td>&nbsp;</td><td>&nbsp;</td></tr>
 <tr><td>USORT</td><td>Überweisende Stelle, Ort</td><td>Organization</td><td>.contact.address.city</td><td>Claim</td><td>.encounter.admission.origin</td><td>&nbsp;</td><td>&nbsp;</td></tr>
 <tr><td>ERDAT</td><td>Ereignis-/Unfalldatum JJJJMMTT</td><td>Claim</td><td>.accident.date</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr>
 <tr><td>VTAG</td><td>Anzahl der Verlängerungstage</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr>
 <tr><td>VDAS</td><td>VDAS-ID, Ergebnis der Abfrage</td><td>CoverageEligibilityResponse</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td></td></tr>
</tbody></table>
</div>
### K03 -> FHIR
TBD
### K05 -> FHIR
TBD
### K09 -> FHIR
TBD
### K12 -> FHIR
TBD
### K13 -> FHIR
TBD
### K20 -> FHIR
TBD
### K21 -> FHIR
TBD
### K27 -> FHIR
TBD
