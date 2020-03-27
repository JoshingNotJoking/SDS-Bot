-- Check to make sure script is up to date. Move to a function file later.
localPath = scriptPath()
getNewestVersion = loadstring(httpGet("https://raw.githubusercontent.com/JoshingNotJoking/SinBot/master/lib/version.lua"))
latestVersion = getNewestVersion()
currentVersion = dofile(localPath .."/lib/version.lua")
imgPath = localPath .. "image/1280x720"
setImagePath(imgPath)


dofile(localPath .. "lib/regions.lua")

function automaticUpdates ()
  if currentVersion == latestVersion then
    toast ("You are up to date!")
  else
    httpDownload("https://raw.githubusercontent.com/JoshingNotJoking/SinBot/master/main.lua", localPath .."main.lua")
    httpDownload("https://raw.githubusercontent.com/JoshingNotJoking/SinBot/master/lib/version.lua", localPath .."/lib/version.lua")
    httpDownload("https://raw.githubusercontent.com/JoshingNotJoking/SinBot/master/lib/regions.lua", localPath .."/lib/regions.lua")
    httpDownload("https://raw.githubusercontent.com/JoshingNotJoking/SinBot/master/imageupdater.lua", localPath .."imageupdater.lua")
    scriptExit("You have Updated SinBot!")
  end
end

automaticUpdates ();

-- ========================
-- Graphical User Interface
-- ========================
-- Resolution & StartScreen
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

if gearSelection == 1 then gearSelection = "gearAttack"
elseif gearSelection == 2 then gearSelection = "gearDefense"
elseif gearSelection == 3 then gearSelection = "gearHealth"
elseif gearSelection == 4 then gearSelection = "gearCrit"
elseif gearSelection == 5 then gearSelection = "gearCritRes"
elseif gearSelection == 6 then gearSelection = "gearRecovery"
end


function gearFarm ()
  if areaTavern:existsClick(Pattern("battleButton.png")) then
    toast ("Moving to battle screen");
    wait(1);
    areaBattle:existsClick(Pattern("battleEquipButton.png"));
    wait(1);
    -- Select gear to farm based on dialog selection
    if existsClick(Pattern(gearSelection .. ".png")) then
      toast (gearSelection .. "Selected");
      closeRepeatResults:existsClick(Pattern("closeRepeatResults.png"));
      if gearStart:existsClick(Pattern("gearStartButton.png")) or gearGo:existsClick(Pattern("gearGoButton.png")) then
        wait(1);
        repeat
          wait(.5);
        until areaStageSelect:exists(Pattern("areaStageSelect.png"));

        if exists(Pattern("stageHardButton.png")) then
          existsClick(Pattern("stageHardButton.png"));
          wait(.5);
          autoRepeatOff:existsClick(Pattern("autoRepeatOff.png"));
          stageStartButton:existsClick(Pattern("stageStartButton.png"));

          repeat
            wait(.5);
          until areaRepeatResults:exists(Pattern("areaRepeatResults.png"));
        else
          scriptExit("Please unlock hard stage before continuing");
        end

        if areaRepeatResults:exists(Pattern("areaRepeatResults.png")) then
          closeRepeatResults:existsClick(Pattern("closeRepeatResults.png"));
        end

        closeBattleButton:existsClick(Pattern("closeBattleButton.png"));
      end
    end
  else
    toast ("Not at the tavern");
    tavernGlobal:existsClick(Pattern("tavernGlobalButton.png"));
  end

  completeGearButton:existsClick(Pattern("completeGearButton.png"));
  continueQuestButton:existsClick(Pattern("continueQuestButton.png"));

  -- Watch for Death Match prompts and close them
  if deathMatchPrompt:exists(Pattern("deathMatchPrompt.png")) then
    closeDeathMatch:existsClick(Pattern("closeDeathMatch.png"));
  end
end

while true do
  gearFarm ();
end
