// copy paste into postman scripts tab to use
var data = pm.response.json();

// Überprüfen, ob das FHIR Bundle vorhanden ist
if (data.resourceType === "Bundle" && data.entry) {
    var encounters = [];

    // Durchlaufen der Einträge im Bundle, um Encounterdaten zu extrahieren
    data.entry.forEach(function(entry) {
        if (entry.resource && entry.resource.resourceType === "Encounter") {
            var encounter = entry.resource;

            // parse aufnahmezahl
            var aufnahmezahl = "None"
            if(encounter.identifier){
                var identifiers = encounter.identifier.flatMap(i => i.type.coding[0].code)
                var vn_idx = identifiers.findIndex(e => e == "VN")
                if(vn_idx != -1){
                    aufnahmezahl = encounter.identifier[vn_idx].value
                }
            }

            encounters.push({
                id: encounter.id,
                aufnahmezahl: aufnahmezahl,
                start: encounter.actualPeriod.start,
                end: encounter.actualPeriod.end,
                status: encounter.status
            });
        }
    });

    // Erstellen der Visualizer-Darstellung
    var visualizerTemplate = `
        <html>
        <head>
            <style>
                table {
                    font-family: Arial, sans-serif;
                    border-collapse: collapse;
                    width: 100%;
                }
                th {
                    background-color: #f2f2f2;
                    color: #333;
                }
                th, td {
                    border: 1px solid #dddddd;
                    text-align: left;
                    padding: 8px;
                }
                tr:nth-child(even) {
                    background-color: #f2f2f2;
                }
            </style>
        </head>
        <body>
        <h3 style="text-align: center;">Encounterübersicht</h3>
        <table>
            <tr>
                <th>ID</th>
                <th>Aufnahmezahl</th>
                <th>Start</th>
                <th>Ende</th>
                <th>Status</th>
            </tr>
            {{#each encounters}}
            <tr>
                <td>{{this.id}}</td>
                <td>{{this.aufnahmezahl}}</td>
                <td>{{this.start}}</td>
                <td>{{this.end}}</td>
                <td>{{this.status}}</td>
            </tr>
            {{/each}}
        </table>
        </body>
        </html>
    `;

    pm.visualizer.set(visualizerTemplate, { encounters: encounters });
} else {
    // Wenn das Bundle nicht die erwarteten Daten enthält
    pm.visualizer.set({ message: "Keine Patientendaten im FHIR Bundle gefunden" });
}