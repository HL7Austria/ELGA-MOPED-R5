  <h4>1: Aufnehmen</h4>
  <p>Aufnehmen Operation ausführen und alle bereits vorhandenen Informationen zu Coverage, Aufnahmediagnose, Patient,... mitgeben.</p>
  <div class="tabs">
    <div class="tab">
      <input type="radio" id="tab-request-1" name="tab-group-1" checked="true" />
      <label for="tab-request-1" class="request-tab">Request</label>
      <div class="content-in-tab">
        <div class="request-panel">
          <div class="request-code">
            <span class="request-method-post">POST</span>
            <code class="request-url">[base]/$aufnehmen</code>
          </div>
          <div class="request-meta">
            <strong>Headers:</strong>
            <code class="request-header">Content-Type: application/fhir+json</code>
          </div>
        </div>
      </div>
    </div>
    <div class="tab">
      <input type="radio" id="tab-body-1" name="tab-group-1" />
      <label for="tab-body-1">Request Body</label>
      <div class="content-in-tab">TBD mit der tatsächlichen Beispielressource ersetzen 
      {% fragment Encounter/PJ1Encounter JSON %}</div>
    </div>
  </div>


<h4>2: VAE Anfrage stellen</h4>
<p>VAE Anfrage an die SV stellen mit $anfragen</p>
<div class="tabs">
  <div class="tab">
    <input type="radio" id="tab-request-2" name="tab-group-2" checked="true" />
    <label for="tab-request-2" class="request-tab">Request</label>
    <div class="content-in-tab">
      <div class="request-panel">
        <div class="request-code">
          <span class="request-method-post">POST</span>
          <code class="request-url">[base]/Composition/{id}/_history/{version}/$anfragen</code>
        </div>
        <div class="request-meta">
          <strong>Headers:</strong>
          <code class="request-header">Content-Type: application/fhir+json</code>
        </div>
      </div>
    </div>
  </div>
  <div class="tab">
    <input type="radio" id="tab-body-2" name="tab-group-2" />
    <label for="tab-body-2">Request Body</label>
    <div class="content-in-tab">TBD mit der tatsächlichen Beispielressource ersetzen
    {% fragment Encounter/PJ1Encounter JSON %}</div>
  </div>
</div>


<h4>3a: offene VAEs abrufen</h4>
<p>offene VAEs vom Server abrufen</p>
<div class="tabs">
  <div class="tab">
    <input type="radio" id="tab-request-3a" name="tab-group-3a" checked="true" />
    <label for="tab-request-3a" class="request-tab">Request</label>
    <div class="content-in-tab">
      <div class="request-panel request-panel--success">
        <div class="request-code">
          <span class="request-method-get">GET</span>
          <code class="request-url">[base]/ClaimResponse?status=active&amp;use=preauthorization</code>
        </div>
        <div class="request-meta">
          <strong>Headers:</strong>
          <code class="request-header">Accept: application/fhir+json</code>
        </div>
      </div>
    </div>
  </div>
  <div class="tab">
    <input type="radio" id="tab-body-3a" name="tab-group-3a" />
    <label for="tab-body-3a">Response Body</label>
    <div class="content-in-tab">TBD mit der tatsächlichen Beispielressource ersetzen
    {% fragment Encounter/PJ1Encounter JSON %}</div>
  </div>
</div>

<h4>3b: VAE beantworten</h4>
<p>VAE mit positiver Antwort einbringen</p>
<div class="tabs">
  <div class="tab">
    <input type="radio" id="tab-request-3b" name="tab-group-3b" checked="true" />
    <label for="tab-request-3b" class="request-tab">Request</label>
    <div class="content-in-tab">
      <div class="request-panel">
        <div class="request-code">
          <span class="request-method-post">POST</span>
          <code class="request-url">[base]/Composition/{id}/_history/{version}/$antworten</code>
        </div>
        <div class="request-meta">
          <strong>Headers:</strong>
          <code class="request-header">Content-Type: application/fhir+json</code>
        </div>
      </div>
    </div>
  </div>
  <div class="tab">
    <input type="radio" id="tab-body-3b" name="tab-group-3b" />
    <label for="tab-body-3b">Request Body</label>
    <div class="content-in-tab">TBD mit der tatsächlichen Beispielressource ersetzen
    {% fragment Encounter/PJ1Encounter JSON %}</div>
  </div>
</div>

