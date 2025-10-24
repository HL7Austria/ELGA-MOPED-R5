RuleSet: DocumentExtension(path, short, definition)
* extension[{path}] ^short = {short}
* extension[{path}] ^definition = {definition}

RuleSet: MopedPopulatedFieldObligation(path)
* {path} ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* {path} ^extension[=].extension[+].url = "code"
* {path} ^extension[=].extension[=].valueCode = #SHALL:process
* {path} ^extension[=].extension[+].url = "actor"
* {path} ^extension[=].extension[=].valueCanonical =  Canonical(MopedActor)

RuleSet: ShallPopulateIfKnownObligation(path)
* {path} ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* {path} ^extension[=].extension[+].url = "code"
* {path} ^extension[=].extension[=].valueCode = #SHALL:populate-if-known

RuleSet: ShallPopulateObligation(path)
* {path} ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* {path} ^extension[=].extension[+].url = "code"
* {path} ^extension[=].extension[=].valueCode = #SHALL:populate

RuleSet: ObligationActor(path, actor)
* {path} ^extension[=].extension[+].url = "actor"
* {path} ^extension[=].extension[=].valueCanonical =  Canonical({actor})
 
