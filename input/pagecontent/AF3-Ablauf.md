  <h4>1: Aufnehmen</h4>
  <p>Schritt 1: Aufnehmen Operation ausführen und alle bereits vorhandenen Informationen zu Coverage, Aufnahmediagnose, Patient,... mitgeben.</p>
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
<p>Schritt 2: VAE Anfrage an die SV stellen mit $anfragen</p>
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
<p>Schritt 3a: offene VAEs vom Server abrufen</p>
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

