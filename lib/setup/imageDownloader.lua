-- ========================
-- Image Downloader
-- ========================
-- Credit to Palbot for the implementation: https://github.com/Paladiex/Palbot

localPath = scriptPath()
imagesPath = (localPath .. "images/1280x720/")

function downloadimages()
  httpDownload("https://raw.githubusercontent.com/JoshingNotJoking/SinBot/master/images/1280x720/areaQuestReward.png", imagesPath .."areaQuestReward.png");
  httpDownload("https://raw.githubusercontent.com/JoshingNotJoking/SinBot/master/images/1280x720/areaRepeatResults.png", imagesPath .."areaRepeatResults.png");
  httpDownload("https://raw.githubusercontent.com/JoshingNotJoking/SinBot/master/images/1280x720/areaStageSelect.png", imagesPath .."areaStageSelect.png");
  httpDownload("https://raw.githubusercontent.com/JoshingNotJoking/SinBot/master/images/1280x720/autoRepeatOff.png", imagesPath .."autoRepeatOff.png");
  httpDownload("https://raw.githubusercontent.com/JoshingNotJoking/SinBot/master/images/1280x720/battleButton.png", imagesPath .."battleButton.png");
  httpDownload("https://raw.githubusercontent.com/JoshingNotJoking/SinBot/master/images/1280x720/battleEquipButton.png", imagesPath .."battleEquipButton.png");
  httpDownload("https://raw.githubusercontent.com/JoshingNotJoking/SinBot/master/images/1280x720/closeBattleButton.png", imagesPath .."closeBattleButton.png");
  httpDownload("https://raw.githubusercontent.com/JoshingNotJoking/SinBot/master/images/1280x720/closeDeathMatch.png", imagesPath .."closeDeathMatch.png");
  httpDownload("https://raw.githubusercontent.com/JoshingNotJoking/SinBot/master/images/1280x720/closeRepeatResults.png", imagesPath .."closeRepeatResults.png");
  httpDownload("https://raw.githubusercontent.com/JoshingNotJoking/SinBot/master/images/1280x720/completeGearButton.png", imagesPath .."completeGearButton.png");
  httpDownload("https://raw.githubusercontent.com/JoshingNotJoking/SinBot/master/images/1280x720/continueQuestButton.png", imagesPath .."continueQuestButton.png");
  httpDownload("https://raw.githubusercontent.com/JoshingNotJoking/SinBot/master/images/1280x720/deathMatchPrompt.png", imagesPath .."deathMatchPrompt.png");
  httpDownload("https://raw.githubusercontent.com/JoshingNotJoking/SinBot/master/images/1280x720/gearAttack.png", imagesPath .."gearAttack.png");
  httpDownload("https://raw.githubusercontent.com/JoshingNotJoking/SinBot/master/images/1280x720/gearCrit.png", imagesPath .."gearCrit.png");
  httpDownload("https://raw.githubusercontent.com/JoshingNotJoking/SinBot/master/images/1280x720/gearCritRes.png", imagesPath .."gearCritRes.png");
  httpDownload("https://raw.githubusercontent.com/JoshingNotJoking/SinBot/master/images/1280x720/gearDefense.png", imagesPath .."gearDefense.png");
  httpDownload("https://raw.githubusercontent.com/JoshingNotJoking/SinBot/master/images/1280x720/gearGoButton.png", imagesPath .."gearGoButton.png");
  httpDownload("https://raw.githubusercontent.com/JoshingNotJoking/SinBot/master/images/1280x720/gearHealth.png", imagesPath .."gearHealth.png");
  httpDownload("https://raw.githubusercontent.com/JoshingNotJoking/SinBot/master/images/1280x720/gearRecovery.png", imagesPath .."gearRecovery.png");
  httpDownload("https://raw.githubusercontent.com/JoshingNotJoking/SinBot/master/images/1280x720/gearStartButton.png", imagesPath .."gearStartButton.png");
  httpDownload("https://raw.githubusercontent.com/JoshingNotJoking/SinBot/master/images/1280x720/tavernGlobalButton.png", imagesPath .."tavernGlobalButton.png");
  httpDownload("https://raw.githubusercontent.com/JoshingNotJoking/SinBot/master/images/1280x720/stageHardButton.png", imagesPath .."stageHardButton.png");
  httpDownload("https://raw.githubusercontent.com/JoshingNotJoking/SinBot/master/images/1280x720/stageStartButton.png", imagesPath .."stageStartButton.png");
  httpDownload("https://raw.githubusercontent.com/JoshingNotJoking/SinBot/master/images/1280x720/areaInventoryPrompt.png", imagesPath .."areaInventoryPrompt.png");
  httpDownload("https://raw.githubusercontent.com/JoshingNotJoking/SinBot/master/images/1280x720/closeEquipmentFull.png", imagesPath .."closeEquipmentFull.png");
  httpDownload("https://raw.githubusercontent.com/JoshingNotJoking/SinBot/master/images/1280x720/gearApplyButton.png", imagesPath .."gearApplyButton.png");
  httpDownload("https://raw.githubusercontent.com/JoshingNotJoking/SinBot/master/images/1280x720/gearCommonIcon.png", imagesPath .."gearCommonIcon.png");
  httpDownload("https://raw.githubusercontent.com/JoshingNotJoking/SinBot/master/images/1280x720/gearUncommonIcon.png", imagesPath .."gearUncommonIcon.png");
  httpDownload("https://raw.githubusercontent.com/JoshingNotJoking/SinBot/master/images/1280x720/gearRareIcon.png", imagesPath .."gearRareIcon.png");
  httpDownload("https://raw.githubusercontent.com/JoshingNotJoking/SinBot/master/images/1280x720/gearSuperRareIcon.png", imagesPath .."gearSuperRareIcon.png");
  httpDownload("https://raw.githubusercontent.com/JoshingNotJoking/SinBot/master/images/1280x720/menuBackArrow.png", imagesPath .."menuBackArrow.png");
  httpDownload("https://raw.githubusercontent.com/JoshingNotJoking/SinBot/master/images/1280x720/registerAllButton.png", imagesPath .."registerAllButton.png");
  httpDownload("https://raw.githubusercontent.com/JoshingNotJoking/SinBot/master/images/1280x720/salvageButton.png", imagesPath .."salvageButton.png");
  httpDownload("https://raw.githubusercontent.com/JoshingNotJoking/SinBot/master/images/1280x720/stageStartButton.png", imagesPath .."stageStartButton.png");
  httpDownload("https://raw.githubusercontent.com/JoshingNotJoking/SinBot/master/images/1280x720/salvageConfirmButton.png", imagesPath .."salvageConfirmButton.png");
  httpDownload("https://raw.githubusercontent.com/JoshingNotJoking/SinBot/master/images/1280x720/salvageIcon.png", imagesPath .."salvageIcon.png");
  httpDownload("https://raw.githubusercontent.com/JoshingNotJoking/SinBot/master/images/1280x720/salvageMissingEquip.png", imagesPath .."salvageMissingEquip.png");
  httpDownload("https://raw.githubusercontent.com/JoshingNotJoking/SinBot/master/images/1280x720/salvageSuccessButton.png", imagesPath .."salvageSuccessButton.png");
end

downloadimages ()
