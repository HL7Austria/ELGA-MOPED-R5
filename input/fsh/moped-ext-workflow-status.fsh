

Alias: $workflowstatus = http://tbd.at/moped-ext-workflow-status


Extension:    WorkflowStatus
Id:           moped-ext-workflow-status
Title:        "Workflow Status" 
Description:  "MOPED Extension für den Workflowstatus. Dieser beschreibt den Zustand in dem sich der administrative Fall derzeit befindet"
* valueCode 1..1
* valueCode only code
* valueCode from $workflowstatus (required)
* valueCode ^binding.description = "Code für den MOPED Workflowstatus"

