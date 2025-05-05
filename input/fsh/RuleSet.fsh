RuleSet: DocumentExtension(path, short, definition)
* extension[{path}] ^short = {short}
* extension[{path}] ^definition = {definition}* extension[{path}] ^definition = {definition}


RuleSet: WhitelistObligation(path)
* {path} ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* {path} ^extension[=].extension[+].url = "code"
* {path} ^extension[=].extension[=].valueCode = #SHALL:handle
 
RuleSet: ObligationActor(path, actor)
* {path} ^extension[=].extension[+].url = "actor"
* {path} ^extension[=].extension[=].valueCanonical =  Canonical({actor})
 
