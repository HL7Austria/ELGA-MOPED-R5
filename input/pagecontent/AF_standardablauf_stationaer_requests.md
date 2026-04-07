  <h4>1: Aufnehmen</h4>
  <p>Aufnehmen Operation ausführen und alle bereits vorhandenen Informationen zu Coverage, Aufnahmediagnose, Patient,... mitgeben.</p>
  <div class="tabs">
    <div class="tab">
      <input type="radio" id="tab-request-1-stationaer" name="tab-group-1-stationaer" checked="true" />
      <label for="tab-request-1-stationaer" class="request-tab">Request</label>
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
      <input type="radio" id="tab-body-1-stationaer" name="tab-group-1-stationaer" />
      <label for="tab-body-1-stationaer">Request Body</label>
      <div class="content-in-tab">TBD mit der tatsächlichen Beispielressource ersetzen 
      {% fragment Encounter/PJ1Encounter JSON %}</div>
    </div>
  </div>


<h4>2: VAE Anfrage stellen</h4>
<p>VAE Anfrage an die SV stellen mit $anfragen</p>
<div class="tabs">
  <div class="tab">
    <input type="radio" id="tab-request-2-stationaer" name="tab-group-2-stationaer" checked="true" />
    <label for="tab-request-2-stationaer" class="request-tab">Request</label>
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
    <input type="radio" id="tab-body-2-stationaer" name="tab-group-2-stationaer" />
    <label for="tab-body-2-stationaer">Request Body</label>
    <div class="content-in-tab">TBD mit der tatsächlichen Beispielressource ersetzen
    {% fragment Encounter/PJ1Encounter JSON %}</div>
  </div>
</div>


<h4>3a: Offene VAEs abrufen</h4>
<p>offene VAEs vom Server abrufen</p>
<div class="tabs">
  <div class="tab">
    <input type="radio" id="tab-request-3a-stationaer" name="tab-group-3a-stationaer" checked="true" />
    <label for="tab-request-3a-stationaer" class="request-tab">Request</label>
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
    <input type="radio" id="tab-body-3a-stationaer" name="tab-group-3a-stationaer" />
    <label for="tab-body-3a-stationaer">Response Body</label>
    <div class="content-in-tab">TBD mit der tatsächlichen Beispielressource ersetzen
    {% fragment Encounter/PJ1Encounter JSON %}</div>
  </div>
</div>

<h4>3b: VAE beantworten</h4>
<p>VAE mit positiver Antwort einbringen</p>
<div class="tabs">
  <div class="tab">
    <input type="radio" id="tab-request-3b-stationaer" name="tab-group-3b-stationaer" checked="true" />
    <label for="tab-request-3b-stationaer" class="request-tab">Request</label>
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
    <input type="radio" id="tab-body-3b-stationaer" name="tab-group-3b-stationaer" />
    <label for="tab-body-3b-stationaer">Request Body</label>
    <div class="content-in-tab">TBD mit der tatsächlichen Beispielressource ersetzen
    {% fragment Encounter/PJ1Encounter JSON %}</div>
  </div>
</div>

<h4>4a: Aktuellen Fall abrufen</h4>
<p>Krankenanstalt ruft die aktuellen Falldaten ab (inklusive der neuen VAE Antwort)</p>
<div class="tabs">
  <div class="tab">
    <input type="radio" id="tab-request-4a-stationaer" name="tab-group-4a-stationaer" checked="true" />
    <label for="tab-request-4a-stationaer" class="request-tab">Request</label>
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
    <input type="radio" id="tab-body-4a-stationaer" name="tab-group-4a-stationaer" />
    <label for="tab-body-4a-stationaer">Response Body</label>
    <div class="content-in-tab">TBD mit der tatsächlichen Beispielressource ersetzen
    {% fragment Encounter/PJ1Encounter JSON %}</div>
  </div>
</div>

<h4>4b: Fall aktualisieren</h4>
<p>Verlegung auf Abteilung Innere Medizin einbringen</p>
<div class="tabs">
  <div class="tab">
    <input type="radio" id="tab-request-4b-stationaer" name="tab-group-4b-stationaer" checked="true" />
    <label for="tab-request-4b-stationaer" class="request-tab">Request</label>
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
    <input type="radio" id="tab-body-4b-stationaer" name="tab-group-4b-stationaer" />
    <label for="tab-body-4b-stationaer">Request Body</label>
    <div class="content-in-tab">TBD mit der tatsächlichen Beispielressource ersetzen
    {% fragment Encounter/PJ1Encounter JSON %}</div>
  </div>
