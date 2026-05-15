<style>
.red-box,
.grey-box {
  max-width: 70%;
  box-sizing: border-box;
}

.red-box {
  margin: 1.2rem 0 1.6rem 0;
  padding: 1rem 1.2rem;
  border: 2px solid #b91c1c;
  border-radius: 10px;
  background: linear-gradient(180deg, #fff5f5 0%, #fef2f2 100%);
}

.grey-box {
  margin: 0 0 2rem 0;
  padding: 1rem 1.2rem;
  border: 1px solid #cbd5e1;
  border-radius: 10px;
  background: #f8fafc;
}

.pill-red,
.pill-grey {
  display: inline-block;
  padding: .2rem .55rem;
  border-radius: 999px;
  color: white;
  font-size: .88rem;
  font-weight: 700;
  vertical-align: middle;
  margin-right: .35rem;
}

.pill-red {
  background: #dc2626;
}

.pill-grey {
  background: #64748b;
}
</style>

Diese Seite enthält eine Liste der FHIR-Artefakte, die im Rahmen dieses Implementierungsleitfadens definiert wurden.

<div class="red-box">
  <div style="display:flex; align-items:center; gap:.6rem; font-weight:700; color:#991b1b; margin-bottom:.35rem; font-size:1.05rem;">
    <span style="display:inline-block; width:.9rem; height:.9rem; border-radius:999px; background:#dc2626;"></span>
    Verordnungsrelevante Artefakte
  </div>
  <div style="color:#7f1d1d;">
    Die folgenden Profile werden im Rahmen einer Verordnung festgelegt. Änderungen an diesen Profilen, die zu zwingenden Softwareanpassungen in den beteiligten Systemen führen, bedürfen einer neuerlichen Verordnung.
  </div>
</div>

<div class="grey-box">
  <div style="display:flex; align-items:center; gap:.6rem; font-weight:700; color:#334155; margin-bottom:.35rem; font-size:1.05rem;">
    <span style="display:inline-block; width:.9rem; height:.9rem; border-radius:999px; background:#94a3b8;"></span>
    Nicht verordnungsrelevante Artefakte
  </div>
  <div style="color:#475569;">
    Alle weiteren Artefakte dienen der technischen Spezifikation, Interaktion oder Prozessbeschreibung und sind <strong>nicht verordnungsrelevant</strong>.
  </div>
</div>

---
### Verordnungsrelevante Datenfelder

<div class="red-box">
<h4>Datenfelder für die KA </h4>
<span class="pill-red">VERORDNUNGSRELEVANT</span>
<table class="grid">
      <col style="width:20%"/>
      <tbody>
         <tr>
         </tr>
      </tbody>
   </table>
   <a name="1"> </a>
</div>


<div class="red-box">
    <h4>Datenfelder für den Bund </h4>
    <span class="pill-red">VERORDNUNGSRELEVANT</span>
    <table class="grid">
        <col style="width:20%"/>
        <tbody>
            <tr>
                <td style="column-width:30%">
                <a href="StructureDefinition-MopedEncounterBund.html"
                    title="StructureDefinition/MopedEncounterBund">MOPED Encounter Bund</a>
                </td>
                <td>
    <p>MOPED Profil der Encounter Ressource für die Rolle: Bund</p>
    </td>
            </tr>
        </tbody>
    </table>
    <a name="2"> </a>
</div>

<div class="red-box">
<h4>Datenfelder für den LGF </h4>
<span class="pill-red">VERORDNUNGSRELEVANT</span>
<table class="grid">
      <col style="width:20%"/>
      <tbody>
         <tr>
            <td style="column-width:30%">
               <a href="StructureDefinition-MopedEncounterLGF.html"
                  title="StructureDefinition/MopedEncounterLGF">MOPED Encounter LGF</a>
            </td>
            <td>
<p>MOPED Profil der Encounter Ressource für die Rolle: LGF</p>
</td>
         </tr>
      </tbody>
   </table>
   <a name="3"> </a>
</div>

<div class="red-box">
<h4>Datenfelder für die SV </h4>
<span class="pill-red">VERORDNUNGSRELEVANT</span>
<table class="grid">
      <col style="width:20%"/>
      <tbody>
         <tr>
            <td style="column-width:30%">
               <a href="StructureDefinition-MopedEncounterSV.html"
                  title="StructureDefinition/MopedEncounterSV">MOPED Encounter SV</a>
            </td>
            <td>
<p>MOPED Profil der Encounter Ressource für die Rolle: SV</p>
</td>
         </tr>
      </tbody>
   </table>
</div>


---

### Fallbezogene Questionnaires für die Intensivdokumentation 

Questionnaires für die Modellierung von Intensivdokumentation

| | |
| :--- | :--- |
| [I12 Questionnaire für TISS-A-Daten](Questionnaire-LKFTISSAQuestionnaire.html) | TISS-A Questionnaire |
| [SAPS3 Questionnaire](Questionnaire-LKFSAPS3Questionnaire.html) | SAPS3 Questionnaire |

### Questionnaires - Registermeldungen 

Questionnaires zur Definition von Registermeldungen in Moped.

| | |
| :--- | :--- |
| [register-questionnaire](Questionnaire-register-questionnaire.html) |  |
| [Stroke Unit Registermeldung – Patientendaten](Questionnaire-StrokeUnitQuestionnaire2025.html) | Fragen zur Registermeldung Stroke Unit – Abschnitt Patientendaten |

### Questionnaires - Jahresstatistikmeldung/Monatsstatistikmeldung 

Jahresstatistikmeldungen von der Krankenanstalt für den LGF und Bund.

| | |
| :--- | :--- |
| [LKF A01 Questionnaire](Questionnaire-LKFA01Questionnaire.html) | LKF A01 Questionnaire - Antiinfectiva-Abrufe |
| [LKF B01 Questionnaire](Questionnaire-LKFB01Questionnaire.html) | B01 Questionnaire - Basisinformation |
| [LKF B02 Questionnaire](Questionnaire-LKFB02Questionnaire.html) | B02 Questionnaire - Vermögens- und Kapitalstruktur (VKS) |
| [LKF B03 Questionnaire](Questionnaire-LKFB03Questionnaire.html) | B03 Questionnaire - Eigenmittelverteilungsrechnung (EVR) |
| [LKF B04 Questionnaire](Questionnaire-LKFB04Questionnaire.html) | B04 Questionnaire - Quellen- und Verwendungsanalyse (QVA) |
| [LKF B05 Questionnaire](Questionnaire-LKFB05Questionnaire.html) | B05 Questionnaire - Erlösstruktur (ES) |
| [LKF B06 Questionnaire](Questionnaire-LKFB06Questionnaire.html) | B06 Questionnaire - Zuschussstruktur (ZS) |
| [LKF G01 Questionnaire](Questionnaire-LKFG01Questionnaire.html) | G01 Questionnaire - Großgerätebasisdaten |
| [LKF G02 Questionnaire](Questionnaire-LKFG02Questionnaire.html) | G02 Questionnaire - Großgeräteleistungsdaten |
| [LKF K01 Questionnaire](Questionnaire-LKFK01Questionnaire.html) | K01 Questionnaire - den Kostenstellenplan |
| [LKF K02 Questionnaire](Questionnaire-LKFK02Questionnaire.html) | K02 Questionnaire - KA-Stammdaten |
| [LKF K03 Questionnaire](Questionnaire-LKFK03Questionnaire.html) | K03 Questionnaire - KA-Statistik (Ressourcen und Inanspruchnahme) |
| [LKF K04 Questionnaire](Questionnaire-LKFK04Questionnaire.html) | K04 Questionnaire - KA-Statistik (Personal-Vollzeitäquivalente nach Funktionsgruppen und Dienstverhältnis) |
| [LKF K05 Questionnaire](Questionnaire-LKFK05Questionnaire.html) | K05 Questionnaire - KA-Statistik (Personal des ärztlichen Dienstes) |
| [LKF K06 Questionnaire](Questionnaire-LKFK06Questionnaire.html) | LKF K06 Questionnaire - KA-Statistik (Konsiliarärztlicher Dienst) |
| [LKF K07 Questionnaire](Questionnaire-LKFK07Questionnaire.html) | LKF K07 Questionnaire - KA-Statistik (Personal der nicht-ärztlichen Gesundheitsberufe) |
| [LKF K08 Questionnaire](Questionnaire-LKFK08Questionnaire.html) | LKF K08 Questionnaire - Kostenstellen-Statistik und Kostennachweis (Bettenführende Hauptkostenstelle) |
| [LKF K09 Questionnaire](Questionnaire-LKFK09Questionnaire.html) | LKF K09 Questionnaire - Kostenstellen-Statistik und Kostennachweis (nicht-bettenführende Hauptkostenstelle) |
| [LKF K10 Questionnaire](Questionnaire-LKFK10Questionnaire.html) | LKF K10 Questionnaire - Kostenstellen-Statistik und Kostennachweis (Neben- und Hilfskostenstellen) |
| [LKF K11 Questionnaire](Questionnaire-LKFK11Questionnaire.html) | LKF K11 Questionnaire - Sammel-Kostennachweis Summenblatt |
| [LKF K12 Questionnaire](Questionnaire-LKFK12Questionnaire.html) | LKF K12 Questionnaire - Sammel-Kostennachweis Detailblätter |
| [LKF K13 Questionnaire](Questionnaire-LKFK13Questionnaire.html) | LKF K13 Questionnaire - Kalkulatorischer Anhang – Kostenminderungen |
| [LKF K14 Questionnaire](Questionnaire-LKFK14Questionnaire.html) | LKF K14 Questionnaire - Kalkulatorischer Anhang – Kalkulatorischer Anlagenspiegel |
| [LKF K15 Questionnaire](Questionnaire-LKFK15Questionnaire.html) | LKF K15 Questionnaire - Kalkulatorischer Anhang – Allgemeine Kostenbereiche |
| [LKF K16 Questionnaire](Questionnaire-LKFK16Questionnaire.html) | LKF K16 Questionnaire - Kalkulatorischer Anhang – Ausgewählte Kosten |
| [LKF L01 Questionnaire](Questionnaire-LKFL01Questionnaire.html) | LKF L01 Questionnaire - Spezielle Leistungsbereiche |
| [LKF L02 Questionnaire](Questionnaire-LKFL02Questionnaire.html) | LKF L02 Questionnaire - Abrechnungsrelevante Kostenträger |
| [LKF L03 Questionnaire](Questionnaire-LKFL03Questionnaire.html) | LKF L03 Questionnaire - Exklusionen medizinischer Leistungen |
| [LKF L04 Questionnaire](Questionnaire-LKFL04Questionnaire.html) | LKF L04 Questionnaire - Exklusionen tagesklinischer medizinischer Leistungen |

### Requirements: Actor Definitions 

The following artifacts define the types of individuals and/or systems that will interact as part of the use cases covered by this implementation guide.

| | |
| :--- | :--- |
| [Moped Bund Actor](ActorDefinition-MopedBundActor.html) | Moped ActorDefnition für den Bund |
| [Moped Device Actor](ActorDefinition-MopedDeviceActor.html) | Moped ActorDefnition für Moped selbst |
| [Moped KA Actor](ActorDefinition-MopedKAActor.html) | Moped ActorDefnition für Krankenanstalten in Österreich |
| [Moped LGF Actor](ActorDefinition-MopedLGFActor.html) | Moped ActorDefnition für LGFs in Österreich |
| [Moped SV Actor](ActorDefinition-MopedSVActor.html) | Moped ActorDefnition für eine SV in Österreich |

### Behavior: Operation Definitions 

These are custom operations that can be supported by and/or invoked by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [MOPED ClaimResponse $entscheiden](OperationDefinition-MOPED.ClaimResponse.Entscheiden.html) | Die $entscheiden Operation wird aufgerufen, wenn eine Abrechnung beantwortet wird und freigegeben wird. |
| [MOPED Daten $update](OperationDefinition-MOPED.Daten.Update.html) | Die $update Operation wird aufgerufen, wenn zusätzliche Informationen zu einem Fall eingebracht/abgeändert werden. |
| [MOPED Encounter $abrechnen](OperationDefinition-MOPED.Encounter.Abrechnen.html) | Die $abrechnen Operation wird aufgerufen, wenn ein Fall abgerechnet werden soll. |
| [MOPED Kosteninformation $melden](OperationDefinition-MOPED.Claim.Melden.html) | Die $melden Operation wird aufgerufen, wenn eine Kosteninformation an die SV gemeldet werden soll. |
| [MOPED Patient $aufnehmen](OperationDefinition-MOPED.Patient.Aufnehmen.html) | Die $aufnehmen Operation wird aufgerufen, wenn ein(e) Patient*in in die Krankenanstalt aufgenommen wird. |
| [MOPED Patient $entlassen](OperationDefinition-MOPED.Patient.Entlassen.html) | Die $entlassen Operation wird aufgerufen, wenn ein(e) Patient*in aus dem Krankenhaus entlassen wurde. |
| [MOPED QuestionnaireResponse $einmelden](OperationDefinition-MOPED.QuestionnaireResponse.Einmelden.html) | Die $einmelden Operation wird aufgerufen, wenn eine (nicht fallbezogene) QuestionnaireResponse eingemeldet werden soll. |
| [MOPED Versichertenanspruchserklärung $anfragen](OperationDefinition-MOPED.VAERequest.Anfragen.html) | Die Versichertenanspruchserklärung $anfragen Operation wird aufgerufen, um die Versichertenanspruchserklärung-Anfrage an die SV anzustoßen. Diese Operation ist irrelevant für Selbstzahler (-> wenn es keine zuständige SV gibt darf die Operation $anfragen nicht ausgeführt werden). |
| [MOPED auf VAERequest oder ARKRequest $antworten](OperationDefinition-MOPED.Auf.Request.Antworten.html) | Die $antworten Operation wird aufgerufen, wenn eine Versichertenanspruchserklärung oder eine Kosteninformation beantwortet wird. |

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Bund Organization](StructureDefinition-BundOrganization.html) | MOPED Profil für den Bund |
| [Dachverband Organization](StructureDefinition-DachverbandOrganization.html) | MOPED Profil für die Dachverband Organization |
| [KA Organization](StructureDefinition-KAOrganization.html) | MOPED Profil für KA Organizations |
| [LGF Organization](StructureDefinition-LGFOrganization.html) | MOPED Profil für LGF Organizations |
| [MOPED ARK Status Update - PaymentReconciliation](StructureDefinition-MopedARKStatusUpdate.html) | MOPED Profil für Statusupdates zur Ausländerverrechnung oder zum Regress |
| [MOPED ARKRequest](StructureDefinition-MopedARKRequest.html) | MOPED Profil der Claim Ressource für die Kostenmeldung für Ausländerverrechnung und Regresse. |
| [MOPED ARKResponse](StructureDefinition-MopedARKResponse.html) | MOPED Profil der ClaimResponse Ressource für die Rückmeldung der SV für Ausländerverrechnung und Regresse. |
| [MOPED Abrechnen Bundle KA](StructureDefinition-MopedAbrechnenBundleKA.html) | Bundle für die Input-Ressourcen beim Abrechnen (KA) |
| [MOPED Anfragen Bundle KA](StructureDefinition-MopedAnfragenBundleKA.html) | Bundle für die Input-Ressourcen beim Anfragen (KA) |
| [MOPED Anfragen Composition](StructureDefinition-MopedAnfragenComposition.html) | MOPED Profil der Composition Ressource nach $anfragen |
| [MOPED Antworten Bundle SV](StructureDefinition-MopedAntwortenBundleSV.html) | Bundle für die Input-Ressourcen beim Einbringen von Antworten der SV |
| [MOPED Aufnahme Composition](StructureDefinition-MopedAufnahmeComposition.html) | MOPED Profil der Composition Ressource nach $aufnehmen |
| [MOPED Aufnehmen Bundle KA](StructureDefinition-MopedAufnehmenBundleKA.html) | Bundle für die Input-Ressourcen beim Aufnehmen eines Patienten |
| [MOPED Beantworten Composition](StructureDefinition-MopedBeantwortenComposition.html) | MOPED Profil der Composition Ressource nach $beantworten |
| [MOPED Composition](StructureDefinition-MopedComposition.html) | MOPED Profil der Composition Ressource von der alle anderen Compositions ableiten. |
| [MOPED Condition](StructureDefinition-MopedCondition.html) | MOPED Profil der Condition Ressource für die LDF-Abrechnung |
| [MOPED Coverage](StructureDefinition-MopedCoverage.html) | MOPED Profil der Coverage Ressource für Versicherungen. |
| [MOPED Coverage für Selbstzahler](StructureDefinition-MopedCoverageSelbstzahler.html) | MOPED Profil der Coverage Ressource für Selbstzahler |
| [MOPED Encounter](StructureDefinition-MopedEncounter.html) | MOPED Profil der Encounter Ressource für die Krankenanstaltenaufnahme und Entlassung |
| [MOPED Encounter Ambulant](StructureDefinition-MopedEncounterA.html) | MOPED Profil der Encounter Ressource für die Krankenanstaltenaufnahme und Entlassung im ambulanten Bereich |
| [MOPED Encounter Aufnahme Stationär](StructureDefinition-MopedEncounterAufnahmeS.html) | MOPED Profil der Encounter Ressource für die Aufnahme im stationären Bereich |
| [MOPED Encounter Entlassung Stationär](StructureDefinition-MopedEncounterEntlassungS.html) | MOPED Profil der Encounter Ressource für die Entlassung im stationären Bereich |
| [MOPED Encounter Stationär](StructureDefinition-MopedEncounterS.html) | MOPED Profil der Encounter Ressource für die Krankenanstaltenaufnahme und Entlassung im stationären Bereich |
| [MOPED Entlassen Bundle KA](StructureDefinition-MopedEntlassenBundle.html) | Bundle für die Input-Ressourcen beim Entlassen eines Patienten |
| [MOPED Entlassung Aviso Composition](StructureDefinition-MopedEntlassenAvisoComposition.html) | MOPED Profil der Composition Ressource nach $entlassen bei Entlassung Aviso |
| [MOPED Entlassung vollständig Composition](StructureDefinition-MopedEntlassenVollstaendigComposition.html) | MOPED Profil der Composition Ressource nach $entlassen bei Entlassung vollständig |
| [MOPED Entscheiden Bundle LGF](StructureDefinition-MopedEntscheidenLGFBundle.html) | Bundle für die Input-Ressourcen beim Entscheiden (Bestätigen/Ablehnen) von Punkten/Erorrs/Warnings |
| [MOPED Hauptversicherter](StructureDefinition-Hauptversicherter.html) | MOPED Profil der Person Ressource für den Hauptversicherten |
| [MOPED Input Bundle KA](StructureDefinition-MopedInputBundleKA.html) | Bundle für die Input-Ressourcen beim Update von Informationen zu einem Fall |
| [MOPED KA Organisationseinheiten](StructureDefinition-MopedKAOrganisationseinheit.html) | MOPED Profil für Organisationseinheiten innerhalb einer Krankenanstalt. |
| [MOPED LKFRequest](StructureDefinition-MopedLKFRequest.html) | MOPED Profil der Claim Ressource für die Leistungsabrechnungsanfrage. |
| [MOPED LKFResponse](StructureDefinition-MopedLKFResponse.html) | MOPED Profil der ClaimResponse Ressource für die Leistungsabrechnungsantwort. |
| [MOPED Master Composition](StructureDefinition-MopedMasterComposition.html) | MOPED Profil der Composition Ressource für die Composition in der sich der gesamte Moped Datensatz aufbaut. Diese unterstütz durch ihre Invarianten eine konsistente Datenhaltung. |
| [MOPED Melden Bundle LGF](StructureDefinition-MopedMeldenLGFBundle.html) | Bundle für die Input-Ressourcen beim Melden von Informationen |
| [MOPED Patient](StructureDefinition-MopedPatient.html) | MOPED Profil der Patient Ressource |
| [MOPED Patient Bund](StructureDefinition-MopedPatientBund.html) | MOPED Profil der Patient Ressource aus der Sicht der Rolle: Bund |
| [MOPED Patient LGF](StructureDefinition-MopedPatientLGF.html) | MOPED Profil der Patient Ressource aus der Sicht der Rolle: LGF |
| [MOPED Patient SV](StructureDefinition-MopedPatientSV.html) | MOPED Profil der Patient Ressource aus der Sicht der Rolle: SV |
| [MOPED Procedure](StructureDefinition-MopedProcedure.html) | MOPED Profil der Procedure Ressource für die LDF-Abrechnung |
| [MOPED QuestionnaireResponse einmelden Bundle](StructureDefinition-MopedQuestionnaireResponseEinmeldenBundle.html) | Bundle für die Input-Ressourcen beim Einmelden von nicht fallspezifischen QuestionnaireResponses |
| [MOPED TransferEncounter](StructureDefinition-MopedTransferEncounter.html) | MOPED Profil der Encounter Ressource für die Verlegung innerhalb oder zwischen Krankenanstalten |
| [MOPED TransferEncounter Ambulant](StructureDefinition-MopedTransferEncounterA.html) | MOPED Profil der Encounter Ressource für ambulante Kontakte/Bewegungen |
| [MOPED TransferEncounter Intensiv](StructureDefinition-MopedTransferEncounterI.html) | MOPED Profil der Encounter Ressource für die Verlegung auf Intensivstationen |
| [MOPED TransferEncounter Stationär](StructureDefinition-MopedTransferEncounterS.html) | MOPED Profil der Encounter Ressource für eine stationäre Verlegung |
| [MOPED Update Bundle KA](StructureDefinition-MopedUpdateBundleKA.html) | Bundle für die Input-Ressourcen beim Update von Informationen zu einem Fall |
| [MOPED Update Composition](StructureDefinition-MopedUpdateComposition.html) | MOPED Profil der Composition Ressource nach $update |
| [MOPED VAERequest](StructureDefinition-MopedVAERequest.html) | MOPED Profil für die Anfrage der Versichertenanspruchserklärung VAE. |
| [MOPED VAERequest für die Verlängerung der VAE](StructureDefinition-MopedVAERequestVerlaengerung.html) | MOPED Profil für die Verlängerung der Versichertenanspruchserklärung (VAE) |
| [MOPED VAERequest für die initiale Anfrage der VAE](StructureDefinition-MopedVAERequestInitial.html) | MOPED Profil für die initiale Anfrage der Versichertenanspruchserklärung (VAE) |
| [MOPED VAEResponse](StructureDefinition-MopedVAEResponse.html) | MOPED Profil für die Beantwortung der Versichertenanspruchserklärung VAE. |
| [Moped Device](StructureDefinition-MopedDevice.html) | Generische Moped Definition für Devices |
| [Moped Device XDok](StructureDefinition-MopedDeviceXDok.html) | Moped Definition für XDok |
| [Moped QuestionnaireResponse fallbezogen](StructureDefinition-MopedQuestionnaireResponseFallbezogen.html) | MOPED Profil für QuestionnaireResponses die im Kontext von Moped mit Fallbezug erhoben werden |
| [Moped QuestionnaireResponse nicht fallbezogen](StructureDefinition-MopedQuestionnaireResponseNichtFallbezogen.html) | MOPED Profil für QuestionnaireResponses die im Kontext von Moped ohne Fallbezug erhoben werden |
| [SV Organization](StructureDefinition-SVOrganization.html) | MOPED Profil für SV Organizations |

