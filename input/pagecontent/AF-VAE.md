{% include styleheader.md %}


## Moped Fall - Versichertenanspruchserklärung
Die folgenden Diagramme veranschaulichen die möglichen Interaktionen mit der Moped-Plattform im Teilprozess „Versichertenanspruchserklärung“. Zunächst werden die allgemeinen Interaktionsmöglichkeiten dargestellt, anschließend werden diese durch Beispiele konkretisiert und im Kontext einer spezifischen Anwendung dargestellt.

### Betroffene Akteure

| Akteur            |  |
|-------------------|--------------:|
| KH (Krankenhaus)  |      ✅   |
| LGF (Landesgesundheitsfonds) |  ❌  |
| SV (Sozialversicherung)      |  ✅  |
| Bund            |  ❌  |

### Ablauf 
#### VAE Anfrage (generisch)
<div>{% include anfragen.svg %}</div>

#### VAE Antwort (generisch)
<div>{% include antworten.svg %}</div>

### Relevante Profile
- [Coverage](StructureDefinition-MopedCoverage.html)
- [VAERequestInitial](StructureDefinition-MopedVAERequestInitial.html)
- [VAERequestVerlaengerung](StructureDefinition-MopedVAERequestVerlaengerung.html)
- [VAEResponse](StructureDefinition-MopedVAEResponse.html)
- [$update Bundle](StructureDefinition-MopedUpdateBundleKH.html)
- [$anfragen Bundle](StructureDefinition-MopedAnfragenBundleKH.html)
- [$antworten Bundle](StructureDefinition-MopedAntwortenBundleSV.html)

### Organisatorische Hinweise
#### Keine Quartalszusage für ambulante Fälle
Zukünftig gibt es anstatt einer Quartalszusage pro [Moped Fall](TBD-LINK-BEGRIFFSDEFINITION) je eine Anfrage und eine Rückmeldung.

#### Fristende und Verlängerung für stationäre Fälle
Die SV hat die Möglichkeit die VAE unbefristet oder befristet abzugeben. Gibt es eine Befristung, so wird ein Enddatum angegeben. Falls der stationäre Aufenthalt länger dauert als das angegebene Enddatum so muss das KH um eine Verlängerung ansuchen. In der Verlängerung wird das Enddatum als Verlängerungsdatum angegeben und zusätzlich auf die initiale Anfrage verwiesen. Die positive VAE für den ursprünglichen Zeitraum bleibt weiterhin gültig (außer sie wird aus anderen Gründen nachträglich storniert). Die VAE kann nach Ablauf der Frist der letzten positiven VAE immer wieder verlängert werden solange sich der Patient immer noch in Behandlung befindet. Gibt es kein Fristende so kann die VAE auch nicht verlängert werden.

### Ablauf - Beispiele und mit Kontext

#### Positive VAE

##### Beschreibung
Aufgrund der eingelangten VAE (Versichertenanspruchserklärung) Anfrage erfolgt seitens der SV die positive VAE Rückmeldung. Die positive Entscheidung wird in der Rückmeldung durch "00" (stationär) oder "19" (ambulant) ausgedrückt. 

| Behandlungsart|  |
|-----------|----:|
| Ambulant  |  ✅ |
| Stationär |  ✅ |

<div>{% include antworten-positiv.svg %}</div>

#### Positive VAE mit Fristende
##### Beschreibung
Die SV hat die Möglichkeit die VAE unbefristet oder befristet abzugeben. Gibt es eine Befristung, so wird ein Enddatum angegeben. 

| Behandlungsart|  |
|-----------|----:|
| Ambulant  |  ❌ |
| Stationär |  ✅ |

<div>{% include antworten-positiv-zeitraum.svg %}</div>

