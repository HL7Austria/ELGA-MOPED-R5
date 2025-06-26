
Extension: SVAbrechnungsquartal
Id: moped-ext-SVAbrechnungsquartal
Title: "Abrechnungsquartal der Sozialversicherung"
Description: "Das Abrechnungsquartal ist in der Form Jahr (JJJJ) und Quartal (Q) zu melden."
Context: MopedComposition
* valueDate
* extension contains
    year 0..1  and
    quater 0..1 
* extension[year].value[x] only date
* extension[quater].valuePositiveInt 


