<h1>Behandlungsfall</h1>

<img src="Sollprozess/SollProzesse_einzeln/Behandlungsfall.png" width ="60%">


<div xmlns="http://www.w3.org/1999/xhtml" class="container"> 
    <ul class="nav nav-tabs">
        <li class="active"><a data-toggle="tab" href="#Aufnahme"> <strong>Aufnahme</strong></a></li>
        <li><a data-toggle="tab" href="#Versichertenanspruchserklärung"> <strong>Versichertenanspruchserklärung</strong></a></li>
        <li><a data-toggle="tab" href="#Patientenversorgung"> <strong>Patientenversorgung</strong></a></li>
        <li><a data-toggle="tab" href="#Entlassung"> <strong>Entlassung</strong></a></li>
    </ul>
    <div class="tab-content">
        <div id="Aufnahme" class="tab-pane fade in active">
        {% include Aufnahme.md %}
        </div>
        <div id="Versichertenanspruchserklärung" class="tab-pane fade">
            <h1>Versichertenanspruchserklärung</h1>
            <img src="Sollprozess/SollProzesse_einzeln/Versichertenanspruchserklärung.png" width ="50%">
            <img src="Sollprozess/eEPKs/Versichertenanspruchserklärung.png" width ="40%">
        </div>
        <div id="Patientenversorgung" class="tab-pane fade">
            <h1>Patientenversorgung</h1>
            <img src="Sollprozess/SollProzesse_einzeln/Patientenversorgung.png" width ="50%">
            <img src="Sollprozess/eEPKs/Patientenversorgung.png" width ="50%">
            <p>Während des Krankenhausaufenthalts werden alle medizinischen Maßnahmen und Beobachtungen kontinuierlich dokumentiert. Dies umfasst die Aktualisierung von Leistungen, Diagnosen und eventuell auch Medikamentenverabreichungen in den entsprechenden FHIR-Ressourcen.</p>
        </div>
        <div id="Entlassung" class="tab-pane fade">
            <h1>Entlassung</h1>
            <img src="Sollprozess/SollProzesse_einzeln/Entlassung.png" width ="50%">
            <img src="Sollprozess/eEPKs/Entlassung.png" width ="60%">
        </div>
    </div>
</div>