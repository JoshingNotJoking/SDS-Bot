localPath = scriptPath()
imgPath = localPath .. "image/1280x720"
setImagePath(imgPath)

dialogInit()
-- GUI
addTextView("  ") addTextView("Network Functions in Ankulua settings must be enabled for this to work") newRow()
addTextView("  ") addTextView("Create the following directories before running this script:") newRow()
addTextView("  ") addTextView("- image") newRow()
addTextView("  ") addTextView("- image/1280x720") newRow()
addTextView("  ") addTextView("- lib") newRow()
addTextView("  ") addTextView("- lib/dialogs") newRow()

dialogShow("Important")

function assetSetup ()
  -- Download Scripts
  httpDownload("https://raw.githubusercontent.com/JoshingNotJoking/SinBot/master/main.lua", localPath .."main.lua")
  httpDownload("https://raw.githubusercontent.com/JoshingNotJoking/SinBot/master/lib/version.lua", localPath .."/lib/version.lua")
  httpDownload("https://raw.githubusercontent.com/JoshingNotJoking/SinBot/master/lib/regions.lua", localPath .."/lib/regions.lua")
  httpDownload("https://raw.githubusercontent.com/JoshingNotJoking/SinBot/master/lib/gearFarm.lua", localPath .."/lib/gearFarm.lua")
  httpDownload("https://raw.githubusercontent.com/JoshingNotJoking/SinBot/master/lib/dialogs/gearFarm.lua", localPath .."/lib/dialogs/gearFarm.lua")
  httpDownload("https://raw.githubusercontent.com/JoshingNotJoking/SinBot/master/lib/dialogs/gui.lua", localPath .."/lib/dialogs/gui.lua")
  httpDownload("https://raw.githubusercontent.com/JoshingNotJoking/SinBot/master/imageupdater.lua", localPath .."imageupdater.lua")

  -- Download images
  dofile(localPath .. "imageupdater.lua")
  scriptExit("Scripts assets downloaded!")
end

assetSetup ()
