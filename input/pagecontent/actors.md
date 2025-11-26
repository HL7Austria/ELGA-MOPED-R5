### Krankenanstalt {#actor-KH}
<div xmlns="http://www.w3.org/1999/xhtml" class="container"> 
    Im MOPED-Kontext spielt eine Krankenanstalt (KH) eine zentrale Rolle als Initiator zahlreicher Prozesse und als Meldestelle für vielfältige Daten. Diese umfassen unter anderem die Patientenaufnahme, die Abfrage des Versicherungsstatus und -anspruchs, die Erfassung von Versorgungsdaten während der Patientenbehandlung, die Entlassung sowie die Initiierung der Leistungsabrechnung.
</div>

<div class="mermaid">
    graph LR
    KH[Krankenanstalt]
    Moped[&lt;a href=&quot;#top&quot;&gt;Moped&lt;/a&gt;] 
    KH --->|"`&lt;a href=&quot;https://fhir.hl7.at/r5-ELGA-MOPED-main/OperationDefinition-MOPED.Patient.Aufnehmen.html&quot;&gt; POST $aufnehmen&lt;/a&gt;`"| Moped 
    KH -->|&lt;a href=&quot;OperationDefinition-MOPED.Daten.Update.html&quot;&gt; POST $update&lt;/a&gt;| Moped
    KH -->|&lt;a href=&quot;OperationDefinition-MOPED.VAERequest.Anfragen.html&quot;&gt; POST $anfragen&lt;/a&gt;| Moped
    KH -->|&lt;a href=&quot;OperationDefinition-MOPED.Patient.Entlassen.html&quot;&gt; POST $entlassen&lt;/a&gt;| Moped
    KH -->|&lt;a href=&quot;OperationDefinition-MOPED.Encounter.Abrechnen.html&quot;&gt; POST $abrechnen&lt;/a&gt;| Moped
    KH -->|&lt;a href=&quot;TBD&quot;&gt; POST $stornieren&lt;/a&gt;| Moped
    Moped -->|&lt;a href=&quot;StructureDefinition-MopedVAEResponse.html&quot;&gt; GET VAEResponse&lt;/a&gt;| KH
    Moped --->|&lt;a href=&quot;StructureDefinition-MopedLKFResponse.html&quot;&gt; GET ClaimResponse&lt;/a&gt;| KH
    
</div>  

### Sozialversicherung {#actor-SV}
<div xmlns="http://www.w3.org/1999/xhtml" class="container"> 
    Im MOPED-Kontext übernimmt die Sozialversicherung (SV) eine zentrale Rolle, indem sie Rückmeldungen zur Versichertenanspruchserklärung bereitstellt, über die Entlassung von Patienten informiert wird und Benachrichtigungen über freigegebene Daten erhält. Darüber hinaus ist die SV verantwortlich für die Rückmeldung der Kostenmeldungsanforderung im Zusammenhang mit der Ausländerverrechnung sowie Regressen.
</div>
<pre class="mermaid">
    graph LR
    SV[Sozialversicherung]
    Moped[&lt;a href=&quot;#top&quot;&gt;Moped&lt;/a&gt;] 
    Moped --->|&lt;a href=&quot;StructureDefinition-MopedVAERequest.html&quot;&gt; GET VAERequest?status=active&lt;/a&gt;| SV
    Moped --->|&lt;a href=&quot;StructureDefinition-MopedARKRequest.html&quot;&gt; GET ARKRequest?status=active&lt;/a&gt;| SV
    SV --->|&lt;a href=&quot;OperationDefinition-MOPED.Auf.Request.Antworten.html&quot;&gt; POST $antworten&lt;/a&gt;| Moped
</pre>   

### Landesgesundheitsfonds {#actor-LGF}
<div xmlns="http://www.w3.org/1999/xhtml" class="container"> 
    Im MOPED-Kontext sind die Landesgesundheitsfonds (LGF) für das Scoring der Leistungen im Rahmen der Abrechnung verantwortlich. Sie geben Hinweise und Begründungen bei Abweisungen und fordern gegebenenfalls Korrekturen an. Sobald von den Krankenanstalten ein endgültiges Scoring vorliegt, wird der LGF informiert und vergibt anschließend die endgültige Freigabe. Der LGF stellt Kosteninformationen für die Ausländerverrechnung und Regresse zur Verfügung und erhält zusätzliche Informationen der SV über den Verrechnungsstatus.
</div>
<pre class="mermaid">
    graph LR
    LGF[Landesgesundheitsfonds]
    Moped[&lt;a href=&quot;#top&quot;&gt;Moped&lt;/a&gt;] 
    Moped --->|&lt;a href=&quot;StructureDefinition-MopedLKFRequest.html&quot;&gt; GET Claim&lt;/a&gt;| LGF
    LGF --->|&lt;a href=&quot;OperationDefinition-MOPED.ClaimResponse.Entscheiden.html&quot;&gt; POST $entscheiden&lt;/a&gt;| Moped
    LGF --->|&lt;a href=&quot;OperationDefinition-MOPED.Claim.Melden.html&quot;&gt; POST $melden&lt;/a&gt;| Moped
</pre>

### Bundesministerium für Soziales, Gesundheit, Pflege und Konsumentenschutz {#actor-BMSGPK}
<div xmlns="http://www.w3.org/1999/xhtml" class="container"> 
    Im MOPED-Kontext spielt das Bundesministerium für Soziales, Gesundheit, Pflege und Konsumentenschutz (BMSGPK) eine bedeutende Rolle, da nach der Abrechnung pseudonymisierte Daten freigegeben werden. Diese Daten liefern dem BMSGPK wichtige Informationen für die strategische Steuerung im Gesundheitswesen.
</div>
<pre class="mermaid">
    graph LR
    BMSGPK[BMSGPK]
    Moped[&lt;a href=&quot;#top&quot;&gt;Moped&lt;/a&gt;] 
    Moped --->|GET Composition?status=final| BMSGPK 
    Moped --->|&lt;a href=&quot;https://www.hl7.org/fhir/operation-measure-evaluate-measure.html&quot;&gt; POST Measure/$evaluate-measure&lt;/a&gt;| BMSGPK
</pre>