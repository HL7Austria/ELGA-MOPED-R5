  <h4>1: Aufnehmen</h4>
  <p>Aufnehmen Operation ausführen und alle bereits vorhandenen Informationen zu Selbstzahler-Coverage, Aufnahmediagnose, Patient,... mitgeben.</p>
  <div class="tabs">
    <div class="tab">
      <input type="radio" id="tab-request-1-selbst" name="tab-group-1-selbst" checked="true" />
      <label for="tab-request-1-selbst" class="request-tab">Request</label>
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
      <input type="radio" id="tab-body-1-selbst" name="tab-group-1-selbst" />
      <label for="tab-body-1-selbst">Request Body</label>
      <div class="content-in-tab">TBD mit der tatsächlichen Beispielressource ersetzen 
      {% fragment Encounter/PJ1Encounter JSON %}</div>
    </div>
  </div>


<h4>2: Fall aktualisieren</h4>
<p>Verlegung auf Abteilung Innere Medizin einbringen</p>
<div class="tabs">
  <div class="tab">
    <input type="radio" id="tab-request-2-selbst" name="tab-group-2-selbst" checked="true" />
    <label for="tab-request-2-selbst" class="request-tab">Request</label>
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
    <input type="radio" id="tab-body-2-selbst" name="tab-group-2-selbst" />
    <label for="tab-body-2-selbst">Request Body</label>
    <div class="content-in-tab">TBD mit der tatsächlichen Beispielressource ersetzen
    {% fragment Encounter/PJ1Encounter JSON %}</div>
  </div>
</div>

<h4>3: Diagnose und Leistung erfassen</h4>
<p>Diagnosen und Leistungen zum Fall ergänzen</p>
<div class="tabs">
  <div class="tab">
    <input type="radio" id="tab-request-3-selbst" name="tab-group-3-selbst" checked="true" />
    <label for="tab-request-3-selbst" class="request-tab">Request</label>
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
    <input type="radio" id="tab-body-3-selbst" name="tab-group-3-selbst" />
    <label for="tab-body-3-selbst">Request Body</label>
    <div class="content-in-tab">TBD mit der tatsächlichen Beispielressource ersetzen
    {% fragment Encounter/PJ1Encounter JSON %}</div>
  </div>
</div>

<h4>4: Entlassung</h4>
<p>Susi Sonnenschein entlassen</p>
<div class="tabs">
  <div class="tab">
    <input type="radio" id="tab-request-4-selbst" name="tab-group-4-selbst" checked="true" />
    <label for="tab-request-4-selbst" class="request-tab">Request</label>
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
    <input type="radio" id="tab-body-4-selbst" name="tab-group-4-selbst" />
    <label for="tab-body-4-selbst">Request Body</label>
    <div class="content-in-tab">TBD mit der tatsächlichen Beispielressource ersetzen
    {% fragment Encounter/PJ1Encounter JSON %}</div>
  </div>
</div>

<h4>5: Abrechnung einbringen</h4>
<p>Die Daten zur Abrechnung werden eingebracht und dem LGF als vorläufige Abrechnung zur Verfügung gestellt.</p>
<div class="tabs">
  <div class="tab">
    <input type="radio" id="tab-request-5-selbst" name="tab-group-5-selbst" checked="true" />
    <label for="tab-request-5-selbst" class="request-tab">Request</label>
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
    <input type="radio" id="tab-body-5-selbst" name="tab-group-5-selbst" />
    <label for="tab-body-5-selbst">Request Body</label>
    <div class="content-in-tab">TBD mit der tatsächlichen Beispielressource ersetzen
    {% fragment Encounter/PJ1Encounter JSON %}</div>
  </div>
</div>

<h4>6a: Unbeantwortete Abrechnungen abrufen</h4>
<p>unbeantwortete Abrechnungen abfragen, für welche noch keine Antwort (Genehmigung/Ablehnung) eingebracht wurde</p>
<div class="tabs">
  <div class="tab">
    <input type="radio" id="tab-request-6a-selbst" name="tab-group-6a-selbst" checked="true" />
    <label for="tab-request-6a-selbst" class="request-tab">Request</label>
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
    <input type="radio" id="tab-body-6a-selbst" name="tab-group-6a-selbst" />
    <label for="tab-body-6a-selbst">Response Body</label>
    <div class="content-in-tab">TBD mit der tatsächlichen Beispielressource ersetzen
    Hier würden typischerweise sehr viele Ergebnisse zurückgeliefert werden (alle derzeit für den LGF verfügbaren Abrechnungen, die noch keine Antwort erhalten haben).
    {% fragment Encounter/PJ1Encounter JSON %}</div>
  </div>
