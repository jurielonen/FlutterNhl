import 'dart:ui';

String getColumnAbb(String value) {
  if (constantColumns.containsKey(value)) {
    return constantColumns[value];
  }
  return 'EMPTY';
}

String getColumnTooltip(String value) {
  if (constantTooltips.containsKey(value)) {
    return constantTooltips[value];
  }
  return 'EMPTY';
}

const Map<String, String> constantColumns = {
  "assists": "A",
  "birthDate": "DOB",
  "currentTeamAbbrev": "Team",
  "faceoffLosses": "FOL",
  "faceoffWinPct": "FOW%",
  "faceoffWins": "FOW",
  "faceoffsLost": "FOL",
  "faceoffsWon": "FOW",
  "franchiseName": "Team",
  "gameDate": "Game Date",
  "gameId": "Game",
  "gameWinningGoals": "GWG",
  "games": "GP",
  "gamesPlayed": "GP",
  "gamesStarted": "GS",
  "goalieFullName": "Player",
  "goals": "G",
  "goalsAgainst": "GA",
  "goalsAgainstPerGame": "GA/GP",
  "goalsFor": "GF",
  "goalsForPerGame": "GF/GP",
  "homeRoad": "Game Location",
  "lastName": "Player",
  "losses": "L",
  "opponentTeamAbbrev": "Opp Team",
  'overTimeGoals': 'OTG',
  "otGoals": "OTG",
  "otLosses": "OT",
  "otPoints": "OTP",
  "penaltyKillPct": "PK%",
  "pim": "PIM",
  "penaltyMinutes": "PIM",
  "pkPctg": "PK%",
  "playerTeamsPlayedFor": "Team",
  "plusMinus": "+/-",
  "pointPct": "P%",
  "points": "P",
  "pointsPerGame": "P/GP",
  "positionCode": "Pos",
  "powerPlayPct": "PP%",
  'powerPlayGoals': 'PPG',
  "ppGoals": "PPG",
  "ppGoalsAgainst": "PP GA",
  "ppOpportunities": "PP Opp",
  "ppPctg": "PP%",
  'powerPlayPoints': 'PPP',
  "ppPoints": "PPP",
  "regulationAndOtWins": "ROW",
  "savePct": "Sv%",
  "seasonId": "Season",
  'shortHandedGoals': 'SHG',
  "shGoals": "SHG",
  "shNumTimes": "TS",
  'shortHandedPoints': 'SHP',
  "shPoints": "SHP",
  "shiftsPerGame": "Shifts/GP",
  'shotPct': 'S%',
  "shootingPct": "S%",
  "shootingPctg": "S%",
  "shootoutLosses": "S/O Loss",
  "shootoutWins": "S/O Win",
  "shootsCatches": "S/C",
  "shots": "S",
  "shotsAgainst": "SA",
  "shotsAgainstPerGame": "SA/GP",
  "shotsFor": "SF",
  "shotsForPerGame": "Shots/GP",
  "shutouts": "SO",
  "skaterFullName": "Player",
  "teamAbbrev": "Team",
  "teamAbbrevs": "Team",
  "teamFullName": "Team",
  "ties": "T",
  "timeOnIce": "TOI",
  "timeOnIcePerGame": "TOI/GP",
  "timeOnIcePerGame5v5": "5v5 TOI/GP",
  "timesShorthanded": "TS",
  "totalFaceoffLosses": "FOL",
  "totalFaceoffWins": "FOW",
  "wins": "W",
  "winsInRegulation": "RW",
  "winsInShootout": "S/O Win",
  'defensiveZoneFaceoffLosses': 'DZ FOL',
  'defensiveZoneFaceoffWins': 'DZ FOW',
  'defensiveZoneFaceoffs': 'DZ FO',
  'evFaceoffs': 'EV FO',
  'evFaceoffsLost': 'EV FOL',
  'evFaceoffsWon': 'EV FOW',
  'neutralZoneFaceoffLosses': 'NZ FOL',
  'neutralZoneFaceoffWins': 'NZ FOW',
  'neutralZoneFaceoffs': 'NZ FO',
  'offensiveZoneFaceoffLosses': 'OZ FOL',
  'offensiveZoneFaceoffWins': 'OZ FOW',
  'offensiveZoneFaceoffs': 'OZ FO',
  'ppFaceoffs': 'PP FO',
  'ppFaceoffsLost': 'PP FOL',
  'ppFaceoffsWon': 'PP FOW',
  'shFaceoffs': 'SH FO',
  'shFaceoffsLost': 'SH FOL',
  'shFaceoffsWon': 'SH FOW',
  'totalFaceoffs': 'FO',
  "evGoals": "EVG",
  "evPoints": "EVP",
  'blocked': 'BkS',
  'blockedShots':'BkS',
  'blockedShotsPer60':'BkS/60',
  'emptyNetAssists':'ENA',
  'emptyNetGoals':'ENG',
  'emptyNetPoints':'ENP',
  'firstGoals':'1g',
  'giveaways':'GvA',
  'giveawaysPer60':'GvA/60',
  'hits':'Hits',
  'hitsPer60':'Hits/60',
  'missedShotCrossbar':'MsS Cross',
  'missedShotGoalpost':'MsS Post',
  'missedShotOverNet':'MsS Over',
  'missedShotWideOfNet':'MsS Wide',
  'missedShots':'MsS',
  'takeaways':'TkA',
  'takeawaysPer60':'TkA/60',
  'ppAssists':'PPA',
  'ppGoalsForPer60':'PP GF/60',
  'ppGoalsPer60':'PPG/60',
  'ppIndividualSatFor':'PP iSAT',
  'ppIndividualSatForPer60':'PP iSAT/60',
  'ppPointsPer60':'PPP/60',
  'ppPrimaryAssists':'PPA1',
  'ppPrimaryAssistsPer60':'PPA1/60',
  'ppSecondaryAssists':'PPA2',
  'ppSecondaryAssistsPer60':'PPA2/60',
  'ppShootingPct':'PP S%',
  'ppShots':'PP Shots',
  'ppShotsPer60':'PP S/60',
  'powerPlayTimeOnIce': 'PP TOI',
  'ppTimeOnIce':'PP TOI',
  'ppTimeOnIcePctPerGame':'PP TOI%',
  'ppTimeOnIcePerGame':'PP TOI/GP',
  'evenTimeOnIce': 'EV TOI',
  'evTimeOnIce':'EV TOI',
  'evenTimeOnIcePerGame': 'EV TOI/GP',
  'evTimeOnIcePerGame':'EV TOI/GP',
  'otTimeOnIce':'OT TOI',
  'otTimeOnIcePerOtGame':'OT TOI/OT GP',
  'shTimeOnIce':'SH TOI',
  'shTimeOnIcePerGame':'SH TOI/GP',
  'shifts':'Shifts',
  'defensiveZoneFaceoffPct':'DZ FOW%',
  'evFaceoffPct':'EV FOW%',
  'neutralZoneFaceoffPct':'NZ FOW%',
  'offensiveZoneFaceoffPct':'OZ FOW%',
  'ppFaceoffPct':'PP FOW%',
  'shFaceoffPct':'SH FOW%',
  'faceOffPct': 'FO%',
  "goalsBackhand":"G Back",
  "goalsDeflected":"G Def",
  "goalsSlap":"G Slap",
  "goalsSnap":"G Snap",
  "goalsTipIn":"G Tip",
  "goalsWrapAround":"G Wrap",
  "goalsWrist":"G Wrist",
  "shootingPctBackhand":"S% Back",
  "shootingPctDeflected":"S% Def",
  "shootingPctSlap":"S% Slap",
  "shootingPctSnap":"S% Snap",
  "shootingPctTipIn":"S% Tip",
  "shootingPctWrapAround":"S% Wrap",
  "shootingPctWrist":"S% Wrist",
  "shotsOnNetBackhand":"S Back",
  "shotsOnNetDeflected":"S Def",
  "shotsOnNetSlap":"S Slap",
  "shotsOnNetSnap":"S Snap",
  "shotsOnNetTipIn":"S Tip",
  "shotsOnNetWrapAround":"S Wrap",
  "shotsOnNetWrist":"S Wrist",
  'evenStrengthGoalDifference':'On-Ice EV GD',
  'evenStrengthGoalsAgainst':'On-Ice EV GA',
  'evenStrengthGoalsFor':'On-Ice EV GF',
  'evenStrengthGoalsForPct':'On-Ice EV GF%',
  'evenStrengthTimeOnIcePerGame':'EV TOI/GP',
  'powerPlayGoalFor':'On-Ice PP GF',
  'powerPlayGoalsAgainst':'On-Ice PP GA',
  'powerPlayTimeOnIcePerGame':'PP TOI/GP',
  'shortHandedGoalsAgainst':'On-Ice SH GA',
  'shortHandedGoalsFor':'On-Ice SH GF',
  'shortHandedTimeOnIcePerGame':'SH TOI/GP',
  'shortHandedTimeOnIce': 'SH TOI',
  //team
  "penaltyKillNetPct": "Net PK%",
  "powerPlayNetPct": "Net PP%",

};