</div>

<h4>5: Diagnose und Leistung erfassen</h4>
<p>Diagnosen und Leistungen zum Fall ergänzen</p>
<div class="tabs">
  <div class="tab">
    <input type="radio" id="tab-request-5-stationaer" name="tab-group-5-stationaer" checked="true" />
    <label for="tab-request-5-stationaer" class="request-tab">Request</label>
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
    <input type="radio" id="tab-body-5-stationaer" name="tab-group-5-stationaer" />
    <label for="tab-body-5-stationaer">Request Body</label>
    <div class="content-in-tab">TBD mit der tatsächlichen Beispielressource ersetzen
    {% fragment Encounter/PJ1Encounter JSON %}</div>
  </div>
</div>

<h4>6: Entlassung</h4>
<p>Susi Sonnenschein entlassen</p>
<div class="tabs">
  <div class="tab">
    <input type="radio" id="tab-request-6-stationaer" name="tab-group-6-stationaer" checked="true" />
    <label for="tab-request-6-stationaer" class="request-tab">Request</label>
    <div class="content-in-tab">
      <div class="request-panel">
        <div class="request-code">
          <span class="request-method-post">POST</span>
          <code class="request-url">[base]/Composition/{id}/_history/{version}/$entlassen</code>
        </div>
        <div class="request-meta">
          <strong>Headers:</strong>
          <code class="request-header">Content-Type: application/fhir+json</code>
        </div>
      </div>
    </div>
  </div>
  <div class="tab">
    <input type="radio" id="tab-body-6-stationaer" name="tab-group-6-stationaer" />
    <label for="tab-body-6-stationaer">Request Body</label>
    <div class="content-in-tab">TBD mit der tatsächlichen Beispielressource ersetzen
    {% fragment Encounter/PJ1Encounter JSON %}</div>
  </div>
</div>

<h4>7: Abrechnung einbringen</h4>
<p>Die Daten zur Abrechnung werden eingebracht und dem LGF als vorläufige Abrechnung zur Verfügung gestellt.</p>
<div class="tabs">
  <div class="tab">
    <input type="radio" id="tab-request-7-stationaer" name="tab-group-7-stationaer" checked="true" />
    <label for="tab-request-7-stationaer" class="request-tab">Request</label>
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
    <input type="radio" id="tab-body-7-stationaer" name="tab-group-7-stationaer" />
    <label for="tab-body-7-stationaer">Request Body</label>
    <div class="content-in-tab">TBD mit der tatsächlichen Beispielressource ersetzen
    {% fragment Encounter/PJ1Encounter JSON %}</div>
  </div>
</div>

<h4>8a: Unbeantwortete Abrechnungen abrufen</h4>
<p>unbeantwortete Abrechnungen abfragen, für welche noch keine Antwort (Genehmigung/Ablehnung) eingebracht wurde</p>
<div class="tabs">
  <div class="tab">
    <input type="radio" id="tab-request-8a-stationaer" name="tab-group-8a-stationaer" checked="true" />
    <label for="tab-request-8a-stationaer" class="request-tab">Request</label>
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
    <input type="radio" id="tab-body-8a-stationaer" name="tab-group-8a-stationaer" />
    <label for="tab-body-8a-stationaer">Response Body</label>
    <div class="content-in-tab">TBD mit der tatsächlichen Beispielressource ersetzen
    Hier würden typischerweise sehr viele Ergebnisse zurückgeliefert werden (alle derzeit für den LGF verfügbaren Abrechnungen, die noch keine Antwort erhalten haben).
    {% fragment Encounter/PJ1Encounter JSON %}</div>
  </div>
</div>

<h4>8b: Vorläufig genehmigen</h4>
<p>vorläufige Genehmigung (inkl. Bestätigung der Punkte einbringen)</p>
<div class="tabs">
  <div class="tab">
    <input type="radio" id="tab-request-8b-stationaer" name="tab-group-8b-stationaer" checked="true" />
    <label for="tab-request-8b-stationaer" class="request-tab">Request</label>
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
    <input type="radio" id="tab-body-8b-stationaer" name="tab-group-8b-stationaer" />
    <label for="tab-body-8b-stationaer">Request Body</label>
    <div class="content-in-tab">TBD mit der tatsächlichen Beispielressource ersetzen
    {% fragment Encounter/PJ1Encounter JSON %}</div>
  </div>
</div>


