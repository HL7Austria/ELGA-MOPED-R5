  <h4>1: Aufnehmen</h4>
  <p>Aufnehmen Operation ausführen und alle bereits vorhandenen Informationen zu Coverage, Aufnahmediagnose, Patient,... mitgeben.</p>
  <div class="tabs">
    <div class="tab">
      <input type="radio" id="tab-request-1-ambulant" name="tab-group-1-ambulant" checked="true" />
      <label for="tab-request-1-ambulant" class="request-tab">Request</label>
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
      <input type="radio" id="tab-body-1-ambulant" name="tab-group-1-ambulant" />
      <label for="tab-body-1-ambulant">Request Body</label>
      <div class="content-in-tab">TBD mit der tatsächlichen Beispielressource ersetzen 
      {% fragment Encounter/PJ1Encounter JSON %}</div>
    </div>
  </div>


<h4>2: VAE Anfrage stellen</h4>
<p>VAE Anfrage an die SV stellen mit $anfragen</p>
<div class="tabs">
  <div class="tab">
    <input type="radio" id="tab-request-2-ambulant" name="tab-group-2-ambulant" checked="true" />
    <label for="tab-request-2-ambulant" class="request-tab">Request</label>
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
    <input type="radio" id="tab-body-2-ambulant" name="tab-group-2-ambulant" />
    <label for="tab-body-2-ambulant">Request Body</label>
    <div class="content-in-tab">TBD mit der tatsächlichen Beispielressource ersetzen
    {% fragment Encounter/PJ1Encounter JSON %}</div>
  </div>
</div>


<h4>3a: Offene VAEs abrufen</h4>
<p>offene VAEs vom Server abrufen</p>
<div class="tabs">
  <div class="tab">
    <input type="radio" id="tab-request-3a-ambulant" name="tab-group-3a-ambulant" checked="true" />
    <label for="tab-request-3a-ambulant" class="request-tab">Request</label>
    <div class="content-in-tab">
      <div class="request-panel request-panel--success">
        <div class="request-code">
          <span class="request-method-get">GET</span>
          <code class="request-url">[base]/Claim?status=active&amp;use=preauthorization&amp;_has:ClaimResponse:request:status:not=active</code>
        </div>
        <div class="request-meta">
          <strong>Headers:</strong>
          <code class="request-header">Accept: application/fhir+json</code>
        </div>
      </div>
    </div>
  </div>
  <div class="tab">
    <input type="radio" id="tab-body-3a-ambulant" name="tab-group-3a-ambulant" />
    <label for="tab-body-3a-ambulant">Response Body</label>
    <div class="content-in-tab">TBD mit der tatsächlichen Beispielressource ersetzen
    {% fragment Encounter/PJ1Encounter JSON %}</div>
  </div>
</div>

<h4>3b: VAE beantworten</h4>
<p>VAE mit positiver Antwort einbringen</p>
<div class="tabs">
  <div class="tab">
    <input type="radio" id="tab-request-3b-ambulant" name="tab-group-3b-ambulant" checked="true" />
    <label for="tab-request-3b-ambulant" class="request-tab">Request</label>
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
    <input type="radio" id="tab-body-3b-ambulant" name="tab-group-3b-ambulant" />
    <label for="tab-body-3b-ambulant">Request Body</label>
    <div class="content-in-tab">TBD mit der tatsächlichen Beispielressource ersetzen
    {% fragment Encounter/PJ1Encounter JSON %}</div>
  </div>
</div>

<h4>4a: Aktuellen Fall abrufen</h4>
<p>Krankenanstalt ruft die aktuellen Falldaten ab (inklusive der neuen VAE Antwort)</p>
<div class="tabs">
  <div class="tab">
    <input type="radio" id="tab-request-4a-ambulant" name="tab-group-4a-ambulant" checked="true" />
    <label for="tab-request-4a-ambulant" class="request-tab">Request</label>
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
    <input type="radio" id="tab-body-4a-ambulant" name="tab-group-4a-ambulant" />
    <label for="tab-body-4a-ambulant">Response Body</label>
    <div class="content-in-tab">TBD mit der tatsächlichen Beispielressource ersetzen
    {% fragment Encounter/PJ1Encounter JSON %}</div>
  </div>
</div>

<h4>4b: Fall aktualisieren</h4>
<p>Daten zum Kontakt mit der Abteilung für Radiologie ergänzen</p>
<div class="tabs">
  <div class="tab">
    <input type="radio" id="tab-request-4b-ambulant" name="tab-group-4b-ambulant" checked="true" />
    <label for="tab-request-4b-ambulant" class="request-tab">Request</label>
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
    <input type="radio" id="tab-body-4b-ambulant" name="tab-group-4b-ambulant" />
    <label for="tab-body-4b-ambulant">Request Body</label>
    <div class="content-in-tab">TBD mit der tatsächlichen Beispielressource ersetzen
    {% fragment Encounter/PJ1Encounter JSON %}</div>
  </div>
</div>

