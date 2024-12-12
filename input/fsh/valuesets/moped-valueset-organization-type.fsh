Alias: SCT = http://snomed.info/sct
Alias: ORGT = http://hl7.org/fhir/ValueSet/organization-type
Alias: HL7ATORGT = https://termgit.elga.gv.at/ValueSet/hl7-at-organizationtype

ValueSet: MopedOrganizationType
Id: moped-organization-type
Title: "Organization Types"
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* SCT#284548004  "Hospital department (environment)"
* SCT#158965000  "Medical practitioner (occupation)"
* SCT#309453006  "Registered midwife (occupation)"
* SCT#106292003  "Professional nurse (occupation)"
* SCT#310191001 "Clinical psychologist (occupation)"
* SCT#106289002 "Dentist (occupation)"
* ORGT#govt "Government"
* ORGT#ins "Insurance Company"
* ORGT#pay "Payer"
* include codes from valueset HL7ATORGT
