CodeSystem: TransportartCS
Title: "Transportart"
Description: "CodeSystem für die Transportart des Patienten"
* ^status = #active
* ^experimental = true
* ^caseSensitive = true
* #H "Notarzt-Hubschrauber"
* #K "Krankentransport"
* #N "Rettung mit notärztlicher Begleitung"
* #R "Rettung ohne notärztliche Begleitung"
* #S "Selbstanreise des Patienten/der Patientin"
* #Z "Sonstige Transportart"

ValueSet: Transportart
Title: "Transportart"
Description: "ValueSet für die Transportart des Patienten"
* ^experimental = true
* include codes from system TransportartCS