<h4>5: Diagnose und Leistung erfassen</h4>
<p>Diagnosen und Leistungen zum Fall ergänzen</p>
<div class="tabs">
  <div class="tab">
    <input type="radio" id="tab-request-5-ambulant" name="tab-group-5-ambulant" checked="true" />
    <label for="tab-request-5-ambulant" class="request-tab">Request</label>
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
    <input type="radio" id="tab-body-5-ambulant" name="tab-group-5-ambulant" />
    <label for="tab-body-5-ambulant">Request Body</label>
    <div class="content-in-tab">TBD mit der tatsächlichen Beispielressource ersetzen
    {% fragment Encounter/PJ1Encounter JSON %}</div>
  </div>
</div>

<h4>6: Falldaten ergänzen</h4>
<p>Restliche Falldaten für Amanda Ambulant ergänzen</p>
<div class="tabs">
  <div class="tab">
    <input type="radio" id="tab-request-6-ambulant" name="tab-group-6-ambulant" checked="true" />
    <label for="tab-request-6-ambulant" class="request-tab">Request</label>
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
    <input type="radio" id="tab-body-6-ambulant" name="tab-group-6-ambulant" />
    <label for="tab-body-6-ambulant">Request Body</label>
    <div class="content-in-tab">TBD mit der tatsächlichen Beispielressource ersetzen
    {% fragment Encounter/PJ1Encounter JSON %}</div>
  </div>
</div>

<h4>7: Abrechnung einbringen</h4>
<p>Die Daten zur Abrechnung werden eingebracht und dem LGF als vorläufige Abrechnung zur Verfügung gestellt.</p>
<div class="tabs">
  <div class="tab">
    <input type="radio" id="tab-request-7-ambulant" name="tab-group-7-ambulant" checked="true" />
    <label for="tab-request-7-ambulant" class="request-tab">Request</label>
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
    <input type="radio" id="tab-body-7-ambulant" name="tab-group-7-ambulant" />
    <label for="tab-body-7-ambulant">Request Body</label>
    <div class="content-in-tab">TBD mit der tatsächlichen Beispielressource ersetzen
    {% fragment Encounter/PJ1Encounter JSON %}</div>
  </div>
</div>

<h4>8a: Unbeantwortete Abrechnungen abrufen</h4>
<p>Unbeantwortete Abrechnungen abfragen, für welche noch keine Antwort (Genehmigung/Ablehnung) eingebracht wurde</p>
<div class="tabs">
  <div class="tab">
    <input type="radio" id="tab-request-8a-ambulant" name="tab-group-8a-ambulant" checked="true" />
    <label for="tab-request-8a-ambulant" class="request-tab">Request</label>
    <div class="content-in-tab">
      <div class="request-panel request-panel--success">
        <div class="request-code">
          <span class="request-method-get">GET</span>
          <code class="request-url">[base]/Claim?status=active&amp;use=claim&amp;_has:ClaimResponse:request:status:not=active</code>
        </div>
        <div class="request-meta">
          <strong>Headers:</strong>
          <code class="request-header">Accept: application/fhir+json</code>
        </div>
      </div>
    </div>
  </div>
  <div class="tab">
    <input type="radio" id="tab-body-8a-ambulant" name="tab-group-8a-ambulant" />
    <label for="tab-body-8a-ambulant">Response Body</label>
    <div class="content-in-tab">TBD mit der tatsächlichen Beispielressource ersetzen
    Hier würden typischerweise sehr viele Ergebnisse zurückgeliefert werden (alle derzeit für den LGF verfügbaren Abrechnungen, die noch keine Antwort erhalten haben).
    {% fragment Encounter/PJ1Encounter JSON %}</div>
  </div>
</div>

<h4>8b: Vorläufig genehmigen</h4>
<p>vorläufige Genehmigung (inkl. Bestätigung der Punkte einbringen)</p>
<div class="tabs">
  <div class="tab">
    <input type="radio" id="tab-request-8b-ambulant" name="tab-group-8b-ambulant" checked="true" />
    <label for="tab-request-8b-ambulant" class="request-tab">Request</label>
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
    <input type="radio" id="tab-body-8b-ambulant" name="tab-group-8b-ambulant" />
    <label for="tab-body-8b-ambulant">Request Body</label>
    <div class="content-in-tab">TBD mit der tatsächlichen Beispielressource ersetzen
    {% fragment Encounter/PJ1Encounter JSON %}</div>
  </div>
</div>


<h4>9a: Fall erneut abrufen</h4>
<p>Krankenanstalt ruft die aktuellen Falldaten ab (inklusive der neuen bestätigten Punkte)</p>
<div class="tabs">
  <div class="tab">
    <input type="radio" id="tab-request-9a-ambulant" name="tab-group-9a-ambulant" checked="true" />
    <label for="tab-request-9a-ambulant" class="request-tab">Request</label>
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
    <input type="radio" id="tab-body-9a-ambulant" name="tab-group-9a-ambulant" />
    <label for="tab-body-9a-ambulant">Response Body</label>
    <div class="content-in-tab">TBD mit der tatsächlichen Beispielressource ersetzen
    {% fragment Encounter/PJ1Encounter JSON %}</div>
  </div>
