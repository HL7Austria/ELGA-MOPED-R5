RuleSet: DocumentExtension(path, short, definition)
* extension[{path}] ^short = {short}
* extension[{path}] ^definition = {definition}

RuleSet: MopedHandleObligation(path)
* {path} ^extension[http://hl7.org/fhir/StructureDefinition/obligation][+].extension[code].valueCode = #SHALL:handle
* {path} ^extension[http://hl7.org/fhir/StructureDefinition/obligation][=].extension[actor].valueCanonical =  Canonical(MopedDeviceActor)

RuleSet: ShallPopulateObligation(path, actor)
* {path} ^extension[http://hl7.org/fhir/StructureDefinition/obligation][+].extension[code].valueCode = #SHALL:populate
* {path} ^extension[http://hl7.org/fhir/StructureDefinition/obligation][=].extension[actor][+].valueCanonical =  Canonical({actor})

RuleSet: ObligationActor(path, actor)
* {path} ^extension[http://hl7.org/fhir/StructureDefinition/obligation][=].extension[actor].valueCanonical =  Canonical({actor})
 
RuleSet: MappingHeaderEinfuegen()
* ^mapping[+].identity = "LKF"
* ^mapping[=].uri = "https://elga.moped.at/mapping/LKF"
* ^mapping[=].name = "LKF"
* ^mapping[+].identity = "KaOrg"
* ^mapping[=].uri = "https://elga.moped.at/mapping/KaOrg"
* ^mapping[=].name = "KaOrg"

RuleSet: legacyMapping(path,legacy,field)
* {path} ^mapping[+].identity = "{legacy}"
* {path} ^mapping[=].map = "{field}"

RuleSet: legacyMappingWithComment(path,legacy,field,comment)
* {path} ^mapping[+].identity = "{legacy}"
* {path} ^mapping[=].map = "{field}"
* {path} ^mapping[=].comment = "{comment}"