<style>
  .no-number {
    --heading-prefix: none;
  }
</style>
Das MOPED-Projekt („Moderne Patient:innenabrechnung und Datenkommunikation on FHIR“) verfolgt das Ziel, die österreichische Gesundheitsdatenkommunikation im administrativen Bereich durch eine standardisierte, zukunftsfähige digitale Infrastruktur zu modernisieren.

Durch den Einsatz des HL7 FHIR Standards werden die Daten zu Patientenbewegungen (Aufnahme, Verlegung, Entlassung) und zur Versicherungs- sowie Leistungsabrechnung strukturiert und sicher erfasst. MOPED unterstützt damit eine einheitliche Datenkommunikation und verbessert die Effizienz und Datenqualität im Gesundheitssystem. Zu den zentralen Zielen gehört die Konzeption einer Lösungsarchitektur, die auf der Nutzung standardisierter Schnittstellen innerhalb der österreichischen Gesundheitstelematikinfrastruktur basiert und langfristig eine nahtlose Integration zukünftiger Anforderungen ermöglicht.

Das Projekt ist eine Kooperation zwischen den Krankenanstaltenträgern, den Landesgesundheitsfonds (LGF), dem Bund und den Sozialversicherungsträgern (SV), während die technische Ausarbeitung von der ELGA GmbH mit Unterstützung der FH OÖ Campus Hagenberg und unter Beteiligung von HL7 Austria durchgeführt wird. Diese Institutionen arbeiten gemeinsam daran, den Implementation Guide kontinuierlich zu erweitern und sicherzustellen, dass alle technischen, rechtlichen und organisatorischen Anforderungen erfüllt werden.

### Disclaimer

Der vorliegende Implementation Guide befindet sich aktuell in aktiver Entwicklung und wird laufend erweitert und aktualisiert. Inhalte, Strukturen und Beispiele können sich bis zur Veröffentlichung einer stabilen Version noch ändern.  

Dieser Guide soll eine möglichst frühe Orientierung über die technischen und fachlichen Konzepte von MOPED bieten, erhebt jedoch **keinen Anspruch auf Vollständigkeit oder finale Validität**. Änderungen an Profilen, Terminologien, Abbildungen von Workflows oder Begrifflichkeiten und Designentscheidungen etc. sind weiterhin möglich.

Für Stakeholder und FHIR-Anfänger dient der Inhalt als **verständliche Einführung** in zentrale MOPED-Konzepte und den Aufbau der FHIR-basierten Strukturen. Für FHIR-Implementierer und Systemhersteller stellt der Guide eine **technische Spezifikation mit Beispielressourcen, Profildefinitionen und Vorgaben für Schnittstellen und Operations** dar, die als Grundlage für Implementierungen dienen.

