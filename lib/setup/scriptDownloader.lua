-- ========================
-- Script Downloader
-- ========================
-- Credit to Palbot for the implementation: https://github.com/Paladiex/Palbot

localPath = scriptPath();

function downloadScripts()
  -- /
  httpDownload("https://raw.githubusercontent.com/JoshingNotJoking/SinBot/master/main.lua", localPath .."main.lua");
  httpDownload("https://raw.githubusercontent.com/JoshingNotJoking/SinBot/master/setup.lua", localPath .."setup.lua");
  -- /lib
  httpDownload("https://raw.githubusercontent.com/JoshingNotJoking/SinBot/master/lib/gearFarm.lua", localPath .."/lib/gearFarm.lua");
  httpDownload("https://raw.githubusercontent.com/JoshingNotJoking/SinBot/master/lib/version.lua", localPath .."/lib/version.lua");
  httpDownload("https://raw.githubusercontent.com/JoshingNotJoking/SinBot/master/lib/regions.lua", localPath .."/lib/regions.lua");
  -- /lib/dialogs
  httpDownload("https://raw.githubusercontent.com/JoshingNotJoking/SinBot/master/lib/dialogs/gearFarm.lua", localPath .."/lib/dialogs/gearFarm.lua");
  httpDownload("https://raw.githubusercontent.com/JoshingNotJoking/SinBot/master/lib/dialogs/gui.lua", localPath .."/lib/dialogs/gui.lua");
  -- /lib/setup
  httpDownload("https://raw.githubusercontent.com/JoshingNotJoking/SinBot/master/lib/setup/imageDownload.lua", localPath .."/lib/setup/imageDownload.lua");
  httpDownload("https://raw.githubusercontent.com/JoshingNotJoking/SinBot/master/lib/setup/scriptDownload.lua", localPath .."/lib/setup/scriptDownload.lua");
end

downloadScripts ();
