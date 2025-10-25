RuleSet: DocumentExtension(path, short, definition)
* extension[{path}] ^short = {short}
* extension[{path}] ^definition = {definition}

RuleSet: MopedHandleObligation(path)
* {path} ^extension[http://hl7.org/fhir/StructureDefinition/obligation].extension[code].valueCode = #SHALL:handle
* {path} ^extension[http://hl7.org/fhir/StructureDefinition/obligation].extension[actor].valueCanonical =  Canonical(MopedActor)

RuleSet: ShallPopulateObligation(path, actor)
* {path} ^extension[http://hl7.org/fhir/StructureDefinition/obligation].extension[code].valueCode = #SHALL:populate
* {path} ^extension[http://hl7.org/fhir/StructureDefinition/obligation].extension[actor][+].valueCanonical =  Canonical({actor})

RuleSet: ObligationActor(path, actor)
* {path} ^extension[http://hl7.org/fhir/StructureDefinition/obligation].extension[actor].valueCanonical =  Canonical({actor})
 
