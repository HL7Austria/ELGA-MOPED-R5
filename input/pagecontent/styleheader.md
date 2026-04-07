<style>
.notification-table {
  width: 100%;
  overflow-x: auto;
  max-height: 600px;
  overflow-y: auto;
}

.notification-table th,
.notification-table td {
  padding: 10px;
  background: #f5f5f5; /* Cell color */
  box-shadow: 0 0 0 3px #fff;
  text-align: left;
}
.notification-table th {
  background: #e4e4e4;
}

.table-responsive {
display: block;
width: 100%;
overflow-x: auto;
max-height: 600px;
overflow-y: auto;
}
.table-responsive > table {
width: 100%;}
.table-responsive th,
.table-responsive td {
  padding: 15px;
  background: #f5f5f5;
}
.table-responsive table {
  border-collapse: separate;
  border-spacing: 3px;
}
/* Kopfzeile sticky */
.table-responsive th {
  position: sticky;
  top: 0;
  background: rgb(228, 228, 228);
  z-index: 2;
}
/* Erste Spalte sticky */
.table-responsive th:first-child,
.table-responsive td:first-child {
  position: sticky;
  left: 0;
  background: rgb(228, 228, 228);
  z-index: 3;
}

.table-responsive th:first-child {
  position: sticky;
  top: 0;
  left: 0;
  background: rgb(228, 228, 228);
  z-index: 4;
}

.tabs {
  position: relative;
  min-height: 210px;
  clear: both;
  margin: 35px 0 25px;
  background: #ffffff;
}

.tab {
  float: left;
}

.tab label {
  background: #eeeeee;
  padding: 10px;
  border: 1px solid #cccccc;
  margin-left: -1px;
  position: relative;
  left: 1px;
  top: -29px;
  -webkit-transition: background-color .17s linear;
  transition: background-color .17s linear;
}

.tab input[id^="tab-"] {
  display: none;
}

.content-in-tab {
  position: absolute;
  top: 12px;
  left: 0;
  right: 0;
  bottom: 0;
  background: #ffffff;
  padding: 20px;
  border: 1px solid #cccccc;
  -webkit-transition: opacity .6s linear;
  transition: opacity .6s linear;
  opacity: 0;
}

[type=radio]:checked ~ label {
  background: #ffffff;
  border-bottom: 1px solid #ffffff;
  z-index: 2;
}

[type=radio]:checked ~ label ~ .content-in-tab {
  z-index: 1;
  opacity: 1;
}

pre.json,
pre.xml {
  max-height: 100%;
  height: auto;
  width: 100%;
  box-sizing: border-box;
  resize: vertical;
  overflow: auto;
  white-space: pre-wrap;
  word-wrap: break-word;
}

.request-panel {
  background: #f8f9fa;
  padding: 1.2rem;
  margin: 0.5rem 0;
  border-radius: 0 4px 4px 0;
  border-left: 4px solid #007bff;
}

.request-panel--success {
  border-left-color: #28a745;
}

.request-meta {
  font-size: 0.9em;
  color: #666666;
  margin-top: 0.5rem;
}

.request-code {
  font-family: "SFMono-Regular", Consolas, "Liberation Mono", Menlo, monospace;
  background: #ffffff;
  padding: 1rem;
  border-radius: 4px;
  margin-bottom: 0.8rem;
  font-size: 0.95em;
  line-height: 1.5;
  overflow-x: auto;
}

.request-method-post {
  color: #d63384;
  font-weight: bold;
}

.request-method-get {
  color: #007bff;
  font-weight: bold;
}

.request-url {
  background: #e7f3ff;
  padding: 0.2em 0.4em;
  border-radius: 3px;
  color: #0066cc;
}

.request-header {
  background: #f1f3f4;
  padding: 0.1em 0.3em;
  border-radius: 2px;
}


.tab label.request-tab {
  --tab-height: 120px;
}

.tabs:has(input[id^="tab-request-"]:checked) {
  min-height: 140px;
}

.tabs:has(input[id^="tab-body-"]:checked) {
  min-height: 520px;
}


.tab label.body-tab {
  --tab-height: 500px; 
}

.content-in-tab:has(.request-panel) {
  padding: 8px 12px;
}

.content-in-tab:has(pre) {
  padding: 10px;
  overflow: auto;  
  max-height: calc(100vh - 120px); 
}

.diagram {
  width: 100%;
  max-width: 100%;
  overflow-x: auto;
}

.diagram svg {
  display: block;
  width: 100%;
  height: auto;
  max-width: 1407px;
}

</style>
