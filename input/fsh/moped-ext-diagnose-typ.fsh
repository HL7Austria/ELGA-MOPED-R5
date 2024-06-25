

Alias: $LKFdiagnoseart = http://tbd.at/moped-ext-lkf-diagnose-art


Extension:    LKFDiagnoseArt
Id:           moped-ext-diagnose-typ
Title:        "LKF Diagnoseart" 
Description:  "MOPED Extension für die Art der LKF Diagnose. Die Diagnoseart gibt an, ob es sich um eine Haupt- oder Nebendiagnose handelt."
* valueCode 1..1
* valueCode only code
* valueCode from $LKFdiagnoseart (required)
* valueCode ^binding.description = "Code für die Art der LKF Diagnose"

