-- =============================================
--    _________.__      __________        __
--  /   _____/|__| ____\______   \ _____/  |_
--  \_____  \ |  |/    \|    |  _//  _ \   __\
--  /        \|  |   |  \    |   (  <_> )  |
-- /_______  /|__|___|  /______  /\____/|__|
--        \/         \/       \/
-- ==============================================
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

-- Load helpers & functions
dofile(localPath .. "lib/regions.lua")
dofile(localPath .. "lib/gearFarm.lua")
dofile(localPath .. "lib/scriptUpdater.lua")
dofile(localPath .. "lib/dialogs/gui.lua")

-- Check if there are updates to the script
automaticUpdates ();

if gearSelection == 1 then gearSelection = "gearAttack"
elseif gearSelection == 2 then gearSelection = "gearDefense"
elseif gearSelection == 3 then gearSelection = "gearHealth"
elseif gearSelection == 4 then gearSelection = "gearCrit"
elseif gearSelection == 5 then gearSelection = "gearCritRes"
elseif gearSelection == 6 then gearSelection = "gearRecovery"
end

while true do
  gearFarm ();
end