const Map<String, String> constantTooltips = {
  "assists": "Assists",
  "birthDate": "Player Birth Date",
  "currentTeamAbbrev": "Current Team",
  "defensiveZoneFaceoffLosses": "Defensive Zone Faceoff Losses (since 2009-10)",
  "defensiveZoneFaceoffPct": "Faceoff Win % - Defensive Zone (since 2009-10)",
  "defensiveZoneFaceoffWins": "Defensive Zone Faceoff Wins (since 2009-10)",
  "defensiveZoneFaceoffs": "Defensive Zone Faceoffs (since 2009-10)",
  "evFaceoffLosses": "Even Strength Faceoff Losses (since 1997-98)",
  "evFaceoffPct": "Even Strength Faceoff Win % (since 1997-98)",
  "evFaceoffWins": "Even Strength Faceoffs Won (since 1997-98)",
  "evFaceoffs": "Even Strength Faceoffs (since 1997-98)",
  "evFaceoffsLost": "Even Strength Faceoffs Lost (since 1997-98)",
  "evFaceoffsWon": "Even Strength Faceoffs Won (since 1997-98)",
  "faceoffLosses": "Faceoffs Lost (since 1997-98)",
  "faceoffWinPct": "Faceoff Win Percentage (since 1997-98)",
  "faceoffWins": "Faceoffs Won (since 1997-98)",
  "faceoffsLost": "Faceoffs Lost (since 1997-98)",
  "faceoffsWon": "Faceoffs Won (since 1997-98)",
  "franchiseName": "Team",
  "gameDate": "Game Date",
  "gameId": "Game",
  "gameWinningGoals": "Game Winning Goals",
  "gamesPlayed": "Games Played",
  "gamesStarted": "Games Started",
  "goalieFullName": "Player Name",
  "goals": "Goals",
  "goalsAgainst": "Goals Against",
  "goalsAgainstPerGame": "Goals Against Per Game",
  "goalsFor": "Goals For",
  "goalsForPerGame": "Goals For Per Game",
  "homeRoad": "Home or Road",
  "losses": "Losses",
  "neutralZoneFaceoffLosses": "Neutral Zone Faceoff Losses (since 2009-10)",
  "neutralZoneFaceoffPct": "Faceoff Win % - Neutral Zone (since 2009-10)",
  "neutralZoneFaceoffWins": "Neutral Zone Faceoff Wins (since 2009-10)",
  "neutralZoneFaceoffs": "Neutral Zone Faceoffs (since 2009-10)",
  "offensiveZoneFaceoffLosses": "Offensive Zone Faceoff Losses (since 2009-10)",
  "offensiveZoneFaceoffPct": "Faceoff Win % - Offensive Zone (since 2009-10)",
  "offensiveZoneFaceoffWins": "Offensive Zone Faceoff Wins (since 2009-10)",
  "offensiveZoneFaceoffs": "Offensive Zone Faceoffs (since 2009-10)",
  "opponentTeamAbbrev": "Opponent Team",
'overTimeGoals': 'Overtime Goals',
  "otGoals": "Overtime Goals",
  "otLosses": "Overtime Losses",
  "otPoints": "Overtime Points",
  "penaltyKillPct": "Penalty Kill % (since 1977-78)",
  "penaltyMinutes": "Penalty Minutes",
  "pkPctg": "Penalty Kill Percentage (since 1977-78)",
  "playerTeamsPlayedFor": "Player Teams Played For",
  "plusMinus": "Plus-Minus (since 1959-60)",
  "pointPct": "Point %",
  "points": "Points",
  "pointsPerGame": "Points Per Game",
  "positionCode": "Player Position",
  "powerPlayPct": "Power Play Percentage (since 1977-78)",
  "ppFaceoffLosses": "Power Play Faceoffs Lost (since 1997-98)",
  "ppFaceoffPct": "Power Play Faceoff Win % (since 1997-98)",
  "ppFaceoffWins": "Power Play Faceoffs Won (since 1997-98)",
  "ppFaceoffs": "Power Play Faceoffs (since 1997-98)",
  "ppFaceoffsLost": "Power Play Faceoffs Lost (since 1997-98)",
  "ppFaceoffsWon": "Power Play Faceoffs Won (since 1997-98)",
  "ppGoals": "Power Play Goals (since 1933-34)",
  "ppGoalsAgainst": "Power Play Goals Against (since 1933-34)",
  "ppOpportunities": "Power Play Opportunities (since 1977-78)",
  "ppPctg": "Power Play Percentage (since 1977-78)",
  "ppPoints": "Power Play Points (since 1933-34)",
  "regulationAndOtWins": "Regulation Plus Overtime Wins",
  "savePct": "Save %",
  "seasonId": "Season",
  "shFaceoffLosses": "Shorthanded Faceoffs Lost (since 1997-98)",
  "shFaceoffPct": "Shorthanded Faceoff Win % (since 1997-98)",
  "shFaceoffWins": "Shorthanded Faceoffs Won (since 1997-98)",
  "shFaceoffs": "Shorthanded Faceoffs (since 1997-98)",
  "shFaceoffsLost": "Shorthanded Faceoffs Lost (since 1997-98)",
  "shFaceoffsWon": "Shorthanded Faceoffs Won (since 1997-98)",
  'shortHandedGoals': 'Shorthanded Goals',
  "shGoals": "Shorthanded Goals (since 1933-34)",
  "shNumTimes": "Times Shorthanded (since 1977-78)",
  "shPoints": "Shorthanded Points (since 1933-34)",
  "shiftsPerGame": "Shifts Per Game (since 1997-98)",
  'shotPct': 'Shooting Percentage',
  "shootingPct": "Shooting Percentage (since 1959-60)",
  "shootingPctg": "Shooting Percentage (since 1959-60)",
  "shootoutLosses": "Shootout Games Lost (since 2005-06)",
  "shootoutWins": "Shootout Games Won (since 2005-06)",
  "shootsCatches": "Player Shoots/Catches",
  "shots": "Shots (since 1959-60)",
  "shotsAgainst": "Shots Against",
  "shotsAgainstPerGame": "Shots Against Per Game",
  "shotsFor": "Shots For",
  "shotsForPerGame": "Shots For Per Game",
  "shutouts": "Shutouts",
  "skaterFullName": "Player Name",
  "teamAbbrev": "Team",
  "teamAbbrevs": "Teams Played For",
  "teamFullName": "Team",
  "ties": "Ties",
  "timeOnIcePerGame": "Time On Ice per Game Played (since 1997-98)",
  "timeOnIcePerGame5v5": "5v5 Time on Ice per Game (since 2009-10)",
  "timesShorthanded": "Times Shorthanded (since 1977-78)",
  "totalFaceoffLosses": "Faceoffs Lost (since 1997-98)",
  "totalFaceoffWins": "Faceoffs Won (since 1997-98)",
  "totalFaceoffs": "Faceoffs (since 1997-98)",
  "wins": "Wins",
  "winsInRegulation": "Regulation Wins",
  "winsInShootout": "Shootout Games Won (since 2005-06)",
  "evGoals": "Even Strength Goals",
  "evPoints": "Even Strength Points",
  'blocked': 'Blocked shots',
  'blockedShots':'Blocked Shots by Player (since 2005-06)',
  'blockedShotsPer60':'Blocked Shots per 60 (since 2005-06)',
  'emptyNetAssists':'Empty Net Assists',
  'emptyNetGoals':'Empty Net Goals',
  'emptyNetPoints':'Empty Net Points',
  'firstGoals':'Times Scored First Goal of Game',
  'giveaways':'Giveaways (since 2005-06)',
  'giveawaysPer60':'Giveaways per 60 (since 2005-06)',
  'hits':'Hits (since 2005-06)',
  'hitsPer60':'Hits per 60 (since 2005-06)',
  'missedShotCrossbar':'Missed Shot Hit Crossbar (since 2009-10)',
  'missedShotGoalpost':'Missed Shots Hit Post (since 2009-10)',
  'missedShotOverNet':'Missed Shots Over Net (since 2009-10)',
  'missedShotWideOfNet':'Missed Shots Wide of Net (since 2009-10)',
  'missedShots':'Missed Shots (since 2005-06)',
  'takeaways':'Takeaways (since 2005-06)',
  'takeawaysPer60':'Takeaways per 60 (since 2005-06)',
  'ppAssists':'Power Play Assists (since 1933-34)',
  'ppGoalsForPer60':'Power Play Goals For per 60 minutes',
  'ppGoalsPer60':'Power Play Goals per 60',
  'ppIndividualSatFor':'Power Play Individual SAT For (since 2009-10)',
  'ppIndividualSatForPer60':'Power Play Individual SAT For per 60 (since 2009-10)',
  'ppPointsPer60':'Power Play Points per 60',
  'ppPrimaryAssists':'Power Play Primary Assists',
  'ppPrimaryAssistsPer60':'Power Play Primary Assists per 60',
  'ppSecondaryAssists':'Power Play Secondary Assists',
  'ppSecondaryAssistsPer60':'Power Play Secondary Assists per 60',
  'ppShootingPct':'Power Play Shooting Pct',
  'ppShots':'Power Play Shots',
  'ppShotsPer60':'Power Play Shots per 60',
  'ppTimeOnIce':'Power Play Time On Ice',
  'ppTimeOnIcePctPerGame':'Player\'s % of Team Power Play Time, per Game',
  'ppTimeOnIcePerGame':'Power Play Time On Ice per Game Played',
  'evenTimeOnIce': 'Even Strength Time On Ice',
  'evTimeOnIce':'Even Strength Time On Ice',
  'evenTimeOnIcePerGame': 'Even Strength Time On Ice Per Game Played',
  'evTimeOnIcePerGame':'Even Strength Time On Ice Per Game Played',
  'otTimeOnIce':'Overtime Time on Ice (since 2009-10)',
  'otTimeOnIcePerOtGame':'Overtime Time on Ice Per Overtime Game Played (since 2009-10)',
  'shTimeOnIce':'Shorthanded Time On Ice',
  'shTimeOnIcePerGame':'Shorthanded Time On Ice Per Game Played',
  'shifts':'Shifts',
  'timeOnIce':'Time On Ice',
  'timeOnIcePerShift':'Time On Ice Per Shift',
  'faceOffPct': 'Faceoff %',
  "goalsBackhand":"Backhand Goals (since 2009-10)",
  "goalsDeflected":"Goals Deflected (since 2009-10)",
  "goalsSlap":"Slap Shot Goals (since 2009-10)",
  "goalsSnap":"Snap Shot Goals (since 2009-10)",
  "goalsTipIn":"Goals Tipped (since 2009-10)",
  "goalsWrapAround":"Wrap Around Goals (since 2009-10)",
  "goalsWrist":"Wrist Shot Goals (since 2009-10)",
  "shootingPctBackhand":"Shooting Pct Backhand (since 2009-10)",
  "shootingPctDeflected":"Shooting Pct Deflected (since 2009-10)",
  "shootingPctSlap":"Shooting Pct Slap (since 2009-10)",
  "shootingPctSnap":"Shooting Pct Snap (since 2009-10)",
  "shootingPctTipIn":"Shooting Pct Tip-In (since 2009-10)",
  "shootingPctWrapAround":"Shooting Pct WrapAround (since 2009-10)",
  "shootingPctWrist":"Shooting Pct Wrist (since 2009-10)",
  "shotsOnNetBackhand":"Backhand Shots (since 2009-10)",
  "shotsOnNetDeflected":"Shots Deflected (since 2009-10)",
  "shotsOnNetSlap":"Slap Shots (since 2009-10)",
  "shotsOnNetSnap":"Snap Shots (since 2009-10)",
  "shotsOnNetTipIn":"Shots Tipped (since 2009-10)",
  "shotsOnNetWrapAround":"Wrap Around Shots (since 2009-10)",
  "shotsOnNetWrist":"Wrist Shots (since 2009-10)",
'evenStrengthGoalDifference':'On-Ice Even-Strength Goal Differential',
'evenStrengthGoalsAgainst':'On-Ice Even Strength Goals Against',
'evenStrengthGoalsFor':'On-Ice Even Strength Goals For',
'evenStrengthGoalsForPct':'Even Strength Goals For Pct',
'evenStrengthTimeOnIcePerGame':'Even Strength Time On Ice Per Game',
'powerPlayGoalFor':'On-Ice Power Play Goals For',
'powerPlayGoalsAgainst':'On-Ice Power Play Goals Against',
'powerPlayTimeOnIcePerGame':'Power Play Time On Ice Per Game',
'shortHandedGoalsAgainst':'On-Ice Shorthanded Goals Against',
'shortHandedGoalsFor':'On-Ice Shorthanded Goals For',
'shortHandedTimeOnIcePerGame':'Shorthanded Time On Ice Per Game',
  'shortHandedTimeOnIce': 'Shorthanded Time On Ice',
  //team
  "penaltyKillNetPct": "Penalty Kill Net Pct",
  "powerPlayNetPct": "Power Play Net Pct",
};