### Structures: Extension Definitions 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Abrechnung - Knoten](StructureDefinition-moped-ext-diagnoseKnoten.html) | Lukriert die Patient:innen über eine reguläre Gruppe Punkte, so ist in diesem Datenfeld die entsprechende Knotenbezeichnung einzutragen. |
| [Abrechnungsart Ausländerverrechnung](StructureDefinition-moped-ext-AbrechnungsartAuslaenderverrechnung.html) | Abrechnungsart Ausländerverrechnung |
| [AddItemCategory](StructureDefinition-moped-ext-AddItemCategory.html) | Benefit classification |
| [Altersgruppe](StructureDefinition-moped-ext-altersgruppe.html) | In Gruppen eingeteilt, wobei vollendete Lebensjahre ausschlaggebend sind. |
| [Aufnahmeart](StructureDefinition-moped-ext-aufnahmeart.html) | MOPED Extension für die Aufnahmeart. |
| [Beihilfenaequivalent](StructureDefinition-moped-ext-Beihilfenaequivalent.html) | MOPED Extension für das Beihilfenaequivalent |
| [Betreuungsschein bei Ausländerverrechnung](StructureDefinition-moped-ext-Betreuungsschein.html) | MOPED Extension für den Betreuungsschein bei Ausländerverrechnung |
| [Diagnosetyp](StructureDefinition-moped-ext-Diagnosetyp.html) | Diagnosetyp |
| [Error/Warning](StructureDefinition-moped-ext-fehlerWarnung.html) | MOPED Extension für akzeptierte Errors und Warnings |
| [Fondsrelevanz](StructureDefinition-moped-ext-fondsrelevanz.html) | Hier ist anzugeben, ob der stationäre Aufenthalt/ambulante Besuch gegenüber dem Landesgesundheitsfonds/PRIKRAF abzurechnen ist. |
| [Grund warum keine Zahlung erfolgte](StructureDefinition-moped-ext-ReasonForNonPayment.html) | Grund warum keine Zahlung erfolgte |
| [Kostenstelle](StructureDefinition-moped-ext-Kostenstelle.html) | MOPED Extension für akzeptierte Errors und Warnings |
| [Leistung - Anzahl](StructureDefinition-moped-ext-Leistungsanzahl.html) | MOPED Extension für die Anzahl der zu einem Zeitpunkt erbrachten Leistungen |
| [Medizinische Leistung - Abrechnungsrelevanz](StructureDefinition-moped-ext-AbrechnungsRelevanz.html) | Hier ist anzugeben, ob die medizinische Leistung bei der Bepunktung des ambulanten Besuchs/stationären Aufenthalts (Satzart X01) zu berücksichtigen ist. |
| [Prozentsatz der Zahlung](StructureDefinition-moped-ext-PaymentPercentage.html) | Prozentsatz der Zahlung |
| [Rechnungsnummer der Krankenanstalt bzw. des Landesgesundheitsfonds](StructureDefinition-moped-ext-RechnungsnummerKALGF.html) | MOPED Extension für die Rechnungsnummer der Krankenanstalt bzw. des Landesgesundheitsfonds |
| [Supporting Info Extension for ClaimResponse](StructureDefinition-MopedSupportingInfo.html) | Additional information codes regarding exceptions, special considerations, the condition, situation, prior or concurrent issues |
| [Supporting Info Extension for ClaimResponse - FREMDRE Slice](StructureDefinition-MopedSupportingInfoFREMDRE.html) | Additional information codes regarding exceptions, special considerations, the condition, situation, prior or concurrent issues |
| [Supporting Info Extension for ClaimResponse - OEGKELBNR Slice](StructureDefinition-MopedSupportingInfoOEGKELBNR.html) | Additional information codes regarding exceptions, special considerations, the condition, situation, prior or concurrent issues |
| [Supporting Info Extension for ClaimResponse - Vortageanzahl auf Kostenbeitrag](StructureDefinition-MopedSupportingInfoVortageanzahlAufKostenbeitrag.html) | Additional information codes regarding exceptions, special considerations, the condition, situation, prior or concurrent issues |
| [Tage ohne Einhebung des Kostenbeitrags](StructureDefinition-moped-ext-TageOhneKostenbeitrag.html) | Anzahl der Tage, für welche kein Kostenbeitrag seitens der Krankenanstalt eingehoben wurde |
| [VDAS-ID - VersichertenDatenAbfrageService](StructureDefinition-moped-ext-vdasid.html) | Es handelt sich um eine ID, welche bei der VDAS-Abfrage durch die Krankenanstalt vom e-card System vergeben wird und von der Krankenanstalt in der Aufnahme-/Ereignisanzeige mitgeliefert werden kann. Dadurch kann das Abfrageergebnis eindeutig nachvollzogen werden. Das Ergebnis der VDAS-Abfrage ist im ambulanten Bereich für den Krankenversicherungsträger verbindlich. Eine Ablehnung aus versicherungsrechtlichen Gründen ist nicht möglich, sofern die Ereignisanzeige jenem Träger aus der VDAS-Abfrage (inkl. VDAS-ID) übermittelt wurde. Um eine zwischenstaatliche Verrechnung zu ermöglichen ist bei zwischenstaatlichen Fällen eine Ablehnung zulässig. |
| [VerpflegskostenBeitragsbefreiung](StructureDefinition-moped-ext-verpflegskostenBeitragsbefreiung.html) | VKBEFR – Verpflegskosten-Beitragsbefreiung |
| [Zahlungskennzeichen](StructureDefinition-moped-ext-Zahlungskennzeichen.html) | MOPED Extension für die Kostenmeldung. Konstenmeldung für A = Ausländerverrechnung, R = Regressangelegenheiten oder K = Kosteninformation |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Abgangsart des Patienten](ValueSet-AbgangsartVS.html) | ValueSet für die Abgangsart des Patienten |
| [Abrechnungsart Ausländerverrechnung ValueSet](ValueSet-AbrechnungsartAuslaenderverrechnungVS.html) | ValueSet für die Abrechnungsarten in der Ausländerverrechnung |
| [Abrechnungsrelevanz der medizinischen Leistung](ValueSet-AbrechnungsRelevanzVS.html) | Abrechnungsrelevanz der medizinischen Leistung |
| [Akzeptierte Errors/Warnings - Codes 2025](ValueSet-EWCodes2025VS.html) | Der entsprechende Error-/Warning-/Hinweis-Code des unplausiblen/hinweisbezogenen Wertes |
| [Altersgruppe des Patienten](ValueSet-AltersgruppeVS.html) | ValueSet für die Altersgruppe des Patienten |
| [Anwesenheitsart](ValueSet-AnwesenheitsartVS.html) | ValueSet für die Anwesenheitsart |
| [Arten von Moped Encounter](ValueSet-MopedEncounterTypesVS.html) | Arten von Moped Encounter |
| [Arten von Moped Payment Types VS](ValueSet-MopedPaymentTypesVS.html) | Arten von Moped Payment Types VS |
| [Aufnahmeart des Patienten](ValueSet-AufnahmeartVS.html) | ValueSet für die Aufnahmeart des Patienten (LKF + Ka-Org) |
| [Aufnahmeart2 des Patienten](ValueSet-Aufnahmeart2VS.html) | ValueSet für die Aufnahmeart des Patienten |
| [Befreiung für den Verpflegskostenbeitrag](ValueSet-VerpflegskostenBeitragsbefreiungVS.html) | Befreiung für den Verpflegskostenbeitrag |
| [Behandlungsart](ValueSet-BehandlungsartVS.html) | ValueSet für die Behandlungsart |
| [Claim Type ValueSet](ValueSet-MopedClaimTypeVS.html) | ValueSet für die Arten der Claims/ClaimResponses |
| [Encounter Status bei Entlassung](ValueSet-MopedEncounterStatusEntlassungVS.html) | Varianten des Encounter Status bei Entlassung |
| [Encounter Status bei der Aufnahme](ValueSet-MopedEncounterStatusAufnahmeVS.html) | Varianten des Encounter Status bei der Aufnahme |
| [Encounter Status in Moped](ValueSet-MopedEncounterStatusVS.html) | Varianten des Encounter Status bei Aufenthalten in Moped |
| [Entlassungsart des Patienten ambulant](ValueSet-EntlassungsartAVS.html) | ValueSet für die ambulante Entlassungsart des Patienten |
| [Entlassungsart des Patienten ambulant + stationär](ValueSet-EntlassungsartVS.html) | ValueSet für die Entlassungsart des Patienten |
| [Entlassungsart des Patienten stationär](ValueSet-EntlassungsartSVS.html) | ValueSet für die stationäre Entlassungsart des Patienten |
| [Fondsrelevanz](ValueSet-FondsrelevanzVS.html) | ValueSet für die Fondsrelevanz |
| [HTTP Verb Insert Only](ValueSet-HTTPVerbInsertOnlyVS.html) | HTTP Verben für das Einmelden von Ressourcen, welche nur initial eingemeldet und dann nicht mehr verändert werden dürfen. |
| [HTTP Verb Insert Update Delete](ValueSet-HTTPVerbInsertUpdateDeleteVS.html) | HTTP Verben für das Einmelden von Ressourcen, welche nur initial eingemeldet und dann nicht mehr verändert werden dürfen. |
| [HTTP Verb Update Only](ValueSet-HTTPVerbInsertUpdateVS.html) | HTTP Verben für das Einmelden von Ressourcen, welche nach dem initialen Einmelden nur aktualisiert werden dürfen. |
| [HTTP Verb Update Only](ValueSet-HTTPVerbUpdateOnlyVS.html) | HTTP Verben für das Einmelden von Ressourcen, welche nach dem initialen Einmelden nur aktualisiert werden dürfen. |
| [ICD-10 AT](ValueSet-ICD10ATVS.html) | ICD-10 BMSGPK 2025+ |
| [Kostenmeldung für (A/R/K)](ValueSet-KostenmeldungARKVS.html) | ValueSet für die Art der Kostenmeldung |
| [LKF Abrechnungsgruppe](ValueSet-LKFAbrechnungsGruppeVS.html) | LKF Abrechnungsgruppe |
| [LKF Abrechnungsknoten](ValueSet-LKFAbrechnungsKnotenVS.html) | LKF Abrechnungsknoten |
| [LKF Ambulante MEL-Gruppen](ValueSet-LKFAmbulantenMELGruppenVS.html) | LKF Ambulante MEL-Gruppen |
| [LKF Ambulante Pauschal-Gruppen](ValueSet-LKFAmbulantePauschalGruppenVS.html) | LKF Ambulante Pauschal-Gruppen |
| [LKF ClaimResponse Subtype ValueSet](ValueSet-MopedLKFRequestSubTypeVS.html) | ValueSet für die Art der ClaimResponses |
| [LKF Diagnosetyp ValueSet](ValueSet-LKFDiagnoseTypVS.html) | LKF Diganosetyp |
| [LKF Hauptdiagnosegruppen](ValueSet-LKFHauptdiagnosegruppenVS.html) | LKF Hauptdiagnosegruppen |
| [LKF Leistungskatalog BMSGPK](ValueSet-LKFLeistungskatalogVS.html) | LKF Hauptdiagnosegruppen |
| [LKF Seitenlokalisation ValueSet](ValueSet-LKFSeitenlokalisationVS.html) | LKF Seitenlokalisation |
| [LKF medizinische Einzelleistungen (MEL)](ValueSet-LKFmedizinischeEinzelleistungenVS.html) | LKF medizinische Einzelleistungen (MEL) |
| [MOPED LKFSupportingInformationCategory](ValueSet-LKFSupportingInformationCategoryVS.html) | Arten von zusätzlichen Informationen im LKFRequest |
| [MOPED VAESupportingInformationCategory](ValueSet-ClaimSupportingInformationCategoryVS.html) | Arten von zusätzlichen Informationen in der VAE |
| [MOPED VAESupportingInformationCategory](ValueSet-VAESupportingInformationCategoryVS.html) | Arten von zusätzlichen Informationen in der VAE |
| [Moped Claim Item Category ValueSet](ValueSet-MopedClaimItemCategoryVS.html) | ValueSet für die Arten von Claim Item Kategorien |
| [Moped Composition Sections ValueSet](ValueSet-CompositionSectionsVS.html) | ValueSet für die Moped Sections der Composition Ressource |
| [Moped Device Types ValueSet](ValueSet-MopedDeviceTypesVS.html) | Types von Moped Devices |
| [Moped Encounter Participant Type ValueSet](ValueSet-MopedEncounterParticipantTypesVS.html) | ValueSet für die Moped Encounter Participant Types |
| [Sonderklasse ValueSet](ValueSet-SonderklasseVS.html) | ValueSet für die Klasse (KaOrg) |
| [Spezielle Organisationsform](ValueSet-SpezielleOrganisationsformVS.html) | Die spezielle Organisationsform der stationären Versorgung ist im Kostenstellenplan zusätzlich zum Funktionscode mit einer entsprechenden Kennzeichnung zu versehen. |
| [Status der Versichertenanspruchserklärung](ValueSet-VAEStatusVS.html) | Status der Versichertenanspruchserklärung |
| [Transportart](ValueSet-TransportartVS.html) | ValueSet für die Transportart des Patienten |
| [Ursache für Behandlung](ValueSet-UrsacheVS.html) | ValueSet für die Ursache der Behandlung laut Ka-Org |
| [VAE Claim Subtype ValueSet](ValueSet-MopedVAERequestSubTypeVS.html) | ValueSet für die Art der Claims |
| [ValueSet Zahlungskennzeichen ARK](ValueSet-ZahlungskennzeichenVS.html) | ValueSet für das Zahlungskennzeichen ARK |
| [Verdacht auf Arbeits- oder Schuelerunfall ValueSet](ValueSet-VerdachtArbeitsSchuelerunfallVS.html) | ValueSet für den Verdacht auf einen Arbeits- oder Schuelerunfall |
| [Workflow Status eines Falls](ValueSet-WorkflowStatusVS.html) | ValueSet für die Statusoptionen in denen sich ein Fall befinden kann. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Abrechnungsart Ausländerverrechnung CodeSystem](CodeSystem-AbrechnungsartAuslaenderverrechnungCS.html) | CodeSystem für die Abrechnungsarten in der Ausländerverrechnung |
| [Abrechnungsrelevanz der medizinischen Leistung](CodeSystem-AbrechnungsRelevanzCS.html) | Abrechnungsrelevanz der medizinischen Leistung |
| [Akzeptierte Errors/Warnings - Codes 2025](CodeSystem-EWCodes2025CS.html) | Der entsprechende Error-/Warning-/Hinweis-Code des unplausiblen/hinweisbezogenen Wertes |
| [Altersgruppe des Patienten](CodeSystem-AltersgruppeCS.html) | CodeSystem für die Altersgruppe des Patienten |
| [Anwesenheitsart](CodeSystem-AnwesenheitsartCS.html) | CodeSystem für die Anwesenheitsart |
| [Arten von Moped Encounter](CodeSystem-MopedEncounterTypesCS.html) | Arten von Moped Encounter |
| [Arten von Moped Payment Types CS](CodeSystem-MopedPaymentTypesCS.html) | Arten von Moped Payment Types CS |
| [Aufnahmeart2 des Patienten](CodeSystem-Aufnahmeart2CS.html) | CodeSystem für die Aufnahmeart des Patienten |
| [Befreiung für den Verpflegskostenbeitrag](CodeSystem-VerpflegskostenBeitragsbefreiungCS.html) | CodeSystem für die Befreiung für den Verpflegskostenbeitrag |
| [Behandlungsart](CodeSystem-BehandlungsartCS.html) | CodeSystem für die Behandlungsart |
| [Claim Subtype CodeSystem](CodeSystem-MopedClaimSubTypeCS.html) | CodeSystem für die Arten der Claims/ClaimResponses |
| [Claim Type CodeSystem](CodeSystem-MopedClaimTypeCS.html) | CodeSystem für die Arten der Claims/ClaimResponses |
| [CodeSystem Zahlungskennzeichen Auslaenderverrechnung](CodeSystem-ZahlungskennzeichenAuslaenderverrechnungCS.html) | CodeSystem Zahlungskennzeichen Auslaenderverrechnung |
| [CodeSystem Zahlungskennzeichen Regress](CodeSystem-ZahlungskennzeichenRegressCS.html) | CodeSystem Zahlungskennzeichen Regress |
| [Entlassungsart des Patienten](CodeSystem-EntlassungsartCS.html) | CodeSystem für die Entlassungsart des Patienten |
| [Fondsrelevanz](CodeSystem-FondsrelevanzCS.html) | CodeSystem für die Fondsrelevanz |
| [LKF Abrechnungsgruppe Andere](CodeSystem-LKFAbrechnungsGruppeAndereCS.html) | LKF Abrechnungsgruppe Andere |
| [LKF Abrechnungsknoten](CodeSystem-LKFAbrechnungsKnotenCS.html) | LKF Abrechnungsknoten |
| [LKF Ambulante MEL-Gruppen](CodeSystem-LKFAmbulantenMELGruppenCS.html) | LKF Ambulante MEL-Gruppen |
| [LKF Ambulante Pauschal-Gruppen](CodeSystem-LKFAmbulantePauschalGruppenCS.html) | LKF Ambulante Pauschal-Gruppen |
| [LKF Hauptdiagnosegruppen](CodeSystem-LKFHauptdiagnosegruppenCS.html) | LKF Hauptdiagnosegruppen |
| [LKF medizinische Einzelleistungen (MEL)](CodeSystem-LKFmedizinischeEinzelleistungenCS.html) | LKF medizinische Einzelleistungen (MEL) |
| [MOPED VAESupportingInformationCategory](CodeSystem-ClaimSupportingInformationCategoryCS.html) | Arten von zusätzlichen Informationen in der VAE |
| [Moped Aufnahmeart des Patienten](CodeSystem-AbgangsartCS.html) | Zulässige Ausprägungen Aufnahmeart (LKF & KaOrg) |
| [Moped Aufnahmeart des Patienten](CodeSystem-AufnahmeartCS.html) | Zulässige Ausprägungen Aufnahmeart (LKF & KaOrg) |
| [Moped Claim Item Category CodeSystem](CodeSystem-MopedClaimItemCategoryCS.html) | CodeSystem für die Arten von Claim Item Kategorien |
| [Moped Composition Sections](CodeSystem-CompositionSectionsCS.html) | CodeSystem für die Moped Sections der Composition Ressource |
| [Moped Device Types CodeSystem](CodeSystem-MopedDeviceTypesCS.html) | CodeSystem für die Moped Device Types |
| [Moped Encounter Participant Type CodeSystem](CodeSystem-MopedEncounterParticipantTypesCS.html) | CodeSystem für die Moped Encounter Participant Types |
| [Sonderklasse CodeSystem](CodeSystem-SonderklasseCS.html) | CodeSystem für die Klasse (KaOrg) |
| [Spezielle Betriebsform](CodeSystem-SpezielleBetriebsformenCS.html) | Spezielle Betriebsformen (gemäß ÖSG bzw. KAKuG) |
| [Spezielle Organisationsformen](CodeSystem-SpezielleOrganisationsformenCS.html) | Spezielle Organisationsformen (gemäß ÖSG bzw. KAKuG) |
| [Status der Versichertenanspruchserklärung](CodeSystem-VAEStatusCS.html) | Status der Versichertenanspruchserklärung |
| [Transportart](CodeSystem-TransportartCS.html) | CodeSystem für die Transportart des Patienten |
| [Ursache für Behandlung](CodeSystem-UrsacheCS.html) | CodeSystem für die Ursache der Behandlung laut Ka-Org |
| [Verdacht auf Arbeits- oder Schuelerunfall CodeSystem](CodeSystem-VerdachtArbeitsSchuelerunfallCS.html) | CodeSystem für den Verdacht auf einen Arbeits- oder Schuelerunfall |
| [Workflow Status eines Falls](CodeSystem-WorkflowStatusCS.html) | CodeSystem für die Statusoptionen in denen sich ein Fall befinden kann. |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [AbteilungHerzJesu1](HealthcareService-AbteilungHerzJesu1.html) | Hackathon Stammdaten: Abteilung 1 der KA Herz Jesu |
| [AbteilungKARied1](HealthcareService-AbteilungKARied1.html) | Hackathon Stammdaten: Abteilung 1 der KA Ried |
| [AbteilungKARied2](HealthcareService-AbteilungKARied2.html) | Hackathon Stammdaten: Abteilung 2 der KA Ried |
| [AbteilungKARied3](HealthcareService-AbteilungKARied3.html) | Hackathon Stammdaten: Abteilung 3 der KA Ried |
| [AbteilungKARied4](HealthcareService-AbteilungKARied4.html) | Hackathon Stammdaten: Abteilung 4 der KA Ried |
| [Condition42.1](Condition-Condition42.1.html) |  |
| [Encounter42](Encounter-Encounter42.html) |  |
| [I12 QuestionnaireResponse für TISS-A-Daten](QuestionnaireResponse-TISSAQuestionnaireResponse.html) |  |
| [KAK999](Organization-KAK999.html) |  |
| [KAK999ABT11111100](HealthcareService-KAK999ABT11111100.html) |  |
| [KAK999ABT12111100](HealthcareService-KAK999ABT12111100.html) |  |
| [KAK999ABT12118102](HealthcareService-KAK999ABT12118102.html) |  |
| [KAK999ABT16075000](HealthcareService-KAK999ABT16075000.html) |  |
| [KAK999ABT16111111](HealthcareService-KAK999ABT16111111.html) |  |
| [KAK999ABT16111112](HealthcareService-KAK999ABT16111112.html) |  |
| [KAK999ABT16211100](HealthcareService-KAK999ABT16211100.html) |  |
| [KAK999ABT16518011](HealthcareService-KAK999ABT16518011.html) |  |
| [LKF K08 Questionnaire](Questionnaire-LKFK08Questionnaire.html) | LKF K08 Questionnaire - Kostenstellen-Statistik und Kostennachweis (Bettenführende Hauptkostenstelle) |
| [LKF Testdaten Fall](Composition-Composition42.html) |  |
| [LKFRequest42](Claim-LKFRequest42.html) |  |
| [LocationKAHerzJesu](Location-LocationKAHerzJesu.html) | Stammdaten: Location der KA Herz Jesu |
| [LocationKAK999](Location-LocationKAK999.html) |  |
| [LocationKARied](Location-LocationKARied.html) | Stammdaten: Location der KA Ried |
| [MOPED PJ1 Composition nach $aufnehmen](Composition-PJ1CompositionAufnehmen.html) | PJ1 Beispiel der Composition Ressource nach $aufnehmen |
| [OrganizationAffiliationWgfHerzJesu](OrganizationAffiliation-OrganizationAffiliationWgfHerzJesu.html) | Hackathon Stammdaten: Organization Affiliation zwischen LGF und KA Herz Jesu |
| [OrganizationHerzJesuKrankenhaus](Organization-OrganizationHerzJesuKrankenhaus.html) | Hackathon Stammdaten: KA Herz Jesu |
| [OrganizationKrankenhausRied](Organization-OrganizationKrankenhausRied.html) | Hackathon Stammdaten: KA Ried |
| [OrganizationLGF](Organization-OrganizationLGF.html) | Hackathon Stammdaten: LGF Wien |
| [OrganizationUeberweisendeOrganization1](Organization-OrganizationUeberweisendeOrganization1.html) | Hackathon Stammdaten: Überweisende Organisation 1 |
| [OrganizationUeberweisendeOrganization2](Organization-OrganizationUeberweisendeOrganization2.html) | Hackathon Stammdaten: Überweisende Organisation 2 |
| [PJ1Condition1](Condition-PJ1Condition1.html) | Hackathon Patient Journey 1 Beispiel: Condition 1 |
| [PJ1Coverage](Coverage-PJ1Coverage.html) | Hackathon Patient Journey 1 Beispiel: Coverage |
| [PJ1Encounter](Encounter-PJ1Encounter.html) | Hackathon Patient Journey 1 Beispiel: Encounter |
| [PJ1EncounterAufnahme](Encounter-PJ1EncounterAufnahme.html) | Hackathon Patient Journey 1 Beispiel: Encounter |
| [PJ1EncounterBasis](Encounter-PJ1EncounterBasis.html) | Maskierung Patient Journey 1 Beispiel: Encounter |
| [PJ1EncounterBund](Encounter-PJ1EncounterBund.html) | Maskierung Patient Journey 1 Beispiel: EncounterBund |
| [PJ1EncounterLGF](Encounter-PJ1EncounterLGF.html) | Maskierung Patient Journey 1 Beispiel: EncounterLGF |
| [PJ1EncounterSV](Encounter-PJ1EncounterSV.html) | Maskierung Patient Journey 1 Beispiel: EncounterSV |
| [PJ1LKFRequest1](Claim-PJ1LKFRequest1.html) | Hackathon Patient Journey 1 Beispiel: LKFRequest 1 |
| [PJ1LKFResponse1](ClaimResponse-PJ1LKFResponse1.html) | Hackathon Patient Journey 1 Beispiel: LKFResponse 1 |
| [PJ1Patient](Patient-PJ1Patient.html) | Hackathon Patient Journey 1 Beispiel: Patient |
| [PJ1Procedure1](Procedure-PJ1Procedure1.html) | Hackathon Patient Journey 1 Beispiel: Procedure 1 |
| [PJ1TransferEncounter1](Encounter-PJ1TransferEncounter1.html) | Hackathon Patient Journey 1 Beispiel: TransferEncounter 1 |
| [PJ1TransferEncounter1Aufnahme](Encounter-PJ1TransferEncounter1Aufnahme.html) | Hackathon Patient Journey 1 Beispiel: TransferEncounter 1 |
| [PJ1VAERequest1](Claim-PJ1VAERequest1.html) | Hackathon Patient Journey 1 Beispiel: VAERequest 1 |
| [PJ1VAEResponse1](ClaimResponse-PJ1VAEResponse1.html) | Hackathon Patient Journey 1 Beispiel: VAEResponse 1 |
| [PJ2Condition1](Condition-PJ2Condition1.html) | Hackathon Patient Journey 2 Beispiel: Condition 1 |
| [PJ2Condition2](Condition-PJ2Condition2.html) | Hackathon Patient Journey 2 Beispiel: Condition 2 |
| [PJ2Coverage](Coverage-PJ2Coverage.html) | Hackathon Patient Journey 2 Beispiel: Coverage |
| [PJ2Encounter](Encounter-PJ2Encounter.html) | Hackathon Patient Journey 2 Beispiel: Encounter |
| [PJ2LKFRequest1](Claim-PJ2LKFRequest1.html) | Hackathon Patient Journey 2 Beispiel: LKFRequest 1 |
| [PJ2LKFResponse1](ClaimResponse-PJ2LKFResponse1.html) | Hackathon Patient Journey 2 Beispiel: LKFResponse 1 |
| [PJ2Patient](Patient-PJ2Patient.html) | Hackathon Patient Journey 2 Beispiel: Patient |
| [PJ2Procedure1](Procedure-PJ2Procedure1.html) | Hackathon Patient Journey 2 Beispiel: Procedure 1 |
| [PJ2Procedure2](Procedure-PJ2Procedure2.html) | Hackathon Patient Journey 2 Beispiel: Procedure 2 |
| [PJ2TransferEncounter1](Encounter-PJ2TransferEncounter1.html) | Hackathon Patient Journey 2 Beispiel: TransferEncounter 1 |
| [PJ2TransferEncounter2](Encounter-PJ2TransferEncounter2.html) | Hackathon Patient Journey 2 Beispiel: TransferEncounter 2 |
| [PJ2TransferEncounter3](Encounter-PJ2TransferEncounter3.html) | Hackathon Patient Journey 2 Beispiel: TransferEncounter 3 |
| [PJ2TransferEncounter4](Encounter-PJ2TransferEncounter4.html) | Hackathon Patient Journey 2 Beispiel: TransferEncounter 4 |
| [PJ2TransferEncounter5](Encounter-PJ2TransferEncounter5.html) | Hackathon Patient Journey 2 Beispiel: TransferEncounter 5 |
| [PJ2VAERequest1](Claim-PJ2VAERequest1.html) | Hackathon Patient Journey 2 Beispiel: VAERequest 1 |
| [PJ2VAEResponse1](ClaimResponse-PJ2VAEResponse1.html) | Hackathon Patient Journey 2 Beispiel: VAEResponse 1 |
| [Patient42](Patient-Patient42.html) |  |
| [SAPS42.1](QuestionnaireResponse-SAPS42.1.html) |  |
| [SV11](Organization-SV11.html) | Hackathon Stammdaten: ÖGK Wien |
| [SV12](Organization-SV12.html) | Hackathon Stammdaten: ÖGK Niederösterreich |
| [SV13](Organization-SV13.html) | Hackathon Stammdaten: ÖGK Burgenland |
| [SV14](Organization-SV14.html) | Hackathon Stammdaten: ÖGK Oberösterreich |
| [SV15](Organization-SV15.html) | Hackathon Stammdaten: ÖGK Steiermark |
| [SV16](Organization-SV16.html) | Hackathon Stammdaten: ÖGK Kärnten |
| [SV17](Organization-SV17.html) | Hackathon Stammdaten: ÖGK Salzburg |
| [SV18](Organization-SV18.html) | Hackathon Stammdaten: ÖGK Tirol |
| [SV19](Organization-SV19.html) | Hackathon Stammdaten: ÖGK Vorarlberg |
| [Stroke Unit Registermeldung – Patientendaten](Questionnaire-strokeunit-questionnaire.html) | Fragen zur Registermeldung Stroke Unit – Abschnitt Patientendaten |
| [Subscription Topic VAE abgelehnt](SubscriptionTopic-vaeAbgelehnt.html) | SubscriptionTopic für die KA, um bei abgelehnten VAEs benachrichtigt zu werden. |
| [Subscription Topic neue VAE](SubscriptionTopic-neueVAE.html) | SubscriptionTopic für die SV, um bei neuen VAEs benachrichtigt zu werden. |
| [TISS42.1](QuestionnaireResponse-TISS42.1.html) |  |
| [TISS42.2](QuestionnaireResponse-TISS42.2.html) |  |
| [TISS42.3](QuestionnaireResponse-TISS42.3.html) |  |
| [Test1PatientBund](Patient-Test1PatientBund.html) | Maskierung Beispiel PatientBund |
| [Test1PatientLGF](Patient-Test1PatientLGF.html) | Maskierung Beispiel PatientLGF |
| [Test1PatientOhneMaskierung](Patient-Test1PatientOhneMaskierung.html) | Maskierung Beispiel Patient |
| [Test1PatientSV](Patient-Test1PatientSV.html) | Maskierung Beispiel PatientSV |
| [Test2SAPS3QuestionnaireResponse1](QuestionnaireResponse-Test2SAPS3QuestionnaireResponse1.html) |  |
| [TransferEncounter42.1](Encounter-TransferEncounter42.1.html) |  |
| [TransferEncounter42.2](Encounter-TransferEncounter42.2.html) |  |
| [XDokExampleDevice](Device-XDokExampleDevice.html) | Moped Example XDok Device |
| [strokeunit-questionnaire-response-1](QuestionnaireResponse-strokeunit-questionnaire-response-1.html) |  |

