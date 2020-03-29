function gearSalvage ()
  closeEquipmentFull:existsClick(Pattern("closeEquipmentFull.png"));
  menuBackArrow:existsClick(Pattern("menuBackArrow.png"));
  tavernGlobal:existsClick(Pattern("tavernGlobalButton.png"));
  if salvageIcon:existsClick(Pattern("salvageIcon.png")) then
    repeat
      wait(.2);
    until registerAllButton:exists(Pattern("registerAllButton.png"));
  end
  if registerAllButton:existsClick(Pattern("registerAllButton.png")) then
    gearCommonIcon:existsClick(Pattern("gearCommonIcon.png"));
    wait(.2);
    gearUncommonIcon:existsClick(Pattern("gearUncommonIcon.png"));
    wait(.2);
    gearRareIcon:existsClick(Pattern("gearRareIcon.png"));
    wait(.2);
    gearSuperRareIcon:existsClick(Pattern("gearSuperRareIcon.png"));
    wait(.2);
    gearApplyButton:existsClick(Pattern("gearApplyButton.png"));
  end
  repeat
    if salvageButton:existsClick(Pattern("salvageButton.png")) then
      salvageConfirmButton:existsClick(Pattern("salvageConfirmButton.png"));
      repeat
        wait(.1);
      until salvageSuccessButton:exists(Pattern("salvageSuccessButton.png"));
      salvageSuccessButton:existsClick(Pattern("salvageSuccessButton.png"));
    end
    if registerAllButton:existsClick(Pattern("registerAllButton.png")) then
      wait(.2);
      gearApplyButton:existsClick(Pattern("gearApplyButton.png"));
    end
  until salvageMissingEquip:exists(Pattern("salvageMissingEquip.png"));
end
