-- Check to make sure script is up to date. Move to a function file later.
localPath = scriptPath()
getNewestVersion = loadstring(httpGet("https://raw.githubusercontent.com/JoshingNotJoking/SinBot/master/lib/version.lua"))
latestVersion = getNewestVersion()
currentVersion = dofile(localPath .."/lib/version.lua")
imgPath = localPath .. "image/1280x720"
setImagePath(imgPath)
Settings:set("MinSimilarity", 0.90)

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


-- automaticUpdates ();



-- Just an example to learn how clicking works. I don't think this is efficient because it's searching the entire screen.
while true do
  existsClick(Pattern("areaTavern.png"));
end
