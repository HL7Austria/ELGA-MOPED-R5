<script type="module">
  import mermaid from 'https://cdn.jsdelivr.net/npm/mermaid@11/dist/mermaid.esm.min.mjs';
</script>
<div xmlns="http://www.w3.org/1999/xhtml" class="container"> 
    Übersicht über alle Akteure:
</div>
TBD

### Krankenanstalt {#actor-KH}
<div xmlns="http://www.w3.org/1999/xhtml" class="container"> 
    Im MOPED-Kontext spielt eine Krankenanstalt (KH) eine zentrale Rolle als Initiator zahlreicher Prozesse und als Meldestelle für vielfältige Daten. Diese umfassen unter anderem die Patientenaufnahme, die Abfrage des Versicherungsstatus und -anspruchs, die Erfassung von Versorgungsdaten während der Patientenbehandlung, die Entlassung sowie die Initiierung der Leistungsabrechnung.
</div>
<pre class="mermaid">
    graph LR
    KH[Krankenanstalt]
    Moped[<a href="#top">Moped</a>] 
    KH --->|<a href="OperationDefinition-MOPED.Patient.Aufnehmen.html"> POST $aufnehmen</a>| Moped 
    KH -->|<a href="TBD"> POST $update</a>| Moped
    KH -->|<a href="OperationDefinition-MOPED.Patient.Entlassen.html"> POST $entlassen</a>| Moped
    KH -->|<a href="TBD"> POST $anfragen</a>| Moped
    KH -->|<a href="OperationDefinition-MOPED.Encounter.Abrechnen.html"> POST $abrechnen</a>| Moped
    KH -->|<a href="TBD"> POST $stornieren</a>| Moped
    Moped -->|<a href="StructureDefinition-MopedVAEResponse.html"> GET VAEResponse</a>| KH
    Moped --->|<a href="StructureDefinition-MopedLKFResponse.html"> GET ClaimResponse</a>| KH
</pre>  
<div xmlns="http://www.w3.org/1999/xhtml" class="container"> 

### Sozialversicherung {#actor-SV}
<div xmlns="http://www.w3.org/1999/xhtml" class="container"> 
    Im MOPED-Kontext übernimmt die Sozialversicherung (SV) eine zentrale Rolle, indem sie Rückmeldungen zur Versichertenanspruchserklärung bereitstellt, über die Entlassung von Patienten informiert wird und Benachrichtigungen über freigegebene Daten erhält. Darüber hinaus ist die SV verantwortlich für die Kostenmeldungsanforderung und Rückmeldungen im Zusammenhang mit der Ausländerverrechnung sowie Regressen.
</div>
<pre class="mermaid">
    graph LR
    SV[Sozialversicherung]
    Moped[<a href="#top">Moped</a>] 
    Moped --->|<a href="StructureDefinition-MopedVAERequest.html"> GET VAERequest?status=active</a>| SV
    Moped --->|<a href="StructureDefinition-MopedARKRequest.html"> GET ARKRequest?status=active</a>| SV
    SV --->|<a href="OperationDefinition-MOPED.VAEResponse.Beantworten.html"> POST $antworten</a>| Moped
</pre>   

### Landesgesundheitsfonds {#actor-LGF}
<div xmlns="http://www.w3.org/1999/xhtml" class="container"> 
    Im MOPED-Kontext sind die Landesgesundheitsfonds (LGF) für das Scoring der Leistungen im Rahmen der Abrechnung verantwortlich. Sie geben Hinweise und Begründungen bei Abweisungen und fordern gegebenenfalls Korrekturen an. Sobald von den Krankenanstalten ein endgültiges Scoring vorliegt, wird der LGF informiert und vergibt anschließend die endgültige Freigabe. Der LGF erhält zusätzliche Informationen der SV über den Verrechnungsstatus bei Ausländerverrechnung und Regressen.
</div>
<pre class="mermaid">
    graph LR
    LGF[Landesgesundheitsfonds]
    Moped[<a href="#top">Moped</a>] 
    Moped --->|<a href="StructureDefinition-MopedLKFRequest.html"> GET Claim</a>| LGF
    LGF --->|<a href="TBD Bestätigen Operation"> POST $bestaetigen</a>| Moped
    LGF --->|<a href="TBD ARK Melden"> POST $melden</a>| Moped
</pre>

### Bundesministerium für Soziales, Gesundheit, Pflege und Konsumentenschutz {#actor-BMSGPK}
<div xmlns="http://www.w3.org/1999/xhtml" class="container"> 
    Im MOPED-Kontext spielt das Bundesministerium für Soziales, Gesundheit, Pflege und Konsumentenschutz (BMSGPK) eine bedeutende Rolle, da nach der Abrechnung pseudonymisierte Daten freigegeben werden. Diese Daten liefern dem BMSGPK wichtige Informationen für die strategische Steuerung im Gesundheitswesen.
</div>
<pre class="mermaid">
    graph LR
    BMSGPK[BMSGPK]
    Moped[<a href="#top">Moped</a>] 
    Moped --->|GET Composition?status=final| BMSGPK 
    Moped --->|<a href="https://www.hl7.org/fhir/operation-measure-evaluate-measure.html"> POST Measure/$evaluate-measure</a>| BMSGPK
</pre>