<h4>4a: aktuellen Fall abrufen</h4>
<p>Krankenanstalt ruft die aktuellen Falldaten ab (inklusive der neuen VAE Antwort)</p>
<div class="tabs">
  <div class="tab">
    <input type="radio" id="tab-request-4a" name="tab-group-4a" checked="true" />
    <label for="tab-request-4a" class="request-tab">Request</label>
    <div class="content-in-tab">
      <div class="request-panel request-panel--success">
        <div class="request-code">
          <span class="request-method-get">GET</span>
          <code class="request-url">[base]/Composition/{id}</code>
        </div>
        <div class="request-meta">
          <strong>Headers:</strong>
          <code class="request-header">Accept: application/fhir+json</code>
        </div>
      </div>
    </div>
  </div>
  <div class="tab">
    <input type="radio" id="tab-body-4a" name="tab-group-4a" />
    <label for="tab-body-4a">Response Body</label>
    <div class="content-in-tab">TBD mit der tatsächlichen Beispielressource ersetzen
    {% fragment Encounter/PJ1Encounter JSON %}</div>
  </div>
</div>

<h4>4b: Fall aktualisieren</h4>
<p>Daten zum Kontakt mit der Abteilung für Radiologie ergänzen</p>
<div class="tabs">
  <div class="tab">
    <input type="radio" id="tab-request-4b" name="tab-group-4b" checked="true" />
    <label for="tab-request-4b" class="request-tab">Request</label>
    <div class="content-in-tab">
      <div class="request-panel">
        <div class="request-code">
          <span class="request-method-post">POST</span>
          <code class="request-url">[base]/Composition/{id}/_history/{version}/$update</code>
        </div>
        <div class="request-meta">
          <strong>Headers:</strong>
          <code class="request-header">Content-Type: application/fhir+json</code>
        </div>
      </div>
    </div>
  </div>
  <div class="tab">
    <input type="radio" id="tab-body-4b" name="tab-group-4b" />
    <label for="tab-body-4b">Request Body</label>
    <div class="content-in-tab">TBD mit der tatsächlichen Beispielressource ersetzen
    {% fragment Encounter/PJ1Encounter JSON %}</div>
  </div>
</div>

<h4>5: Diagnose und Leistung erfassen</h4>
<p>Diagnosen und Leistungen zum Fall ergänzen</p>
<div class="tabs">
  <div class="tab">
    <input type="radio" id="tab-request-5" name="tab-group-5" checked="true" />
    <label for="tab-request-5" class="request-tab">Request</label>
    <div class="content-in-tab">
      <div class="request-panel">
        <div class="request-code">
          <span class="request-method-post">POST</span>
          <code class="request-url">[base]/Composition/{id}/_history/{version}/$update</code>
        </div>
        <div class="request-meta">
          <strong>Headers:</strong>
          <code class="request-header">Content-Type: application/fhir+json</code>
        </div>
      </div>
    </div>
  </div>
  <div class="tab">
    <input type="radio" id="tab-body-5" name="tab-group-5" />
    <label for="tab-body-5">Request Body</label>
    <div class="content-in-tab">TBD mit der tatsächlichen Beispielressource ersetzen
    {% fragment Encounter/PJ1Encounter JSON %}</div>
  </div>
</div>

<h4>6: Falldaten ergänzen</h4>
<p>Restliche Falldaten für Amanda Ambulant ergänzen</p>
<div class="tabs">
  <div class="tab">
    <input type="radio" id="tab-request-6" name="tab-group-6" checked="true" />
    <label for="tab-request-6" class="request-tab">Request</label>
    <div class="content-in-tab">
      <div class="request-panel">
        <div class="request-code">
          <span class="request-method-post">POST</span>
          <code class="request-url">[base]/Composition/{id}/_history/{version}/$update</code>
        </div>
        <div class="request-meta">
          <strong>Headers:</strong>
          <code class="request-header">Content-Type: application/fhir+json</code>
        </div>
      </div>
    </div>
  </div>
  <div class="tab">
    <input type="radio" id="tab-body-6" name="tab-group-6" />
    <label for="tab-body-6">Request Body</label>
    <div class="content-in-tab">TBD mit der tatsächlichen Beispielressource ersetzen
    {% fragment Encounter/PJ1Encounter JSON %}</div>
  </div>
</div>

<h4>7: Abrechnung einbringen</h4>
<p>Die Daten zur Abrechnung werden eingebracht und dem LGF als vorläufige Abrechnung zur Verfügung gestellt.</p>
<div class="tabs">
  <div class="tab">
    <input type="radio" id="tab-request-7" name="tab-group-7" checked="true" />
    <label for="tab-request-7" class="request-tab">Request</label>
    <div class="content-in-tab">
      <div class="request-panel">
        <div class="request-code">
          <span class="request-method-post">POST</span>
          <code class="request-url">[base]/Composition/{id}/_history/{version}/$abrechnen</code>
        </div>
        <div class="request-meta">
          <strong>Headers:</strong>
          <code class="request-header">Content-Type: application/fhir+json</code>
        </div>
      </div>
    </div>
  </div>
  <div class="tab">
    <input type="radio" id="tab-body-7" name="tab-group-7" />
    <label for="tab-body-7">Request Body</label>
    <div class="content-in-tab">TBD mit der tatsächlichen Beispielressource ersetzen
    {% fragment Encounter/PJ1Encounter JSON %}</div>
  </div>
