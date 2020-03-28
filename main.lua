--------------------------------------------------------------------------
-------------=[ SinBot: Seven Deadly Sins Automator ]=--------------------
--------------------------------------------------------------------------
--------------------------------------------------------------------------
-- Credit to Palbot & Swar-X for implementation and structure inspiration.

-- Basic Configuration
localPath = scriptPath()
getNewestVersion = loadstring(httpGet("https://raw.githubusercontent.com/JoshingNotJoking/SinBot/master/lib/version.lua"))
latestVersion = getNewestVersion()
currentVersion = dofile(localPath .."/lib/version.lua")
imgPath = localPath .. "image/1280x720"
setImagePath(imgPath)

-- Script Updater
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

-- Load helpers & functions (This may be expensive for the interpreter)
dofile(localPath .. "lib/regions.lua")
dofile(localPath .. "lib/gearFarm.lua")
dofile(localPath .. "lib/scriptUpdater.lua")
dofile(localPath .. "lib/dialogs/gui.lua")

if gearSelection == 1 then gearSelection = "gearAttack"
elseif gearSelection == 2 then gearSelection = "gearDefense"
elseif gearSelection == 3 then gearSelection = "gearHealth"
elseif gearSelection == 4 then gearSelection = "gearCrit"
elseif gearSelection == 5 then gearSelection = "gearCritRes"
elseif gearSelection == 6 then gearSelection = "gearRecovery"
end

function gearSalvage ()
  closeEquipmentFull:existsClick(Pattern("closeEquipmentFull.png"));
  menuBackArrow:existsClick(Pattern("menuBackArrow.png"));
  tavernGlobal:existsClick(Pattern("tavernGlobalButton.png"));
  if salvageIcon:existsClick(Pattern("salvageIcon.png")) then
    repeat
      wait(.2);
    until registerAllButton:exists(Pattern("registerAllButton.png"));
  end
  if registerAllButton:existsClick(Pattern("registerAllButton.png")) then
    gearCommonIcon:existsClick(Pattern("gearCommonIcon.png"));
    wait(.2);
    gearUncommonIcon:existsClick(Pattern("gearUncommonIcon.png"));
    wait(.2);
    gearRareIcon:existsClick(Pattern("gearRareIcon.png"));
    wait(.2);
    gearSuperRareIcon:existsClick(Pattern("gearSuperRareIcon.png"));
    wait(.2);
    gearApplyButton:existsClick(Pattern("gearApplyButton.png"));
  end
  repeat
    if salvageButton:existsClick(Pattern("salvageButton.png")) then
      salvageConfirmButton:existsClick(Pattern("salvageConfirmButton.png"));
      repeat
        wait(.1);
      until salvageSuccessButton:exists(Pattern("salvageSuccessButton.png"));
      salvageSuccessButton:existsClick(Pattern("salvageSuccessButton.png"));
    end
    if registerAllButton:existsClick(Pattern("registerAllButton.png")) then
      wait(.2);
      gearApplyButton:existsClick(Pattern("gearApplyButton.png"));
    end
  until salvageMissingEquip:exists(Pattern("salvageMissingEquip.png"));
end

-- Check if there are updates to the script
automaticUpdates ();

while true do
  gearFarm ();
  -- Clear inventory to continue farming
  if areaInventoryPrompt:exists(Pattern("areaInventoryPrompt.png")) then
    toast ("Equipment inventory full!");
    if gearCommon == true or gearUncommon == true or gearRare == true or gearSuperRare == true then
      gearSalvage();
    else
      scriptExit("Equipment inventory full!");
    end
  end
end
