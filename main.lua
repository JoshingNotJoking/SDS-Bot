--------------------------------------------------------------------------
-------------=[ SinBot: Seven Deadly Sins Automator ]=--------------------
--------------------------------------------------------------------------
--------------------------------------------------------------------------
-- Credit to Palbot & Swar-X for implementation and structure inspiration.

-- Basic Configuration
localPath = scriptPath();
getNewestVersion = loadstring(httpGet("https://raw.githubusercontent.com/JoshingNotJoking/SinBot/master/lib/setup/version.lua"));
latestVersion = getNewestVersion();
currentVersion = "dofile(localPath .."/lib/setup/version.lua");"
imgPath = localPath .. "images/1280x720"
setImagePath(imgPath);

-- Load user prompts
dofile(localPath .. "lib/dialogs/gui.lua");

-- Check if there are updates to the script
function automaticUpdates ()
  if currentVersion == latestVersion then
    toast ("SinBot is up to date!");
  else
    updatePrompt();
    if choice == 1 then -- GUI for gear farming
        dofile(localPath .. "setup.lua");
    else
        toast ("You'll be reminded to update on next launch.")
    end
  end
end

automaticUpdates ();

-- Load helpers & functions (This may be expensive for the interpreter)
dofile(localPath .. "lib/regions.lua");
dofile(localPath .. "lib/gearFarm.lua");

-- Ask what user wants to do
introPrompt ();

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
