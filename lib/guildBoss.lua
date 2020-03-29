function guildBossHard ()
  local nextArrow = Location(780, 150);

  if guildBossTeamSelection == 1 then guildBossTeamSelection = "teamOne"
  elseif guildBossTeamSelection == 2 then guildBossTeamSelection = "teamTwo"
  elseif guildBossTeamSelection == 3 then guildBossTeamSelection = "teamThree"
  elseif guildBossTeamSelection == 4 then guildBossTeamSelection = "teamFour"
  elseif guildBossTeamSelection == 5 then guildBossTeamSelection = "teamFive"
  end

  if exists(Pattern(guildBossTeamSelection .. ".png"):similar(0.93)) then
    toast("Correct Team chosen");
  else
    repeat
      click(nextArrow);
    until exists(Pattern(guildBossTeamSelection .. ".png"):similar(0.93))
  end
end
