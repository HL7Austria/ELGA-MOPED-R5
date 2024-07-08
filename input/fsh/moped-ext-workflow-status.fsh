
Extension:    WorkflowStatus
Id:           moped-ext-workflow-status
Title:        "Workflow Status" 
Description:  "MOPED Extension für den Workflowstatus. Dieser beschreibt den Zustand in dem sich der administrative Fall derzeit befindet"
Context: MOPEDAccount
* value[x] 1..1
* value[x] only code
* value[x] from $workflowstatus (required)
* value[x] ^binding.description = "Code für den MOPED Workflowstatus"

