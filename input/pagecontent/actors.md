### Krankenanstalt {#actor-KH}
<div xmlns="http://www.w3.org/1999/xhtml" class="container"> 
    Im MOPED-Kontext spielt eine Krankenanstalt (KH) eine zentrale Rolle als Initiator zahlreicher Prozesse und als Meldestelle für vielfältige Daten. Diese umfassen unter anderem die Patientenaufnahme, die Abfrage des Versicherungsstatus und -anspruchs, die Erfassung von Versorgungsdaten während der Patientenbehandlung, die Entlassung sowie die Initiierung der Leistungsabrechnung.
</div>
<pre class="mermaid">
    graph LR
    KH[Krankenanstalt]
    Moped[Moped] 
    KH --->|POST $aufnehmen| Moped 
    KH -->|POST $update| Moped
    KH -->|POST $anfragen| Moped
    KH -->|POST $entlassen| Moped
    KH -->|POST $abrechnen| Moped
    KH -->|POST $stornieren| Moped
    KH -->|POST $einspielen| Moped
    Moped -->|GET VAEResponse| KH
    Moped --->|GET ClaimResponse| KH
</pre>  

### Sozialversicherung {#actor-SV}
<div xmlns="http://www.w3.org/1999/xhtml" class="container"> 
    Im MOPED-Kontext übernimmt die Sozialversicherung (SV) eine zentrale Rolle, indem sie Rückmeldungen zur Versichertenanspruchserklärung bereitstellt, über die Entlassung von Patienten informiert wird und Benachrichtigungen über freigegebene Daten erhält. Darüber hinaus ist die SV verantwortlich für die Rückmeldung der Kostenmeldungsanforderung im Zusammenhang mit der Ausländerverrechnung sowie Regressen.
</div>
<pre class="mermaid">
    graph LR
    SV[Sozialversicherung]
    Moped[Moped] 
    Moped --->|GET VAERequest?status=active| SV
    Moped --->|GET ARKRequest?status=active| SV
    SV --->|POST $antworten| Moped
</pre>   

### Landesgesundheitsfonds {#actor-LGF}
<div xmlns="http://www.w3.org/1999/xhtml" class="container"> 
    Im MOPED-Kontext sind die Landesgesundheitsfonds (LGF) für das Scoring der Leistungen im Rahmen der Abrechnung verantwortlich. Sie geben Hinweise und Begründungen bei Abweisungen und fordern gegebenenfalls Korrekturen an. Sobald von den Krankenanstalten ein endgültiges Scoring vorliegt, wird der LGF informiert und vergibt anschließend die endgültige Freigabe. Der LGF stellt Kosteninformationen für die Ausländerverrechnung und Regresse zur Verfügung und erhält zusätzliche Informationen der SV über den Verrechnungsstatus.
</div>
<pre class="mermaid">
    graph LR
    LGF[Landesgesundheitsfonds]
    Moped[Moped] 
    Moped --->|GET Claim| LGF
    LGF --->|POST $entscheiden| Moped
    LGF --->|POST $melden| Moped
</pre>

### Bundesministerium für Soziales, Gesundheit, Pflege und Konsumentenschutz {#actor-BMSGPK}
<div xmlns="http://www.w3.org/1999/xhtml" class="container"> 
    Im MOPED-Kontext spielt das Bundesministerium für Soziales, Gesundheit, Pflege und Konsumentenschutz (BMSGPK) eine bedeutende Rolle, da nach der Abrechnung pseudonymisierte Daten freigegeben werden. Diese Daten liefern dem BMSGPK wichtige Informationen für die strategische Steuerung im Gesundheitswesen.
</div>
<pre class="mermaid">
    graph LR
    BMSGPK[BMSGPK]
    Moped[Moped] 
    Moped --->|GET Composition?status=final| BMSGPK 
    Moped --->|POST Measure/$evaluate-measure| BMSGPK
</pre>