<h4>9a: Fall erneut abrufen</h4>
<p>Krankenanstalt ruft die aktuellen Falldaten ab (inklusive der neuen bestätigten Punkte)</p>
<div class="tabs">
  <div class="tab">
    <input type="radio" id="tab-request-9a-stationaer" name="tab-group-9a-stationaer" checked="true" />
    <label for="tab-request-9a-stationaer" class="request-tab">Request</label>
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
    <input type="radio" id="tab-body-9a-stationaer" name="tab-group-9a-stationaer" />
    <label for="tab-body-9a-stationaer">Response Body</label>
    <div class="content-in-tab">TBD mit der tatsächlichen Beispielressource ersetzen
    {% fragment Encounter/PJ1Encounter JSON %}</div>
  </div>
</div>


<h4>9b: Endgültig abrechnen</h4>
<p>Die endgültige Abrechnung wird eingebracht und dem LGF zur Verfügung gestellt.</p>
<div class="tabs">
  <div class="tab">
    <input type="radio" id="tab-request-9b-stationaer" name="tab-group-9b-stationaer" checked="true" />
    <label for="tab-request-9b-stationaer" class="request-tab">Request</label>
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
    <input type="radio" id="tab-body-9b-stationaer" name="tab-group-9b-stationaer" />
    <label for="tab-body-9b-stationaer">Request Body</label>
    <div class="content-in-tab">TBD mit der tatsächlichen Beispielressource ersetzen
    {% fragment Encounter/PJ1Encounter JSON %}</div>
  </div>
</div>


<h4>10a: Endgültige unbeantwortete Abrechnungen abrufen</h4>
<p>Die offenen endgültige Abrechnungen abfragen, für welche noch keine Antwort (Genehmigung/Ablehnung) eingebracht wurde.</p>
<div class="tabs">
  <div class="tab">
    <input type="radio" id="tab-request-10a-stationaer" name="tab-group-10a-stationaer" checked="true" />
    <label for="tab-request-10a-stationaer" class="request-tab">Request</label>
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
    <input type="radio" id="tab-body-10a-stationaer" name="tab-group-10a-stationaer" />
    <label for="tab-body-10a-stationaer">Response Body</label>
    <div class="content-in-tab">TBD mit der tatsächlichen Beispielressource ersetzen
    {% fragment Encounter/PJ1Encounter JSON %}</div>
  </div>
</div>


<h4>10b: Endgültig genehmigen</h4>
<p>Die endgültige Genehmigung (inkl. Bestätigung der Punkte einbringen) einbringen.</p>
<div class="tabs">
  <div class="tab">
    <input type="radio" id="tab-request-10b-stationaer" name="tab-group-10b-stationaer" checked="true" />
    <label for="tab-request-10b-stationaer" class="request-tab">Request</label>
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
    <input type="radio" id="tab-body-10b-stationaer" name="tab-group-10b-stationaer" />
    <label for="tab-body-10b-stationaer">Request Body</label>
    <div class="content-in-tab">TBD mit der tatsächlichen Beispielressource ersetzen
    {% fragment Encounter/PJ1Encounter JSON %}</div>
  </div>
</div>


<h4>11: Kosteninformation abrufen</h4>
<p>Alle verfügbaren Kosteninformationen werden von der SV abgerufen</p>
<div class="tabs">
  <div class="tab">
    <input type="radio" id="tab-request-11-stationaer" name="tab-group-11-stationaer" checked="true" />
    <label for="tab-request-11-stationaer" class="request-tab">Request</label>
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
    <input type="radio" id="tab-body-11-stationaer" name="tab-group-11-stationaer" />
    <label for="tab-body-11-stationaer">Response Body</label>
    <div class="content-in-tab">TBD mit der tatsächlichen Beispielressource ersetzen
    {% fragment Encounter/PJ1Encounter JSON %}</div>
  </div>
</div>


<h4>12: Finale Composition abrufen</h4>
<p>Die vollständig befüllten und vom LGF genehmigten Fälle werden vom Bund abgerufen.</p>
<div class="tabs">
  <div class="tab">
    <input type="radio" id="tab-request-12-stationaer" name="tab-group-12-stationaer" checked="true" />
    <label for="tab-request-12-stationaer" class="request-tab">Request</label>
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
    <input type="radio" id="tab-body-12-stationaer" name="tab-group-12-stationaer" />
    <label for="tab-body-12-stationaer">Response Body</label>
    <div class="content-in-tab">TBD mit der tatsächlichen Beispielressource ersetzen
    {% fragment Encounter/PJ1Encounter JSON %}</div>
  </div>
</div>


