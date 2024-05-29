
  <div xmlns="http://www.w3.org/1999/xhtml" class="container"> 
  <div>
    <a style="border:none;" href="FHIRPOCModel.png" target="_blank">
                    <img src="FHIRPOCModel.png" width ="80%" />
                </a>
  <div>
    <ul class="nav nav-tabs">
        <li class="active"><a data-toggle="tab" href="#actor-KH"> <strong>KH</strong></a></li>
        <li><a data-toggle="tab" href="#actor-SV"> <strong>SV</strong></a></li>
        <li><a data-toggle="tab" href="#actor-LGF"> <strong>LGF</strong></a></li>
        <li><a data-toggle="tab" href="#actor-BMSGPK"> <strong>BMSGPK</strong></a></li>
        <li><a data-toggle="tab" href="#actor-EMS"> <strong>EMS</strong></a></li>
        <li><a data-toggle="tab" href="#actor-medMel"> <strong>med. Melderegister</strong></a></li>
    </ul>
    <div class="tab-content">
        <div id="actor-KH" class="tab-pane fade in active">
            {% include KH.md %}
        </div>
        <div id="actor-SV" class="tab-pane fade">
           {% include SV.md %}
        </div>
        <div id="actor-LGF" class="tab-pane fade">
          {% include LGF.md %}
        </div>
        <div id="actor-BMSGPK" class="tab-pane fade in active">
            {% include BMSGPK.md %}
        </div>
        <div id="actor-EMS" class="tab-pane fade">
           {% include EMS.md %}
        </div>
        <div id="actor-medMel" class="tab-pane fade">
          {% include medMel.md %}
        </div>
    </div>
</div>