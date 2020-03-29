luaLib = loadstring(httpGet("https://raw.githubusercontent.com/mercobots/luaLib/master/luaLib.lua"))
localPath = scriptPath()
imgPath = localPath .. "images/1280x720"
setImagePath(imgPath)
luaLib()

dialogInit()
-- GUI
addTextView("  ") addTextView("Network Functions in Ankulua settings must be enabled for this to work.")

dialogShow("Important")

function assetSetup ()
  -- Make any directories that are missing
  mkdir(localPath .. "images");
  mkdir(localPath .. "images/1280x720");
  mkdir(localPath .. "lib");
  mkdir(localPath .. "lib/dialogs");
  mkdir(localPath .. "lib/setup");

  -- Download Scripts
  local scripts = loadstring(httpGet("https://raw.githubusercontent.com/JoshingNotJoking/SinBot/master/lib/setup/scriptDownloader.lua"))
  scripts ();
  toast ("Scripts Downloaded");

  -- Download images
  local images = loadstring(httpGet("https://raw.githubusercontent.com/JoshingNotJoking/SinBot/master/lib/setup/imageDownloader.lua"))
  images ();
  toast ("Images Downloaded");

  scriptExit("Update complete!")
end

assetSetup ()
