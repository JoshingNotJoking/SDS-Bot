dialogInit()

spinnerGearReturn = {"Attack","Defense","Health","Crit Chance","Crit Resist","Recovery" }

-- GUI
addTextView("What gear set do you want to farm?") newRow()
if (action == 1) then
    addSpinnerIndex("gearSelection", spinnerGearReturn, "Attack") addTextView("  ") newRow()
end

addTextView("Salvage Gear When Full?")newRow()
addCheckBox("gearCommon", "Common ", true) addCheckBox("gearUncommon", "Uncommon", true) addCheckBox("gearRare", "Rare", true) addCheckBox("gearSuperRare", "Super Rare", false)

dialogShow("SinBot Configuration")
