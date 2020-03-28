-- ========================
-- Graphical User Interface
-- ========================

dialogInit()
-- GUI
addTextView("  ") addTextView("What would you like to do?") newRow()
addRadioGroup("action", 1)
addRadioButton("Gear Farm", 1)
addTextView("  ") newRow()
dialogShow("Action")

-- == Configuration ==
if action == 1 or action == 2 or action == 3 then -- GUI for gear farming
    dofile(localPath .. "lib/dialogs/gearFarm.lua")
else
    scriptExit("Error", "No action seems to be choosen. Please report this issue.")
end
