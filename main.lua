getNewestVersion = loadstring(httpGet(https://raw.githubusercontent.com/JoshingNotJoking/SDS-Bot/master/lib/version.lua"))
latestVersion = getNewestVersion()
currentVersion = dofile(localPath .."/lib/version.lua")
print (currentVersion)
print (latestVersion)

function automaticUpdates ()
  if currentVersion == latestVersion then
    toast ("You are up to date!")
  else
    httpDownload("https://raw.githubusercontent.com/JoshingNotJoking/SDS-Bot/master/main.lua", localPath .."main.lua")
        httpDownload("https://raw.githubusercontent.com/Paladiex/Palbot/master/lib/version.lua", localPath .."/lib/version.lua")
    scriptExit("You have Updated SinBot!")
  end
end


automaticUpdates ();