</div>


<h4>9b: Endgültig abrechnen</h4>
<p>Die endgültige Abrechnung wird eingebracht und dem LGF zur Verfügung gestellt.</p>
<div class="tabs">
  <div class="tab">
    <input type="radio" id="tab-request-9b-ambulant" name="tab-group-9b-ambulant" checked="true" />
    <label for="tab-request-9b-ambulant" class="request-tab">Request</label>
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
    <input type="radio" id="tab-body-9b-ambulant" name="tab-group-9b-ambulant" />
    <label for="tab-body-9b-ambulant">Request Body</label>
    <div class="content-in-tab">TBD mit der tatsächlichen Beispielressource ersetzen
    {% fragment Encounter/PJ1Encounter JSON %}</div>
  </div>
</div>


<h4>10a: Endgültige unbeantwortete Abrechnung abrufen</h4>
<p>Die offenen endgültige Abrechnungen abfragen, für welche noch keine Antwort (Genehmigung/Ablehnung) eingebracht wurde.</p>
<div class="tabs">
  <div class="tab">
    <input type="radio" id="tab-request-10a-ambulant" name="tab-group-10a-ambulant" checked="true" />
    <label for="tab-request-10a-ambulant" class="request-tab">Request</label>
    <div class="content-in-tab">
      <div class="request-panel request-panel--success">
        <div class="request-code">
          <span class="request-method-get">GET</span>
          <code class="request-url">[base]/Claim?status=active&amp;use=claim&amp;endgueltig=true&amp;_has:ClaimResponse:request:status:not=active</code>
        </div>
        <div class="request-meta">
          <strong>Headers:</strong>
          <code class="request-header">Accept: application/fhir+json</code>
        </div>
      </div>
    </div>
  </div>
  <div class="tab">
    <input type="radio" id="tab-body-10a-ambulant" name="tab-group-10a-ambulant" />
    <label for="tab-body-10a-ambulant">Response Body</label>
    <div class="content-in-tab">TBD mit der tatsächlichen Beispielressource ersetzen
    {% fragment Encounter/PJ1Encounter JSON %}</div>
  </div>
</div>


<h4>10b: Endgültig genehmigen</h4>
<p>Die endgültige Genehmigung (inkl. Bestätigung der Punkte einbringen) einbringen.</p>
<div class="tabs">
  <div class="tab">
    <input type="radio" id="tab-request-10b-ambulant" name="tab-group-10b-ambulant" checked="true" />
    <label for="tab-request-10b-ambulant" class="request-tab">Request</label>
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
    <input type="radio" id="tab-body-10b-ambulant" name="tab-group-10b-ambulant" />
    <label for="tab-body-10b-ambulant">Request Body</label>
    <div class="content-in-tab">TBD mit der tatsächlichen Beispielressource ersetzen
    {% fragment Encounter/PJ1Encounter JSON %}</div>
  </div>
</div>


<h4>11: Kosteninformation abrufen</h4>
<p>Alle verfügbaren Kosteninformationen werden von der SV abgerufen</p>
<div class="tabs">
  <div class="tab">
    <input type="radio" id="tab-request-11-ambulant" name="tab-group-11-ambulant" checked="true" />
    <label for="tab-request-11-ambulant" class="request-tab">Request</label>
    <div class="content-in-tab">
      <div class="request-panel request-panel--success">
        <div class="request-code">
          <span class="request-method-get">GET</span>
          <code class="request-url">[base]/ClaimResponse?status=active&amp;use=claim&amp;endgueltig=true</code>
        </div>
        <div class="request-meta">
          <strong>Headers:</strong>
          <code class="request-header">Accept: application/fhir+json</code>
        </div>
      </div>
    </div>
  </div>
  <div class="tab">
    <input type="radio" id="tab-body-11-ambulant" name="tab-group-11-ambulant" />
    <label for="tab-body-11-ambulant">Response Body</label>
    <div class="content-in-tab">TBD mit der tatsächlichen Beispielressource ersetzen
    {% fragment Encounter/PJ1Encounter JSON %}</div>
  </div>
</div>


<h4>12: Finale Composition abrufen</h4>
<p>Die vollständig befüllten und vom LGF genehmigten Fälle werden vom Bund abgerufen.</p>
<div class="tabs">
  <div class="tab">
    <input type="radio" id="tab-request-12-ambulant" name="tab-group-12-ambulant" checked="true" />
    <label for="tab-request-12-ambulant" class="request-tab">Request</label>
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
    <input type="radio" id="tab-body-12-ambulant" name="tab-group-12-ambulant" />
    <label for="tab-body-12-ambulant">Response Body</label>
    <div class="content-in-tab">TBD mit der tatsächlichen Beispielressource ersetzen
    {% fragment Encounter/PJ1Encounter JSON %}</div>
  </div>
</div>


