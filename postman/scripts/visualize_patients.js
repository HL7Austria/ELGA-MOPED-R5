// copy paste into postman scripts tab to use
var data = pm.response.json();

// Überprüfen, ob das FHIR Bundle vorhanden ist
if (data.resourceType === "Bundle" && data.entry) {
    var patients = [];

    // Durchlaufen der Einträge im Bundle, um Patientendaten zu extrahieren
    data.entry.forEach(function(entry) {
        if (entry.resource && entry.resource.resourceType === "Patient") {
            var patient = entry.resource;

            // parse adress
            var address="None";
            if(patient.hasOwnProperty("address")){
                if(patient.address[0].hasOwnProperty("text")){
                    address = patient.address[0].text
                }
                else if(patient.address[0].hasOwnProperty("line") && patient.address[0].hasOwnProperty("city") && patient.address[0].hasOwnProperty("postalCode")){
                    address = patient.address[0].line[0] + ', ' + patient.address[0].postalCode + ' ' + patient.address[0].city;
                }
            }

            // parse SVNR
            var identifiers = patient.identifier.flatMap(i => i.type.coding[0].code)
            var svnr = "None"
            var ss_idx = identifiers.findIndex(e => e == "SS")
            if(ss_idx != -1){
                svnr = patient.identifier[ss_idx].value
            }

            // check if name is null
            if(!patient.hasOwnProperty("name")){
                patient.name=[{"family":"None", "given": "None"}];
            }
            patients.push({
                id: patient.id,
                name: patient.name[0].family + ', ' + patient.name[0].given.join(' '),
                gender: patient.gender,
                birthDate: patient.birthDate,
                address: address,
                svnr: svnr
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
        <h3 style="text-align: center;">Patientenübersicht</h3>
        <table>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Geschlecht</th>
                <th>Geburtsdatum</th>
                <th>Adresse</th>
                <th>SVNR</th>
            </tr>
            {{#each patients}}
            <tr>
                <td>{{this.id}}</td>
                <td>{{this.name}}</td>
                <td>{{this.gender}}</td>
                <td>{{this.birthDate}}</td>
                <td>{{this.address}}</td>
                <td>{{this.svnr}}</td>
            </tr>
            {{/each}}
        </table>
        </body>
        </html>
    `;

    pm.visualizer.set(visualizerTemplate, { patients: patients });
} else {
    // Wenn das Bundle nicht die erwarteten Daten enthält
    pm.visualizer.set({ message: "Keine Patientendaten im FHIR Bundle gefunden" });
}