function gearFarm ()
  if gearSelection == 1 then gearSelection = "gearAttack"
  elseif gearSelection == 2 then gearSelection = "gearDefense"
  elseif gearSelection == 3 then gearSelection = "gearHealth"
  elseif gearSelection == 4 then gearSelection = "gearCrit"
  elseif gearSelection == 5 then gearSelection = "gearCritRes"
  elseif gearSelection == 6 then gearSelection = "gearRecovery"
  end

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
          until areaRepeatResults:exists(Pattern("areaRepeatResults.png")) or areaRepeatResultsAlt:exists(Pattern("areaRepeatResultsAlt.png")) or areaInventoryPrompt:exists(Pattern("areaInventoryPrompt.png"));
        else
          scriptExit("Please unlock hard stage before continuing");
        end

        if areaRepeatResults:exists(Pattern("areaRepeatResults.png")) or areaRepeatResultsAlt:exists(Pattern("areaRepeatResultsAlt.png")) then
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

  gearEquipSalvage:existsClick(Pattern("gearEquipSalvage.png"));
  completeGearButton:existsClick(Pattern("completeGearButton.png"));
  continueQuestButton:existsClick(Pattern("continueQuestButton.png"));

  -- Refill stamina when empty
  if lowStaminaPrompt:exists(Pattern("lowStaminaPrompt.png")) or lowStaminaButtonAlt:exists(Pattern("lowStaminaButtonAlt.png")) then
    lowStaminaButton:existsClick(Pattern("lowStaminaButton.png"));
    lowStaminaButtonAlt:existsClick(Pattern("lowStaminaButtonAlt.png"));
    repeat
      wait(.1);
    until staminaRefillButton:exists(Pattern("staminaRefillButton.png"));
    staminaRefillButton:existsClick(Pattern("staminaRefillButton.png"));
  end

  -- Clear inventory to continue farming
  if areaInventoryPrompt:exists(Pattern("areaInventoryPrompt.png")) then
    toast ("Equipment inventory full!");
    if gearCommon == true or gearUncommon == true or gearRare == true or gearSuperRare == true then
      gearSalvage();
    else
      scriptExit("Equipment inventory full!");
    end
  end

  -- Watch for Death Match prompts and close them
  if deathMatchPrompt:exists(Pattern("deathMatchPrompt.png")) then
    closeDeathMatch:existsClick(Pattern("closeDeathMatch.png"));
  end
end
