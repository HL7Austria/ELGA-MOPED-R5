<script type="module">
  import mermaid from 'https://cdn.jsdelivr.net/npm/mermaid@11/dist/mermaid.esm.min.mjs';
</script>
<div xmlns="http://www.w3.org/1999/xhtml" class="container"> 
    Übersicht über alle Akteure:
</div>
<pre class="mermaid">
    graph LR
    KH[<a href="#actor-KH">Krankenanstalt</a>]
    SV[<a href="#actor-SV">Sozialversicherung</a>]
    BMSGPK[<a href="#actor-BMSGPK">BMSGPK</a>]
    LGF[<a href="#actor-LGF">Landesgesundheitsfonds</a>]
    Moped[Moped] 

    KH --->|<a href="OperationDefinition-MOPED.Patient.Aufnehmen.html"> $aufnehmen</a>| Moped 
    KH -->|<a href="OperationDefinition-MOPED.VAERequest.Anfragen.html"> $anfragen</a>| Moped
    KH -->|<a href="OperationDefinition-MOPED.Patient.Entlassen.html"> $entlassen</a>| Moped 
    KH -->|<a href="OperationDefinition-MOPED.Encounter.erfassen.html">$erfassen</a>| Moped
    KH -->|<a href="OperationDefinition-MOPED.Encounter.Abrechnen.html"> $abrechnen</a>| Moped
    Moped -->|<a href="StructureDefinition-MopedVAEResponse.html"> GET VAEResponse</a>| KH
    Moped --->|<a href="StructureDefinition-MopedLKFResponse.html"> GET ClaimResponse</a>| KH

    Moped --->|<a href="StructureDefinition-MopedLKFResponse.html"> GET ClaimResponse</a>| SV
    Moped --->|<a href="StructureDefinition-MopedVAERequest.html"> GET VAERequest</a>| SV
    SV --->|<a href="OperationDefinition-MOPED.VAEResponse.Beantworten.html"> $beantworten</a>| Moped

    Moped --->|<a href="StructureDefinition-MopedLKFRequest.html"> GET Claim</a>| LGF
    LGF --->|<a href="OperationDefinition-MOPED.ClaimResponse.Freigeben.html"> $freigeben</a>| Moped
    LGF --->|<a href="OperationDefinition-MOPED.ClaimResponse.Auffordern.html"> $auffordern</a>| Moped

    Moped --->|<a href="StructureDefinition-MopedLKFResponse.html"> GET ClaimResponse</a>| BMSGPK 
</pre>  

### Krankenanstalt {#actor-KH}
<div xmlns="http://www.w3.org/1999/xhtml" class="container"> 
    Im MOPED-Kontext spielt eine Krankenanstalt (KH) eine zentrale Rolle als Initiator zahlreicher Prozesse und als Meldestelle für vielfältige Daten. Diese umfassen unter anderem die Patientenaufnahme, die Abfrage des Versicherungsstatus und -anspruchs, die Erfassung von Versorgungsdaten während der Patientenbehandlung, die Entlassung sowie die Initiierung der Leistungsabrechnung.
</div>
<pre class="mermaid">
    graph LR
    KH[Krankenanstalt]
    Moped[<a href="#top">Moped</a>] 
    KH --->|<a href="OperationDefinition-MOPED.Patient.Aufnehmen.html"> $aufnehmen</a>| Moped 
    KH -->|<a href="OperationDefinition-MOPED.VAERequest.Anfragen.html"> $anfragen</a>| Moped
    KH -->|<a href="OperationDefinition-MOPED.Patient.Entlassen.html"> $entlassen</a>| Moped 
    KH -->|<a href="OperationDefinition-MOPED.Encounter.erfassen.html">$erfassen</a>| Moped
    KH -->|<a href="OperationDefinition-MOPED.Encounter.Abrechnen.html"> $abrechnen</a>| Moped
    Moped -->|<a href="StructureDefinition-MopedVAEResponse.html"> GET VAEResponse</a>| KH
    Moped --->|<a href="StructureDefinition-MopedLKFResponse.html"> GET ClaimResponse</a>| KH
</pre>

### Sozialversicherung {#actor-SV}
<div xmlns="http://www.w3.org/1999/xhtml" class="container"> 
    Im MOPED-Kontext übernimmt die Sozialversicherung (SV) eine zentrale Rolle, indem sie Rückmeldungen zur Versichertenanspruchserklärung bereitstellt, über die Entlassung von Patienten informiert wird und Benachrichtigungen über freigegebene Daten erhält. Darüber hinaus ist die SV verantwortlich für die Kostenmeldungsanforderung und Rückmeldungen im Zusammenhang mit der Ausländerverrechnung sowie Regressen.
</div>
<pre class="mermaid">
    graph LR
    SV[Sozialversicherung]
    Moped[<a href="#top">Moped</a>] 
    Moped --->|<a href="StructureDefinition-MopedLKFResponse.html"> GET ClaimResponse</a>| SV
    Moped --->|<a href="StructureDefinition-MopedVAERequest.html"> GET VAERequest</a>| SV
    SV --->|<a href="OperationDefinition-MOPED.VAEResponse.Beantworten.html"> $beantworten</a>| Moped
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
    LGF --->|<a href="OperationDefinition-MOPED.ClaimResponse.Freigeben.html"> $freigeben</a>| Moped
    LGF --->|<a href="OperationDefinition-MOPED.ClaimResponse.Auffordern.html"> $auffordern</a>| Moped
</pre>

### Bundesministerium für Soziales, Gesundheit, Pflege und Konsumentenschutz {#actor-BMSGPK}
<div xmlns="http://www.w3.org/1999/xhtml" class="container"> 
    Im MOPED-Kontext spielt das Bundesministerium für Soziales, Gesundheit, Pflege und Konsumentenschutz (BMSGPK) eine bedeutende Rolle, da nach der Abrechnung pseudonymisierte Daten freigegeben werden. Diese Daten liefern dem BMSGPK wichtige Informationen für die strategische Steuerung im Gesundheitswesen.
</div>
<pre class="mermaid">
    graph LR
    BMSGPK[BMSGPK]
    Moped[<a href="#top">Moped</a>] 
    Moped -->|<a href="StructureDefinition-MopedLKFResponse.html"> GET ClaimResponse</a>| BMSGPK   
</pre>

### EMS
<div xmlns="http://www.w3.org/1999/xhtml" class="container"> 
    TBD
</div>

### medMel
<div xmlns="http://www.w3.org/1999/xhtml" class="container"> 
    TBD
</div>

