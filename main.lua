-- Check to make sure script is up to date. Move to a function file later.
getNewestVersion = loadstring(httpGet("https://raw.githubusercontent.com/JoshingNotJoking/SinBot/master/lib/version.lua"))
latestVersion = getNewestVersion()
currentVersion = dofile(scriptPath() .."/lib/version.lua")

function automaticUpdates ()
  if currentVersion == latestVersion then
    toast ("You are up to date!")
  else
    httpDownload("https://raw.githubusercontent.com/JoshingNotJoking/SinBot/master/main.lua", scriptPath() .."main.lua")
    httpDownload("https://raw.githubusercontent.com/JoshingNotJoking/SinBot/master/lib/version.lua", scriptPath() .."/lib/version.lua")
    scriptExit("You have Updated SinBot!")
  end
end


automaticUpdates ();