</div>

<h4>8a: offene Abrechnungen abrufen</h4>
<p>offene Abrechnungen abfragen, für welche noch keine Antwort (Genehmigung/Ablehnung) eingebracht wurde</p>
<div class="tabs">
  <div class="tab">
    <input type="radio" id="tab-request-8a" name="tab-group-8a" checked="true" />
    <label for="tab-request-8a" class="request-tab">Request</label>
    <div class="content-in-tab">
      <div class="request-panel request-panel--success">
        <div class="request-code">
          <span class="request-method-get">GET</span>
          <code class="request-url">[base]/ClaimResponse?status=active&amp;use=claim&amp;_has:ClaimResponse:request:status:not=active</code>
        </div>
        <div class="request-meta">
          <strong>Headers:</strong>
          <code class="request-header">Accept: application/fhir+json</code>
        </div>
      </div>
    </div>
  </div>
  <div class="tab">
    <input type="radio" id="tab-body-8a" name="tab-group-8a" />
    <label for="tab-body-8a">Response Body</label>
    <div class="content-in-tab">TBD mit der tatsächlichen Beispielressource ersetzen
    Hier würden typischerweise sehr viele Ergebnisse zurückgeliefert werden (alle derzeit für den LGF verfügbaren Abrechnungen, die noch keine Antwort erhalten haben).
    {% fragment Encounter/PJ1Encounter JSON %}</div>
  </div>
</div>

<h4>8b: vorläufig genehmigen</h4>
<p>vorläufige Genehmigung (inkl. Bestätigung der Punkte einbringen)</p>
<div class="tabs">
  <div class="tab">
    <input type="radio" id="tab-request-8b" name="tab-group-8b" checked="true" />
    <label for="tab-request-8b" class="request-tab">Request</label>
    <div class="content-in-tab">
      <div class="request-panel">
        <div class="request-code">
          <span class="request-method-post">POST</span>
          <code class="request-url">[base]/Composition/{id}/_history/{version}/$genehmigen</code>
        </div>
        <div class="request-meta">
          <strong>Headers:</strong>
          <code class="request-header">Content-Type: application/fhir+json</code>
        </div>
      </div>
    </div>
  </div>
  <div class="tab">
    <input type="radio" id="tab-body-8b" name="tab-group-8b" />
    <label for="tab-body-8b">Request Body</label>
    <div class="content-in-tab">TBD mit der tatsächlichen Beispielressource ersetzen
    {% fragment Encounter/PJ1Encounter JSON %}</div>
  </div>
</div>


<h4>9a: Fall erneut abrufen</h4>
<p>Krankenanstalt ruft die aktuellen Falldaten ab (inklusive der neuen bestätigten Punkte)</p>
<div class="tabs">
  <div class="tab">
    <input type="radio" id="tab-request-9a" name="tab-group-9a" checked="true" />
    <label for="tab-request-9a" class="request-tab">Request</label>
    <div class="content-in-tab">
      <div class="request-panel request-panel--success">
        <div class="request-code">
          <span class="request-method-get">GET</span>
          <code class="request-url">[base]/Composition/{id}</code>
        </div>
        <div class="request-meta">
          <strong>Headers:</strong>
          <code class="request-header">Accept: application/fhir+json</code>
        </div>
      </div>
    </div>
  </div>
  <div class="tab">
    <input type="radio" id="tab-body-9a" name="tab-group-9a" />
    <label for="tab-body-9a">Response Body</label>
    <div class="content-in-tab">TBD mit der tatsächlichen Beispielressource ersetzen
    {% fragment Encounter/PJ1Encounter JSON %}</div>
  </div>
</div>


<h4>9b: final abrechnen</h4>
<p>Die endgültige Abrechnung wird eingebracht und dem LGF zur Verfügung gestellt.</p>
<div class="tabs">
  <div class="tab">
    <input type="radio" id="tab-request-9b" name="tab-group-9b" checked="true" />
    <label for="tab-request-9b" class="request-tab">Request</label>
    <div class="content-in-tab">
      <div class="request-panel">
        <div class="request-code">
          <span class="request-method-post">POST</span>
          <code class="request-url">[base]/Composition/{id}/_history/{version}/$abrechnen</code>
        </div>
        <div class="request-meta">
          <strong>Headers:</strong>
          <code class="request-header">Content-Type: application/fhir+json</code>
        </div>
      </div>
    </div>
  </div>
  <div class="tab">
    <input type="radio" id="tab-body-9b" name="tab-group-9b" />
    <label for="tab-body-9b">Request Body</label>
    <div class="content-in-tab">TBD mit der tatsächlichen Beispielressource ersetzen
    {% fragment Encounter/PJ1Encounter JSON %}</div>
  </div>
