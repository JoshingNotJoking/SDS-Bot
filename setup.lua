-- ========================
-- SinBot Update and Setup
-- ========================

dialogInit()
-- GUI
addTextView("  ") addTextView("Network Functions in Ankulua settings must be enabled for this to work.")

dialogShow("Important")

function assetSetup ()
  -- Make any directories that are missing
  toast ("Creating missing directories (if any)");
  local directories = loadstring(httpGet("https://raw.githubusercontent.com/JoshingNotJoking/SinBot/master/lib/setup/directoryCreator.lua"))
  directories ();

  -- Download Scripts
  toast ("Downloading Scripts");
  local scripts = loadstring(httpGet("https://raw.githubusercontent.com/JoshingNotJoking/SinBot/master/lib/setup/scriptDownloader.lua"))
  scripts ();
  toast ("Scripts Downloaded");

  -- Download images
  toast ("Downloading Images", 3);
  local images = loadstring(httpGet("https://raw.githubusercontent.com/JoshingNotJoking/SinBot/master/lib/setup/imageDownloader.lua"))
  images ();
  toast ("Images Downloaded");

  scriptExit("Update complete!")
end

assetSetup ()
