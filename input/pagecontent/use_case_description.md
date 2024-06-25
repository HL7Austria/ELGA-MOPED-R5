Die folgende Beschreibung und die zugehörigen Sequenzdiagramme illustrieren den neuen Sollprozess in FHIR. Ziel ist es, die Kommunikation und Datenübermittlung im österreichischen Gesundheitswesen zu standardisieren und zu harmonisieren. Dies umfasst die verschiedenen Phasen der Patientenversorgung, Abrechnung und Dokumentation, angefangen von der Aufnahme über die Kostenübernahme und Patientenversorgung bis hin zur Entlassung und Leistungsabrechnung.

Die einzelnen Abschnitte beschreiben detailliert die Schritte und Interaktionen zwischen den beteiligten Akteuren. Die Diagramme verdeutlichen, wie die FHIR-Ressourcen zur effizienten und konsistenten Datenkommunikation eingesetzt werden können. 
    
<div xmlns="http://www.w3.org/1999/xhtml" class="container"> 
    <ul class="nav nav-tabs">
        <li class="active"><a data-toggle="tab" href="#Aufnahme"> <strong>Aufnahme</strong></a></li>
        <li><a data-toggle="tab" href="#Kostenübernahme"> <strong>Kostenübernahme</strong></a></li>
        <li><a data-toggle="tab" href="#Versorgung"> <strong>Patientenversorgung</strong></a></li>
        <li><a data-toggle="tab" href="#Entlassung"> <strong>Entlassung</strong></a></li>
        <li><a data-toggle="tab" href="#Abrechnung"> <strong>Leistungsabrechung & Datenmeldung</strong></a></li>
    </ul>
    <div class="tab-content">
        <div id="Aufnahme" class="tab-pane fade in active">
        {% include aufnahme.md %}
        </div>
        <div id="Kostenübernahme" class="tab-pane fade">
        {% include kostenuebernahme.md %}
        </div>
        <div id="Versorgung" class="tab-pane fade">
            {% include versorgung.md %}
        </div>
        <div id="Entlassung" class="tab-pane fade">
           {% include entlassung.md %}
        </div>
        <div id="Abrechnung" class="tab-pane fade">
           {% include datenmeldung.md %}
        </div>
    </div>
</div>