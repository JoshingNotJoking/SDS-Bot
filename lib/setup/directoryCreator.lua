-- ========================
-- Directory Creator
-- ========================
localPath = scriptPath();

function createDirectories ()
  mkdir(localPath .. "images");
  mkdir(localPath .. "images/1280x720");
  mkdir(localPath .. "lib");
  mkdir(localPath .. "lib/dialogs");
  mkdir(localPath .. "lib/setup");
end

createDirectories ();