String changeNameToAbb(String teamName) {
  switch (teamName) {
    case "Anaheim Ducks":
      return 'ANA';

    case "Arizona Coyotes":
      return 'ARI';

    case "Boston Bruins":
      return 'BOS';

    case "Buffalo Sabres":
      return 'BUF';

    case "Carolina Hurricanes":
      return 'CAR';

    case "Columbus Blue Jackets":
      return 'CBJ';

    case "Calgary Flames":
      return 'CGY';

    case "Chicago Blackhawks":
      return 'CHI';

    case "Colorado Avalanche":
      return 'COL';

    case "Dallas Stars":
      return 'DAL';

    case "Detroit Red Wings":
      return 'DET';

    case "Edmonton Oilers":
      return 'EDM';

    case "Florida Panthers":
      return 'FLA';

    case "Los Angeles Kings":
      return 'LAK';

    case "Minnesota Wild":
      return 'MIN';

    case "Montréal Canadiens":
      return 'MTL';

    case "Nashville Predators":
      return 'NAS';

    case "New Jersey Devils":
      return 'NJD';

    case "New York Islanders":
      return 'NYI';

    case "New York Rangers":
      return 'NYR';

    case "Ottawa Senators":
      return 'OTT';

    case "Philadelphia Flyers":
      return 'PHI';

    case "Pittsburgh Penguins":
      return 'PIT';

    case "San Jose Sharks":
      return 'SJS';

    case "St. Louis Blues":
      return 'STL';

    case "Tampa Bay Lightning":
      return 'TBL';

    case "Toronto Maple Leafs":
      return 'TOR';

    case "Vancouver Canucks":
      return 'VAN';

    case "Vegas Golden Knights":
      return 'VGK';

    case "Washington Capitals":
      return 'WSH';

    case "Winnipeg Jets":
      return 'WPG';

    default:
      return 'UNK';
  }
}