</div>


<h4>10a: endgültige offene Abrechnung abrufen</h4>
<p>Die offenen endgültige Abrechnungen abfragen, für welche noch keine Antwort (Genehmigung/Ablehnung) eingebracht wurde.</p>
<div class="tabs">
  <div class="tab">
    <input type="radio" id="tab-request-10a" name="tab-group-10a" checked="true" />
    <label for="tab-request-10a" class="request-tab">Request</label>
    <div class="content-in-tab">
      <div class="request-panel request-panel--success">
        <div class="request-code">
          <span class="request-method-get">GET</span>
          <code class="request-url">[base]/ClaimResponse?status=active&amp;use=claim&amp;_endgueltig=true&amp;_has:ClaimResponse:request:status:not=active</code>
        </div>
        <div class="request-meta">
          <strong>Headers:</strong>
          <code class="request-header">Accept: application/fhir+json</code>
        </div>
      </div>
    </div>
  </div>
  <div class="tab">
    <input type="radio" id="tab-body-10a" name="tab-group-10a" />
    <label for="tab-body-10a">Response Body</label>
    <div class="content-in-tab">TBD mit der tatsächlichen Beispielressource ersetzen
    {% fragment Encounter/PJ1Encounter JSON %}</div>
  </div>
</div>


<h4>10b: endgültig genehmigen</h4>
<p>Die endgültige Genehmigung (inkl. Bestätigung der Punkte einbringen) einbringen.</p>
<div class="tabs">
  <div class="tab">
    <input type="radio" id="tab-request-10b" name="tab-group-10b" checked="true" />
    <label for="tab-request-10b" class="request-tab">Request</label>
    <div class="content-in-tab">
      <div class="request-panel">
        <div class="request-code">
          <span class="request-method-post">POST</span>
          <code class="request-url">[base]/Composition/{id}/_history/{version}/$genehmigen</code>
        </div>
        <div class="request-meta">
          <strong>Headers:</strong>
          <code class="request-header">Content-Type: application/fhir+json</code>
        </div>
      </div>
    </div>
  </div>
  <div class="tab">
    <input type="radio" id="tab-body-10b" name="tab-group-10b" />
    <label for="tab-body-10b">Request Body</label>
    <div class="content-in-tab">TBD mit der tatsächlichen Beispielressource ersetzen
    {% fragment Encounter/PJ1Encounter JSON %}</div>
  </div>
</div>


<h4>11: Kosteninformation abrufen</h4>
<p>Alle verfügbaren Kosteninformationen werden von der SV abgerufen</p>
<div class="tabs">
  <div class="tab">
    <input type="radio" id="tab-request-11" name="tab-group-11" checked="true" />
    <label for="tab-request-11" class="request-tab">Request</label>
    <div class="content-in-tab">
      <div class="request-panel request-panel--success">
        <div class="request-code">
          <span class="request-method-get">GET</span>
          <code class="request-url">[base]/LKFResponse?_endgueltig=true</code>
        </div>
        <div class="request-meta">
          <strong>Headers:</strong>
          <code class="request-header">Accept: application/fhir+json</code>
        </div>
      </div>
    </div>
  </div>
  <div class="tab">
    <input type="radio" id="tab-body-11" name="tab-group-11" />
    <label for="tab-body-11">Response Body</label>
    <div class="content-in-tab">TBD mit der tatsächlichen Beispielressource ersetzen
    {% fragment Encounter/PJ1Encounter JSON %}</div>
  </div>
</div>


<h4>12: Finale Composition abrufen</h4>
<p>Die vollständig befüllten und vom LGF genehmigten Fälle werden vom Bund abgerufen.</p>
<div class="tabs">
  <div class="tab">
    <input type="radio" id="tab-request-12" name="tab-group-12" checked="true" />
    <label for="tab-request-12" class="request-tab">Request</label>
    <div class="content-in-tab">
      <div class="request-panel request-panel--success">
        <div class="request-code">
          <span class="request-method-get">GET</span>
          <code class="request-url">[base]/Composition?status=final</code>
        </div>
        <div class="request-meta">
          <strong>Headers:</strong>
          <code class="request-header">Accept: application/fhir+json</code>
        </div>
      </div>
    </div>
  </div>
  <div class="tab">
    <input type="radio" id="tab-body-12" name="tab-group-12" />
    <label for="tab-body-12">Response Body</label>
    <div class="content-in-tab">TBD mit der tatsächlichen Beispielressource ersetzen
    {% fragment Encounter/PJ1Encounter JSON %}</div>
  </div>
</div>


