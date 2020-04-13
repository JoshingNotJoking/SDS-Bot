-- ========================
-- Graphical User Interface
-- ========================
function introPrompt ()
  dialogInit()
  -- GUI
  addTextView("  ") addTextView("What would you like to do?") newRow()
  addRadioGroup("session", 1)
  addRadioButton("Gear Farm", 1)
  addRadioButton("Guild Boss", 2)
  addRadioButton("Raid Farm", 3)
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

function guildBossPrompt ()
  dialogInit()
  spinnerGBTeamReturn = {"Team 1","Team 2","Team 3","Team 4","Team 5" }

  -- GUIs
  addTextView("  ") addTextView("Which Guild Boss Difficulty?") newRow()
  addRadioGroup("bossDifficulty", 1)
  addRadioButton("Hard", 1)
  addTextView("  ") newRow()
  addTextView("Which team is your guild boss team?") newRow()
  addTextView("(Please confirm they're geared)") newRow()
  addSpinnerIndex("guildBossTeamSelection", spinnerGBTeamReturn, "Team 1") addTextView("  ") newRow()
  dialogShow("Guild Boss")
end

-- function raidFarmPrompt ()
--   dialogInit()
--   -- GUI
--   addTextView("  ") addTextView("SinBot will automatically accept any Raid invitations sent and battle for you.") newRow()
--   addTextView("  ") newRow()
--   addTextView("  ") addTextView("Please confirm your raid teams are geared and capable of autoing.") newRow()
--   addTextView("  ") newRow()
--   dialogShow("Raid Farm")
-- end

function gearFarmPrompt ()
  dialogInit()

  spinnerGearReturn = {"Attack","Defense","Health","Crit Chance","Crit Resist","Recovery" }

  -- GUI
  addTextView("What gear set do you want to farm?") newRow()
  if (session == 1) then
      addSpinnerIndex("gearSelection", spinnerGearReturn, "Attack") addTextView("  ") newRow()
  end

  addTextView("Salvage Gear When Full?")newRow()
  addCheckBox("gearCommon", "Common ", true) addCheckBox("gearUncommon", "Uncommon", true) addCheckBox("gearRare", "Rare", true) addCheckBox("gearSuperRare", "Super Rare", true)

  dialogShow("Gear Farm Options")
end
