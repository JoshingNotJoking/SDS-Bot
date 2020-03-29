-- ========================
-- Graphical User Interface
-- ========================
function introPrompt ()
  dialogInit()
  -- GUI
  addTextView("  ") addTextView("What would you like to do?") newRow()
  addRadioGroup("session", 1)
  addRadioButton("Gear Farm", 1)
  addTextView("  ") newRow()
  dialogShow("Welcome to SinBot")
end

function updatePrompt ()
  dialogInit()
  -- GUI
  addTextView("  ") addTextView("Would you like to update?") newRow()
  addRadioGroup("choice", 1)
  addRadioButton("Yes, update now", 1)
  addRadioButton("No, update later", 2)
  addTextView("  ") newRow()
  dialogShow("Update Available")
end
