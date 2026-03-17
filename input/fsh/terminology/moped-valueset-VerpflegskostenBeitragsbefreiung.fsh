CodeSystem: VerpflegskostenBeitragsbefreiungCS
Title: "Befreiung für den Verpflegskostenbeitrag"
Description: "CodeSystem für die Befreiung für den Verpflegskostenbeitrag"
* ^status = #active
* ^experimental = true
* ^caseSensitive = true
* #J "Es liegt eine Befreiung vom Verpflegskostenbeitrag aufgrund einer bundes- oder landesgesetzlichen Gesetzesbestimmung bzw. eines Arbeitsunfalls oder einer Rezeptgebührenbefreiung vor."
* #N "Es liegt keine Befreiung vom Verpflegskostenbeitrag vor."
* #S "Es liegt eine Befreiung vom Verpflegskostenbeitrag aufgrund eines gemeldeten Aufenthaltes von
Patienten in der Sonderklasse vor (BVAEB-EB, SVS-GW, BVAEB-OEB)."

ValueSet: VerpflegskostenBeitragsbefreiungVS
Title: "Befreiung für den Verpflegskostenbeitrag"
Description: "Befreiung für den Verpflegskostenbeitrag"
* ^experimental = true
* include codes from system VerpflegskostenBeitragsbefreiungCS