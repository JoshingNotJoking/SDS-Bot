-- ========================
-- Script Downloader
-- ========================
-- Credit to Palbot for the implementation: https://github.com/Paladiex/Palbot

function downloadScripts()
  -- /
  httpDownload("https://raw.githubusercontent.com/JoshingNotJoking/SinBot/master/main.lua", localPath .."main.lua");
  httpDownload("https://raw.githubusercontent.com/JoshingNotJoking/SinBot/master/setup.lua", localPath .."setup.lua");
  -- /lib
  httpDownload("https://raw.githubusercontent.com/JoshingNotJoking/SinBot/master/lib/gearFarm.lua", localPath .."/lib/gearFarm.lua");
  httpDownload("https://raw.githubusercontent.com/JoshingNotJoking/SinBot/master/lib/regions.lua", localPath .."/lib/regions.lua");
  -- /lib/dialogs
  httpDownload("https://raw.githubusercontent.com/JoshingNotJoking/SinBot/master/lib/dialogs/gearFarm.lua", localPath .."/lib/dialogs/gearFarm.lua");
  httpDownload("https://raw.githubusercontent.com/JoshingNotJoking/SinBot/master/lib/dialogs/gui.lua", localPath .."/lib/dialogs/gui.lua");
  -- /lib/setup
  httpDownload("https://raw.githubusercontent.com/JoshingNotJoking/SinBot/master/lib/setup/version.lua", localPath .."/lib/setup/version.lua");
  httpDownload("https://raw.githubusercontent.com/JoshingNotJoking/SinBot/master/lib/setup/directoryCreator.lua", localPath .."/lib/setup/directoryCreator.lua");
  httpDownload("https://raw.githubusercontent.com/JoshingNotJoking/SinBot/master/lib/setup/imageDownloader.lua", localPath .."/lib/setup/imageDownloader.lua");
  httpDownload("https://raw.githubusercontent.com/JoshingNotJoking/SinBot/master/lib/setup/scriptDownloader.lua", localPath .."/lib/setup/scriptDownloader.lua");
end

downloadScripts ();
