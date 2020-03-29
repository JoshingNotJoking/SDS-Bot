-- ========================
-- Directory Creator
-- ========================

luaLib = loadstring(httpGet("https://raw.githubusercontent.com/mercobots/luaLib/master/luaLib.lua"))
luaLib()

makeDirectories ()
  mkdir(localPath .. "images");
  mkdir(localPath .. "images/1280x720");
  mkdir(localPath .. "lib");
  mkdir(localPath .. "lib/dialogs");
  mkdir(localPath .. "lib/setup");
end

makeDirectories ()