#### Negative VAE
##### Beschreibung
Aufgrund der eingelangten Aufnahme-/Ereignisanzeige erfolgt seitens SV eine negative Versichertenanspruchserklärung. Bei einer negativen Versichertenanspruchserklärung wird der jeweilige Ablehnungsgrund (Code) angeführt. Das KH prüft regelmäßig, ob es Ablehnungen der VAE seitens der SV gibt. Diese Fälle müssen bearbeitet werden. Im schlimmsten Fall muss der Patient die Rechnung als Selbstzahler selbst bezahlen. Ablehnungsgründe gibt es jedoch einige, die durchaus durch die Verwaltung im KH behoben werden können, so dass eine positive VAE durch die SV nach erneuter Anfrage in Folge möglich ist.
###### Beispiel
- Patient wurde anstelle von selbstversichert als mitversichert gemeldet und umgekehrt (nach Richtigstellung dann positive VAE möglich) 
- Versicherung nicht festgestellt, weil nicht versichert 
- Versicherung falsch, da andere SV—Träger zuständig ist (positive VAE nach Anfrage bei anderem Träger möglich)  


| Behandlungsart|  |
|-----------|----:|
| Ambulant  |  ✅ |
| Stationär |  ✅ |

<div>{% include antworten-negativ.svg %}</div>

#### VAE in Arbeit
##### Beschreibung
TBD: Klärung ob diese Ausprägung noch nötig ist oder durch Moped obsolet wird. Der Eingang der VAE wird bestätigt, eine Zu- oder Absage kann zu dem Zeitpunkt allerdings nicht gegeneb werden und der Status wird auf "in Arbeit" gesetzt.

| Behandlungsart|  |
|-----------|----:|
| Ambulant  |  ✅ |
| Stationär |  ✅ |

<div>{% include antworten-in-arbeit.svg %}</div>

#### VAE in Arbeit wird später bewilligt
##### Beschreibung
TBD: Klärung ob diese Ausprägung noch nötig ist oder durch Moped obsolet wird. Eine bereits zuvor eingegangene und mit "in Arbeit" beantwortete VAE wird positiv entschieden.

| Behandlungsart|  |
|-----------|----:|
| Ambulant  |  ✅ |
| Stationär |  ✅ |

<div>{% include antworten-in-arbeit-bewilligt.svg %}</div>

#### Anfrage für Verlängerung
Eine zuvor zugesagte VAE mit Fristende wird angefragt um Verlängerung.

| Behandlungsart|  |
|-----------|----:|
| Ambulant  |  ❌ |
| Stationär |  ✅ |

<div>{% include anfragen-verlaengerung.svg %}</div>

#### Antwort auf Verlängerung
Die Verlängerungs-Anfrage wird entweder genehmigt oder abgelehnt.

| Behandlungsart|  |
|-----------|----:|
| Ambulant  |  ❌ |
| Stationär |  ✅ |

<div>{% include antworten-verlaengerung.svg %}</div>

### Technische Hinweise
- VAERequest und Response werden in FHIR durch Profile der Claim Ressource abgebildet.
- Kommentare zum jeweiligen VAE Ablehnungsgrund können in ClaimResponse.processNote.text festgehalten werden.
- Die initiale VAE und die VAE zur Verlängerung entsprechen unterschiedlichen Profilen mit unterschiedlichen Subtypen. In der Verlängerung muss verpflichtend die initiale VAE verlinkt werden.

#### Relevante Invarianten
- Es kann zu keinem Zeitpunkt zwei aktive initiale VAEs an den selben Träger geben.

#### Mögliche Notifications

##### SubscriptionTopic: neue VAE wurde angefragt
Die SV möchte benachrichtigt werden, wenn ein neuer VAERequest für sie bereitgestellt wurde. Das zugehörige SubscriptionTopic wurde in [diesem Beispiel](SubscriptionTopic-neueVAE.html) definiert.

##### SubscriptionTopic: VAE wurde abgelehnt
Das KH möchte benachrichtigt werden, wenn ein VAERequest abgelehnt wurde. Das zugehörige SubscriptionTopic wurde in [diesem Beispiel](SubscriptionTopic-VAEabgelehnt.json.html) definiert.