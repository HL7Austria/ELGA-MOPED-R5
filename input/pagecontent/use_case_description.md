Die folgende Beschreibung und die zugehörigen Diagramme illustrieren den neuen Sollprozess in FHIR. Ziel ist es, die Kommunikation und Datenübermittlung im österreichischen Gesundheitswesen zu standardisieren und zu harmonisieren. Dies umfasst die verschiedenen Phasen der Aufnahme, Patientenversorgung, Entlassung, Abrechnung und Dokumentation.

Die einzelnen Abschnitte beschreiben detailliert die Schritte und Interaktionen zwischen den beteiligten Akteuren. Die Diagramme verdeutlichen, wie der neue Prozess zur effizienten und konsistenten Datenkommunikation eingesetzt werden kann. 

<div xmlns="http://www.w3.org/1999/xhtml" class="container">
<h2>Prozess (Entwurf):</h2>
</div>
    
<div xmlns="http://www.w3.org/1999/xhtml" class="container"> 
    <ul class="nav nav-tabs">
        <li class="active"><a data-toggle="tab" href="#Behandlungsfall"> <strong>Behandlungsfall</strong></a></li>
        <li><a data-toggle="tab" href="#LeistungsabrechnungDatenmeldung"> <strong>Leistungsabrechnung & Datenmeldung</strong></a></li>
        <li><a data-toggle="tab" href="#Kostenmeldung"> <strong>Kostenmeldung</strong></a></li>
    </ul>
    <div class="tab-content">
        <div id="Behandlungsfall" class="tab-pane fade in active">
        {% include Behandlungsfall.md %}
        </div>
        <div id="LeistungsabrechnungDatenmeldung" class="tab-pane fade">
        {% include LeistungsabrechnungDatenmeldung.md %}
        </div>
        <div id="Kostenmeldung" class="tab-pane fade">
            {% include Kostenmeldung.md %}
        </div>
    </div>
</div>