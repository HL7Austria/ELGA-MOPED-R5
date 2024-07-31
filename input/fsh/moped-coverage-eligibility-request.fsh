
Profile: MOPEDCoverageEligibilityRequest
Parent: CoverageEligibilityRequest
Description: "MOPED Profil der CoverageEligibilityRequest Ressource für die Kostenübernahmeanfrage."


* patient only Reference(HL7ATCorePatient)

* extension contains VDASID named VDASID 0..1
* extension contains ExtensionDays named ExtensionDays 0..1

* provider only Reference(HL7ATCoreOrganization)
* insurer only Reference(HL7ATCoreOrganization)