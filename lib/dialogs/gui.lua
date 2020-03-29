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

function gearFarmPrompt ()
  dialogInit()

  spinnerGearReturn = {"Attack","Defense","Health","Crit Chance","Crit Resist","Recovery" }

  -- GUI
  addTextView("What gear set do you want to farm?") newRow()
  if (session == 1) then
      addSpinnerIndex("gearSelection", spinnerGearReturn, "Attack") addTextView("  ") newRow()
  end

  addTextView("Salvage Gear When Full?")newRow()
  addCheckBox("gearCommon", "Common ", true) addCheckBox("gearUncommon", "Uncommon", true) addCheckBox("gearRare", "Rare", true) addCheckBox("gearSuperRare", "Super Rare", false)

  dialogShow("Gear Farm Options")
end