Bitte beachten:  
- Teile des IG (z. B. Berechtigungskonzepte, detaillierte Invarianten, Fehlerbehandlung) befinden sich noch in Ausarbeitung. Siehe [Known Issues](known_issues.html) für mehr Details.
- Versionierungen einzelner Ressourcen und Profile können sich im Laufe des Projekts ändern.  
- Rückmeldungen zu Unklarheiten oder Verbesserungsvorschläge sind ausdrücklich erwünscht und unterstützen die Weiterentwicklung des Implementation Guides. Die Kontaktmöglichkeiten finden sich [hier](https://fhir.hl7.at/r5-ELGA-MOPED-637-IG-Home-erweitern/authors.html#kontaktaufnahme-und-feedback).

### Bedienungsanleitung für den MOPED Implementation Guide

Diese Bedienungsanleitung unterstützt MOPED-Interessierte dabei, sich im MOPED Implementation Guide zurechtzufinden und die enthaltenen Informationen gezielt zu nutzen. Sie richtet sich sowohl an **FHIR-Anfänger und Stakeholder**, die ein grundlegendes Verständnis des Projekts und seiner Datenstrukturen und Konzepte gewinnen möchten, als auch an **FHIR-Implementierer, Serverhersteller und technische Partner**, die die Spezifikationen praktisch umsetzen werden.

Der MOPED Implementation Guide bildet die technische und fachliche Grundlage für eine einheitliche Datennkommunikation im österreichischen Gesundheitswesen im administrativen Bereich. Er beschreibt, wie durch die Verwendung des internationalen HL7 FHIR Standards die Datenflüsse zu Aufnahme, Verlegung, Entlassung, Leistungsabrechnung und Verwaltungsinformationen strukturiert, standardisiert und sicher abgewickelt werden können.

Diese Einleitung erklärt, **wie der Guide aufgebaut ist**, welche **Konzepte und Begriffe** verwendet werden und **wo welche Informationen zu finden sind**.  
Die folgenden Hauptziele stehen im Vordergrund:
- Orientierung und Verständnis schaffen: Was ist MOPED, wie ist der Implementation Guide strukturiert und wie liest man FHIR-Profile, Operations oder Mappings?

Für Einsteiger empfiehlt es sich, mit **„Wichtige Begriffe & Konzepte“** zu beginnen, während Personen mit FHIR Background direkt mit der Beschreibung des **„Aufbau des IG"** [hier](scope_and_content.html#aufbau-des-ig) starten können.

### Wichtige Begriffe & Konzepte

Dieser Abschnitt schafft die fachliche und technische Grundlage, um den MOPED Implementation Guide besser zu verstehen. Er erklärt zentrale Begriffe aus dem MOPED-Umfeld und führt schrittweise in die wichtigsten FHIR-Konzepte ein.

#### Generelle Begriffe im MOPED Umfeld

Hier wird beschrieben, wie bestimmte Begriffe innerhalb des MOPED-Kontexts verwendet werden. Manche dieser Begriffe haben in ihren jeweiligen Domänen bereits standardisierte Bedeutungen, die sich – je nach organisatorischem und technischem Umfeld – unterscheiden können. Um Missverständnisse zu vermeiden, werden hier einige zentrale Definitionen für MOPED erläutert.

<h4 class="no-number">(MOPED) Fall</h4>

Der MOPED-Fall unterscheidet sich vom Fallbegriff in der Krankenhausdomäne bzw. vom medizinischen Fall.  
In MOPED beschreibt der Fall den **patientenbezogenen administrativen Prozess von Aufnahme bis Abrechnung** – alle Daten, die zu diesem Ablauf gehören, werden als gemeinsame Einheit betrachtet.  
In der FHIR-Welt wird dieser Zusammenhang durch eine **Composition** und alle zugehörigen, auf sie referenzierenden Ressourcen und damit verbundenen Operations abgebildet. Damit bildet die Composition den zentralen Container eines MOPED-Falls.

<h4 class="no-number">Stammdaten</h4>

Unter Stammdaten versteht man im MOPED-Kontext Ressourcen, die **nicht im Rahmen eines konkreten MOPED-Falls** von Stakeholdern eingebracht werden, sondern **systemseitig** in MOPED vorhanden sind.  
Dazu zählen insbesondere Krankenanstalten, deren Zuordnung zu jeweiligen LGFs (Landesgesundheitsfonds) sowie Sozialversicherungsträger.  
Der genaue Prozess wie diese Stammdaten in MOPED bereitgestellt und gepflegt werden, wird noch erarbeitet.


<h4 class="no-number">LKF - Leistungsorientierte Krankenanstaltenfinanzierung</h4>
Siehe [Definition des Bundesministeriums](https://www.sozialministerium.gv.at/Themen/Gesundheit/Gesundheitssystem/Krankenanstalten/Allgemeine-Informationen-zum-LKF-Modell.html)

<h4 class="no-number">MBDS - Minimum Basic Data Set</h4>
LKF Basisdatensatz je Aufenthalt

<h4 class="no-number">KaOrg - Organisationsbeschreibung Datenaustausch mit Krankenanstalten</h4>
Siehe [Informationen des Dachverband der österreichischen Sozialversicherung](https://www.sozialversicherung.at/cdscontent/?contentid=10007.821512&portal=svportal)

#### (FHIR) Konzepte & Begriffe
Dieser Abschnitt vermittelt zentrale FHIR-Grundbegriffe für die Arbeit mit dem MOPED Implementation Guide.

<h4 class="no-number">Ressource</h4>

Eine Ressource ist das grundlegende Datenelement in FHIR. Jede Ressource repräsentiert **eine klar abgegrenzte Informationseinheit** – beispielsweise einen Patient, einen Aufenthalt, eine Diagnose oder eine Organisation.  
Alle FHIR-Ressourcen folgen einem einheitlichen Aufbau: Sie besitzen einen Typ (z. B. *Patient* oder *Encounter*) und bestehen aus einer eindeutigen ID,  optionalen Metadaten und zahlreichen Elementen.
MOPED definiert auf Basis dieser Ressourcen eigene Profile, mit denen der österreichische Verwaltungs- und Abrechnungskontext präzise beschrieben wird.

<h4 class="no-number">Profil</h4>

Ein FHIR-Profil ist eine **Spezialisierung einer Ressource**. Es beschreibt genau, **welche Felder verpflichtend, optional oder ausgeschlossen sind** und **welche Terminologien zulässig** sind.  
Im MOPED-Kontext legen Profile fest, welche Felder für österreichische Anforderungen erforderlich sind.  
Weitere Informationen finden sich im Abschnitt *Wie liest man ein MOPED Profil*.


<h4 class="no-number">Operations</h4>

Operations sind **vordefinierte, serverseitige Funktionen**, die über REST-Schnittstellen vom Server zur Verfügung gestellt werden. 
MOPED verwendet sie, um komplexe Geschäftsprozesse abzubilden, z. B. das Erstellen eines Falls, das Übermitteln von Abrechnungsdaten oder das Anfordern einer Versichertenanspruchserklärung.  
Details zur Funktionsweise und Ausführung finden sich im Kapitel *Was sind FHIR Operations*. In den Operations werden außerdem strenge Validierungen der eingebrachten Daten durchgeführt, um Datenintegrität zu ermöglichen.

<h4 class="no-number">Extension</h4>
Extensions erweitern die internationalen FHIR-Basisprofile um **österreichspezifische Felder oder Semantiken**.


<h4 class="no-number">Composition</h4>

Die Composition ist das zentrale Werkzeug im MOPED-Kontext: Sie **stellt den fachlichen Zusammenhang eines Falls her** und verbindet alle zugehörigen Ressourcen miteinander.  
Darüber hinaus spielt sie eine zentrale Rolle im **Berechtigungs- und Zugriffskonzept**, da sie den Rahmen eines Falls definiert.  
Weitere technische Details finden sich im Menüpunkt *Designentscheidungen*.

<h4 class="no-number">Invariante</h4>

Invarianten sind **maschinenlesbare Prüfregeln (Constraints)**, die erlauben, Validierungsbedingungen festzulegen, ohne den zugrundeliegenden Code anpassen zu müssen.  
Sie werden direkt in den Profilen hinterlegt und bei jeder Datenübertragung automatisch überprüft.  
MOPED nutzt Invarianten umfassend, um formale und inhaltliche Korrektheit der eingebrachten Ressourcen sicherzustellen.  
Detaillierte Ausführungen finden sich im Abschnitt *Designentscheidungen*.

<h4 class="no-number">ValueSets und CodeSystems</h4>

<h4 class="no-number">Questionnaire</h4>

Questionnaires werden eingesetzt, wenn komplexe Meldungen in strukturierter, aber nicht vollständig granularer Form vorliegen.  
MOPED nutzt Questionnaires z. B. für LKF-Jahresmeldungen, Registermeldungen und zur Intensivdokumentation. 


### Wie liest man ein MOPED Profil?
Dieser Abschnitt beschreibt, wie Profile im MOPED Implementation Guide strukturiert sind und wie sie gelesen und verstanden werden können. Profile sind die wichtigste Grundlage für Implementierungen, da sie festlegen, wie die FHIR-Ressourcen im MOPED-Kontext genutzt werden. Sie geben vor, welche Felder verpflichtend, optional oder ausgeschlossen sind, welche Terminologien verwendet werden dürfen und welche Prüfregeln gelten.

#### FHIR Profile im MOPED Kontext
Ein FHIR-Profil ist eine Spezialisierung einer internationalen FHIR-Basisressource. Es legt fest, wie eine Ressource in einem bestimmten Anwendungskontext (z. B. MOPED) verwendet wird. Im MOPED Implementation Guide werden Profile genutzt, um nationale und organisatorische Anforderungen abzubilden, die über den internationalen FHIR-Standard hinausgehen.
FHIR-Profile spezifizieren die Nutzung einer Basisressource. Sie geben vor:
- welche Elemente verpflichtend sind (cardinality),
- welche Terminologien zulässig oder vorgeschrieben sind (ValueSets, verpflichtende Codes),
- welche zusätzlichen Prüfregeln (Invarianten) gelten,
- und welche Extensions eingeführt wurden, um nationale Anforderungen abzudecken.

Im MOPED-Kontext sind diese Profile der verbindliche Referenzpunkt für alle Datenaustauschprozesse. Systemhersteller sollten bei jeder Implementierung prüfen, ob ihr System die Profilspezifikationen vollständig erfüllt.

##### Views: Key Elements vs. Snapshot vs. Differential
- **Key Elements:** Eine übersichtliche Darstellung der wichtigsten, projektrelevanten Felder mit kurzen Beschreibungen. Diese Ansicht ist besonders für fachliche Rollen und Stakeholder geeignet.  
- **Snapshot View:** Eine vollständige Darstellung des Profils inklusive aller Basiselemente, abgeleiteten Felder und Constraints. Sie bildet die vollständige Resource-Struktur ab, wie sie im System erscheint.  
- **Differential View:** Zeigt nur die Abweichungen gegenüber der zugrundeliegenden Basisressource (z. B. zusätzliche Felder, geänderte Kardinalitäten, entfernte Elemente). Diese Ansicht ist besonders nützlich für technische Implementierer.

#### Obligations
Mittels Obligations werden in HL7 FHIR funktionale Eigenschaften spezifiziert, die definierte Akteure gegenüber den durch Profile festgelegten Datenelementen einhalten müssen (SHALL), können (MAY) oder sollten (SHOULD). In MOPED wird unter anderem die Obligation mit dem code *SHALL:populate* verwendet um anzuzeigen, welcher Akteur das jeweilige Feld befüllen muss. Felder, welche wiederum eine Obligation mit dem code *SHALL:handle* und dem Akteur MOPED beinhalten sind Felder die von MOPED im Laufe des Prozess verändert oder automatisiert befüllt werden können. Hierbei handelt es sich hauptsächlich um das Befüllen von Referenzen oder das Ändern des Status von Ressourcen. Obligations werden in den Profilen durch ein rotes O gekennzeichnet.

### Was sind FHIR Operations und welche Informationen beinhalten diese?
Dieser Abschnitt erläutert, wie FHIR Operations im MOPED-Kontext verwendet werden, um komplexe Geschäftsprozesse abzubilden.  
Während FHIR-Profile beschreiben, wie Daten strukturiert sind, legen Operations fest, **wie** diese Daten systemübergreifend verarbeitet, validiert und übertragen werden.

MOPED nutzt Operations, um den administrativen Austausch zwischen Krankenanstalten, Sozialversicherungsträgern, Landesgesundheitsfonds und weiteren Stakeholdern reproduzierbar und kontrolliert zu gestalten. Beispiele sind das Anlegen eines neuen Falls, das Übermitteln von Leistungsdaten oder das Anfordern einer Versichertenanspruchserklärung.

Jede Operation ist im Implementation Guide im Detail dokumentiert und beschreibt Zweck, Eingabeparameter, Outputparameter, Berechtigungen und Vorbedingungen.

#### FHIR Operations im MOPED Kontext
Typische Bestandteile einer Operation sind:
- Der aufrufende Akteur
- Ein oder mehrere Eingabeparameter (Input Parameters)
- Rückgabeparameter (Output Parameters)
- Beschreibung der geprüften Ressourcen und Validierungen
- zusätzliche Businesslogik
- Bedingungen und Fehlermeldungen, falls Eingaben nicht den Profilen entsprechen  

FHIR Operations folgen der Syntax:  
- *URL: [base]/$validate*

- *URL: [base]/[Resource]/$validate*

- *URL: [base]/[Resource]/[id]/$validate*

In MOPED wird stark auf Operations gesetzt um die Datenintegrität zwischen den einzelnen Ressourcen sicherzustellen.

### Aufbau des Implementation Guide
Der Aufbau des IG ist im Detail im Abschnitt [Umfang und Inhalt](scope_and_content.html) beschrieben.
