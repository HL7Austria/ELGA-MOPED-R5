CodeSystem: MopedClaimTypeCS
Title: "Claim Type CodeSystem"
Description: "CodeSystem für die Arten der Claims/ClaimResponses"
* #VAEREQ "VAE Request"
* #VAERESP "VAE Response"
* #LKFREQ "LKF Request"
* #LKFRESP "LKF Response"
* #ARKREQ "ARK Request"
* #ARKRESP "ARK Response"

ValueSet: MopedClaimTypeVS
Title: "Claim Type ValueSet"
Description: "ValueSet für die Arten der Claims/ClaimResponses"
* MopedClaimTypeCS#VAEREQ "VAE Request"
* MopedClaimTypeCS#VAERESP "VAE Response"
* MopedClaimTypeCS#LKFREQ "LKF Request"
* MopedClaimTypeCS#LKFRESP "LKF Response"
* MopedClaimTypeCS#ARKREQ "ARK Request"
* MopedClaimTypeCS#ARKRESP "ARK Response"

CodeSystem: MopedClaimSubTypeCS
Title: "Claim Subtype CodeSystem"
Description: "CodeSystem für die Arten der Claims/ClaimResponses"
* ^status = #active
* ^experimental = true
* ^caseSensitive = true
* #A "Ausländerverrechnung"
* #R "Regressangelegenheiten"
* #K "Kosteninformation"
* #VAEI "initiale VAE"
* #VAEV "VAE Verlängerung"
* #LKFREQENDG "LKF Endgültige Meldung"
* #LKFREQVORL "LKF Vorläufige Meldung"


ValueSet: KostenmeldungARKVS
Title: "Kostenmeldung für (A/R/K)"
Description: "ValueSet für die Art der Kostenmeldung"
* MopedClaimSubTypeCS#A
* MopedClaimSubTypeCS#R
* MopedClaimSubTypeCS#K

ValueSet: MopedVAERequestSubTypeVS
Title: "VAE Claim Subtype ValueSet"
Description: "ValueSet für die Art der Claims"
* ^experimental = true
* MopedClaimSubTypeCS#VAEI
* MopedClaimSubTypeCS#VAEV

ValueSet: MopedLKFRequestSubTypeVS
Title: "LKF ClaimResponse Subtype ValueSet"
Description: "ValueSet für die Art der ClaimResponses"
* ^experimental = true
* MopedClaimSubTypeCS#LKFREQENDG 
* MopedClaimSubTypeCS#LKFREQVORL

