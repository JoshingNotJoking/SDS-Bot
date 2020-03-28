function gearFarm ()
  if areaTavern:existsClick(Pattern("battleButton.png")) then
    wait(.5);
    areaBattle:existsClick(Pattern("battleEquipButton.png"));
    wait(.5);
    -- Select gear to farm based on dialog selection
    if existsClick(Pattern(gearSelection .. ".png")) then
      closeRepeatResults:existsClick(Pattern("closeRepeatResults.png"));
      if gearStart:existsClick(Pattern("gearStartButton.png")) or gearGo:existsClick(Pattern("gearGoButton.png")) then
        wait(.5);
        repeat
          wait(.2);
        until areaStageSelect:exists(Pattern("areaStageSelect.png"));

        if exists(Pattern("stageHardButton.png")) then
          existsClick(Pattern("stageHardButton.png"));
          wait(.2);
          autoRepeatOff:existsClick(Pattern("autoRepeatOff.png"));
          stageStartButton:existsClick(Pattern("stageStartButton.png"));

          repeat
            wait(.2);
          until areaRepeatResults:exists(Pattern("areaRepeatResults.png")) or areaInventoryPrompt:exists(Pattern("areaInventoryPrompt.png"));
        else
          scriptExit("Please unlock hard stage before continuing");
        end

        if areaRepeatResults:exists(Pattern("areaRepeatResults.png")) then
          closeRepeatResults:existsClick(Pattern("closeRepeatResults.png"));
        end

        closeBattleButton:existsClick(Pattern("closeBattleButton.png"));
      end
    end
  else
    if tavernGlobal:existsClick(Pattern("tavernGlobalButton.png")) then
      wait(.1);
    elseif menuBackArrow:existsClick(Pattern("menuBackArrow.png")) then
      wait(.1);
    end
  end

  completeGearButton:existsClick(Pattern("completeGearButton.png"));
  continueQuestButton:existsClick(Pattern("continueQuestButton.png"));

  -- Watch for Death Match prompts and close them
  if deathMatchPrompt:exists(Pattern("deathMatchPrompt.png")) then
    closeDeathMatch:existsClick(Pattern("closeDeathMatch.png"));
  end
end