Color getTeamColor(String teamName){
  switch(teamName){
    case "Anaheim Ducks":
      return Color(0x50000000);

    case "Arizona Coyotes":
      return Color(0x50862633);

    case "Boston Bruins":
      return Color(0x50000000);

    case "Buffalo Sabres":
      return Color(0x50041E42);

    case "Carolina Hurricanes":
      return Color(0x50C8102E);

    case "Columbus Blue Jackets":
      return Color(0x50041E42);

    case "Calgary Flames":
      return Color(0x50C8102E);

    case "Chicago Blackhawks":
      return Color(0x50C8102E);

    case "Colorado Avalanche":
      return Color(0x506F263D);

    case "Dallas Stars":
      return Color(0x50006341);

    case "Detroit Red Wings":
      return Color(0x50C8102E);

    case "Edmonton Oilers":
      return Color(0x50FC4C02);

    case "Florida Panthers":
      return Color(0x50C8102E);

    case "Los Angeles Kings":
      return Color(0x50000000);

    case "Minnesota Wild":
      return Color(0x50154734);

    case "Montréal Canadiens":
      return Color(0x50A6192E);

    case "Nashville Predators":
      return Color(0x50FFB81C);

    case "New Jersey Devils":
      return Color(0x50C8102E);

    case "New York Islanders":
      return Color(0x50003087);

    case "New York Rangers":
      return Color(0x500033A0);

    case "Ottawa Senators":
      return Color(0x50C8102E);

    case "Philadelphia Flyers":
      return Color(0x50FA4616);

    case "Pittsburgh Penguins":
      return Color(0x50000000);

    case "San Jose Sharks":
      return Color(0x50006272);

    case "St. Louis Blues":
      return Color(0x50003087);

    case "Tampa Bay Lightning":
      return Color(0x5000205B);

    case "Toronto Maple Leafs":
      return Color(0x5000205B);

    case "Vancouver Canucks":
      return Color(0x5000205B);

    case "Vegas Golden Knights":
      return Color(0x50333F48);

    case "Washington Capitals":
      return Color(0x50C8102E);

    case "Winnipeg Jets":
      return Color(0x50041E42);

    default:
      return Color(0x50FFFFFF);
  }
}