</div>

<h4>6b: Vorläufig genehmigen</h4>
<p>vorläufige Genehmigung (inkl. Bestätigung der Punkte einbringen)</p>
<div class="tabs">
  <div class="tab">
    <input type="radio" id="tab-request-6b-selbst" name="tab-group-6b-selbst" checked="true" />
    <label for="tab-request-6b-selbst" class="request-tab">Request</label>
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
    <input type="radio" id="tab-body-6b-selbst" name="tab-group-6b-selbst" />
    <label for="tab-body-6b-selbst">Request Body</label>
    <div class="content-in-tab">TBD mit der tatsächlichen Beispielressource ersetzen
    {% fragment Encounter/PJ1Encounter JSON %}</div>
  </div>
</div>


<h4>7a: Fall erneut abrufen</h4>
<p>Krankenanstalt ruft die aktuellen Falldaten ab (inklusive der neuen bestätigten Punkte)</p>
<div class="tabs">
  <div class="tab">
    <input type="radio" id="tab-request-7a-selbst" name="tab-group-7a-selbst" checked="true" />
    <label for="tab-request-7a-selbst" class="request-tab">Request</label>
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
    <input type="radio" id="tab-body-7a-selbst" name="tab-group-7a-selbst" />
    <label for="tab-body-7a-selbst">Response Body</label>
    <div class="content-in-tab">TBD mit der tatsächlichen Beispielressource ersetzen
    {% fragment Encounter/PJ1Encounter JSON %}</div>
  </div>
</div>


<h4>7b: Endgültig abrechnen</h4>
<p>Die finale Abrechnung wird eingebracht und dem LGF zur Verfügung gestellt.</p>
<div class="tabs">
  <div class="tab">
    <input type="radio" id="tab-request-7b-selbst" name="tab-group-7b-selbst" checked="true" />
    <label for="tab-request-7b-selbst" class="request-tab">Request</label>
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
    <input type="radio" id="tab-body-7b-selbst" name="tab-group-7b-selbst" />
    <label for="tab-body-7b-selbst">Request Body</label>
    <div class="content-in-tab">TBD mit der tatsächlichen Beispielressource ersetzen
    {% fragment Encounter/PJ1Encounter JSON %}</div>
  </div>
</div>


<h4>8a: Endgültige unbeantwortete Abrechnungen abrufen</h4>
<p>Die finale Abrechnungen abfragen, für welche noch keine Antwort (Genehmigung/Ablehnung) eingebracht wurde.</p>
<div class="tabs">
  <div class="tab">
    <input type="radio" id="tab-request-8a-selbst" name="tab-group-8a-selbst" checked="true" />
    <label for="tab-request-8a-selbst" class="request-tab">Request</label>
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
    <input type="radio" id="tab-body-8a-selbst" name="tab-group-8a-selbst" />
    <label for="tab-body-8a-selbst">Response Body</label>
    <div class="content-in-tab">TBD mit der tatsächlichen Beispielressource ersetzen
    {% fragment Encounter/PJ1Encounter JSON %}</div>
  </div>
</div>


<h4>8b: Endgültig genehmigen</h4>
<p>Die finale Genehmigung (inkl. Bestätigung der Punkte einbringen) einbringen.</p>
<div class="tabs">
  <div class="tab">
    <input type="radio" id="tab-request-8b-selbst" name="tab-group-8b-selbst" checked="true" />
    <label for="tab-request-8b-selbst" class="request-tab">Request</label>
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
    <input type="radio" id="tab-body-8b-selbst" name="tab-group-8b-selbst" />
    <label for="tab-body-8b-selbst">Request Body</label>
    <div class="content-in-tab">TBD mit der tatsächlichen Beispielressource ersetzen
    {% fragment Encounter/PJ1Encounter JSON %}</div>
  </div>
</div>



<h4>9: Finale Composition abrufen</h4>
<p>Die vollständig befüllten und vom LGF genehmigten Fälle werden vom Bund abgerufen.</p>
<div class="tabs">
  <div class="tab">
    <input type="radio" id="tab-request-9-selbst" name="tab-group-9-selbst" checked="true" />
    <label for="tab-request-9-selbst" class="request-tab">Request</label>
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
    <input type="radio" id="tab-body-9-selbst" name="tab-group-9-selbst" />
    <label for="tab-body-9-selbst">Response Body</label>
    <div class="content-in-tab">TBD mit der tatsächlichen Beispielressource ersetzen
    {% fragment Encounter/PJ1Encounter JSON %}</div>
  </div>
</div>


