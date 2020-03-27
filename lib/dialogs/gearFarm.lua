dialogInit()

spinnerGearReturn = {
    "Attack",
    "Defense",
    "Health",
    "Crit Chance",
    "Crit Resist",
    "Recovery" }

-- GUI
addTextView("What gear set do you want to farm?") newRow()
if (action == 1) then
    addSpinnerIndex("gearSelection", spinnerGearReturn, "Attack") addTextView("  ") newRow()
end

dialogShow("Gear Farm Configuration")
