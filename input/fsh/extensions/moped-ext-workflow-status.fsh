
Extension:    WorkflowStatus
Id:           moped-ext-workflow-status
Title:        "Workflow Status" 
Description:  "MOPED Extension für den Workflowstatus. Dieser beschreibt den Zustand in dem sich der administrative Fall derzeit befindet"
Context: MopedAccount
* value[x] 1..1
* value[x] only Coding
* value[x] from WorkflowStatusVS (required)
* value[x] ^binding.description = "Code für den MOPED Workflowstatus"

