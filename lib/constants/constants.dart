import 'dart:ui';

String getColumnAbb(String value) {
  if (constantColumns.containsKey(value)) {
    return constantColumns[value];
  }
  print('abb $value');
  return 'EMPTY';
}

String getColumnTooltip(String value) {
  if (constantTooltips.containsKey(value)) {
    return constantTooltips[value];
  }
  print('tooltip: $value');
  return 'EMPTY';
}

const Map<String, String> constantColumns = {
  'assists': 'A',
  'birthDate': 'DOB',
  'currentTeamAbbrev': 'Team',
  'faceoffLosses': 'FOL',
  'faceoffWinPct': 'FOW%',
  'faceoffWins': 'FOW',
  'faceOffWins': 'FOW',
  'faceoffsLost': 'FOL',
  'faceoffsWon': 'FOW',
  'franchiseName': 'Team',
  'gameDate': 'Game Date',
  'gameId': 'Game',
  'gameWinningGoals': 'GWG',
  'games': 'GP',
  'gamesPlayed': 'GP',
  'gamesStarted': 'GS',
  'goalieFullName': 'Player',
  'goals': 'G',
  'goalAgainstAverage': 'GAA',
  'goalsAgainst': 'GA',
  'goalsAgainstPerGame': 'GA/GP',
  'goalsFor': 'GF',
  'goalsForPerGame': 'GF/GP',
  'homeRoad': 'Game Location',
  'lastName': 'Player',
  'losses': 'L',
  'opponentTeamAbbrev': 'Opp Team',
  'overTimeGoals': 'OTG',
  'otGoals': 'OTG',
  'ot': 'OT',
  'otLosses': 'OT',
  'otPoints': 'OTP',
  'penaltyKillPct': 'PK%',
  'pim': 'PIM',
  'penaltyMinutes': 'PIM',
  'pkPctg': 'PK%',
  'playerTeamsPlayedFor': 'Team',
  'plusMinus': '+/-',
  'pointPct': 'P%',
  'points': 'P',
  'pointsPerGame': 'P/GP',
  'positionCode': 'Pos',
  'powerPlayPct': 'PP%',
  'powerPlayGoals': 'PPG',
  'ppGoals': 'PPG',
  'ppGoalsAgainst': 'PP GA',
  'ppOpportunities': 'PP Opp',
  'ppPctg': 'PP%',
  'powerPlayPoints': 'PPP',
  'ppPoints': 'PPP',
  'regulationAndOtWins': 'ROW',
  'savePercentage': 'Sv%',
  'savePct': 'Sv%',
  'seasonId': 'Season',
  'shortHandedGoals': 'SHG',
  'shortHandedAssists': 'SHA',
  'shGoals': 'SHG',
  'shNumTimes': 'TS',
  'shortHandedPoints': 'SHP',
  'shPoints': 'SHP',
  'shiftsPerGame': 'Shifts/GP',
  'shotPct': 'S%',
  'shootingPct': 'S%',
  'shootingPctg': 'S%',
  'shootoutLosses': 'S/O Loss',
  'shootoutWins': 'S/O Win',
  'shootsCatches': 'S/C',
  'shots': 'S',
  'saves': 'Svs',
  'shortHandedShots': 'SH SA',
  'shortHandedSaves': 'SH Svs',
  'shortHandedShotsAgainst': 'SH SA',
  'shortHandedSavePercentage': 'SH Sv%',
  'powerPlaySaves': 'PP Svs',
  'powerPlayShots': 'PP SA',
  'powerPlayShotsAgainst': 'PP SA',
  'powerPlaySavePercentage': 'PP Sv%',
  'evenSaves': 'EV Svs',
  'evenShots': 'EV SA',
  'evenShotsAgainst': 'EV SA',
  'evenStrengthSavePercentage': 'EV Sv%',
  'shotsAgainst': 'SA',
  'shotsAgainstPerGame': 'SA/GP',
  'shotsFor': 'SF',
  'shotsForPerGame': 'Shots/GP',
  'shutouts': 'SO',
  'skaterFullName': 'Player',
  'teamAbbrev': 'Team',
  'teamAbbrevs': 'Team',
  'teamFullName': 'Team',
  'ties': 'T',
  'timeOnIce': 'TOI',
  'timeOnIcePerGame': 'TOI/GP',
  'timeOnIcePerGame5v5': '5v5 TOI/GP',
  'timesShorthanded': 'TS',
  'totalFaceoffLosses': 'FOL',
  'totalFaceoffWins': 'FOW',
  'wins': 'W',
  'winsInRegulation': 'RW',
  'winsInShootout': 'S/O Win',
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
  'faceoffTaken': 'FO',
  'evGoals': 'EVG',
  'evPoints': 'EVP',
  'blocked': 'BkS',
  'blockedShots': 'BkS',
  'blockedShotsPer60': 'BkS/60',
  'emptyNetAssists': 'ENA',
  'emptyNetGoals': 'ENG',
  'emptyNetPoints': 'ENP',
  'firstGoals': '1g',
  'giveaways': 'GvA',
  'giveawaysPer60': 'GvA/60',
  'hits': 'Hits',
  'hitsPer60': 'Hits/60',
  'missedShotCrossbar': 'MsS Cross',
  'missedShotGoalpost': 'MsS Post',
  'missedShotOverNet': 'MsS Over',
  'missedShotWideOfNet': 'MsS Wide',
  'missedShots': 'MsS',
  'takeaways': 'TkA',
  'takeawaysPer60': 'TkA/60',
  'ppAssists': 'PPA',
  'powerPlayAssists': 'PPA',
  'ppGoalsForPer60': 'PP GF/60',
  'ppGoalsPer60': 'PPG/60',
  'ppIndividualSatFor': 'PP iSAT',
  'ppIndividualSatForPer60': 'PP iSAT/60',
  'ppPointsPer60': 'PPP/60',
  'ppPrimaryAssists': 'PPA1',
  'ppPrimaryAssistsPer60': 'PPA1/60',
  'ppSecondaryAssists': 'PPA2',
  'ppSecondaryAssistsPer60': 'PPA2/60',
  'ppShootingPct': 'PP S%',
  'ppShots': 'PP Shots',
  'ppShotsPer60': 'PP S/60',
  'powerPlayTimeOnIce': 'PP TOI',
  'ppTimeOnIce': 'PP TOI',
  'ppTimeOnIcePctPerGame': 'PP TOI%',
  'ppTimeOnIcePerGame': 'PP TOI/GP',
  'evenTimeOnIce': 'EV TOI',
  'evTimeOnIce': 'EV TOI',
  'evenTimeOnIcePerGame': 'EV TOI/GP',
  'evTimeOnIcePerGame': 'EV TOI/GP',
  'otTimeOnIce': 'OT TOI',
  'otTimeOnIcePerOtGame': 'OT TOI/OT GP',
  'shTimeOnIce': 'SH TOI',
  'shTimeOnIcePerGame': 'SH TOI/GP',
  'shifts': 'Shifts',
  'defensiveZoneFaceoffPct': 'DZ FOW%',
  'evFaceoffPct': 'EV FOW%',
  'neutralZoneFaceoffPct': 'NZ FOW%',
  'offensiveZoneFaceoffPct': 'OZ FOW%',
  'ppFaceoffPct': 'PP FOW%',
  'shFaceoffPct': 'SH FOW%',
  'faceOffPct': 'FO%',
  'goalsBackhand': 'G Back',
  'goalsDeflected': 'G Def',
  'goalsSlap': 'G Slap',
  'goalsSnap': 'G Snap',
  'goalsTipIn': 'G Tip',
  'goalsWrapAround': 'G Wrap',
  'goalsWrist': 'G Wrist',
  'shootingPctBackhand': 'S% Back',
  'shootingPctDeflected': 'S% Def',
  'shootingPctSlap': 'S% Slap',
  'shootingPctSnap': 'S% Snap',
  'shootingPctTipIn': 'S% Tip',
  'shootingPctWrapAround': 'S% Wrap',
  'shootingPctWrist': 'S% Wrist',
  'shotsOnNetBackhand': 'S Back',
  'shotsOnNetDeflected': 'S Def',
  'shotsOnNetSlap': 'S Slap',
  'shotsOnNetSnap': 'S Snap',
  'shotsOnNetTipIn': 'S Tip',
  'shotsOnNetWrapAround': 'S Wrap',
  'shotsOnNetWrist': 'S Wrist',
  'evenStrengthGoalDifference': 'On-Ice EV GD',
  'evenStrengthGoalsAgainst': 'On-Ice EV GA',
  'evenStrengthGoalsFor': 'On-Ice EV GF',
  'evenStrengthGoalsForPct': 'On-Ice EV GF%',
  'evenStrengthTimeOnIcePerGame': 'EV TOI/GP',
  'powerPlayGoalFor': 'On-Ice PP GF',
  'powerPlayGoalsAgainst': 'On-Ice PP GA',
  'powerPlayTimeOnIcePerGame': 'PP TOI/GP',
  'shortHandedGoalsAgainst': 'On-Ice SH GA',
  'shortHandedGoalsFor': 'On-Ice SH GF',
  'shortHandedTimeOnIcePerGame': 'SH TOI/GP',
  'shortHandedTimeOnIce': 'SH TOI',
  'faceoffsWo': 'FOW',
  'winsInRegulatio': 'RW',
  //team
  'penaltyKillNetPct': 'Net PK%',
  'powerPlayNetPct': 'Net PP%',
  'lossesScoringFirst': 'L SF',
  'lossesTrailingFirst': 'L TF',
  'otLossesScoringFirst': 'OT SF',
  'otLossesTrailingFirst': 'OT TF',
  'scoringFirstGamesPlayed': 'SF GP',
  'tiesScoringFirst': 'T SF',
  'tiesTrailingFirst': 'T TF',
  'trailingFirstGamesPlayed': 'TF GP',
  'winPctScoringFirst': 'W% SF',
  'winPctTrailingFirst': 'W% TF',
  'winsScoringFirst': 'W SF',
  'winsTrailingFirst': 'W TF',
  "lossLeadPeriod1": "Loss Lead 1P",
  "lossLeadPeriod2": "Loss Lead 2P",
  "lossTrailPeriod1": "Loss Trail 1P",
  "lossTrailPeriod2": "Loss Trail 2P",
  "otLossLeadPeriod1": "OT Loss Lead 1P",
  "otLossLeadPeriod2": "OT Loss Lead 2P",
  "otLossTrailPeriod1": "OT Loss Trail 1P",
  "otLossTrailPeriod2": "OT Loss Trail 2P",
  "period1GoalsAgainst": "GA in P1",
  "period1GoalsFor": "GF in P1",
  "period2GoalsAgainst": "GA in P2",
  "period2GoalsFor": "GF in P2",
  "tiesLeadPeriod1": "Ties Lead 1P",
  "tiesLeadPeriod2": "Ties Lead 2P",
  "tiesTrailPeriod1": "Ties Trail 1P",
  "tiesTrailPeriod2": "Ties Trail 2P",
  "winPctLeadPeriod1": "Win% Lead 1P",
  "winPctLeadPeriod2": "Win% Lead 2P",
  "winPctTrailPeriod1": "Win% Trail 1P",
  "winPctTrailPeriod2": "Win% Trail 2P",
  "winsLeadPeriod1": "Wins Lead 1P",
  "winsLeadPeriod2": "Wins Lead 2P",
  "winsTrailPeriod1": "Wins Trail 1P",
  "winsTrailPeriod2": "Wins Trail 2P",
  'lossesEvenShots': 'Loss Even Shots',
  'lossesOutshootOpponent': 'Loss Outshoot Opp',
  'lossesOutshotByOpponent': 'Loss Outshot by Opp',
  'netShotsPerGame': 'SD/GP',
  'otLossesEvenShots': 'OT Loss Even Shots',
  'otLossesOutshootOpponent': 'OT Loss Outshoot Opp',
  'otLossesOutshotByOpponent': 'OT Loss Outshot by Opp',
  'tiesEvenShots': 'Ties Even Shots',
  'tiesOutshootOpponent': 'Ties Outshoot Opp',
  'tiesOutshotByOpponent': 'Ties Outshot by Opp',
  'winsEvenShots': 'Wins Even Shots',
  'winsOutshootOpponent': 'Wins Outshoot Opp',
  'winsOutshotByOpponent': 'Wins Outshot by Opp',
  'homeRecord': 'HOME',
  'awayRecord': 'AWAY',
  'soRecord': 'S/O',
  'l10Record': 'L10',
  'streak': 'STRK',
};

const Map<String, String> constantTooltips = {
  'assists': 'Assists',
  'birthDate': 'Player Birth Date',
  'currentTeamAbbrev': 'Current Team',
  'defensiveZoneFaceoffLosses': 'Defensive Zone Faceoff Losses',
  'defensiveZoneFaceoffPct': 'Faceoff Win % - Defensive Zone',
  'defensiveZoneFaceoffWins': 'Defensive Zone Faceoff Wins',
  'defensiveZoneFaceoffs': 'Defensive Zone Faceoffs',
  'evFaceoffLosses': 'Even Strength Faceoff Losses',
  'evFaceoffPct': 'Even Strength Faceoff Win %',
  'evFaceoffWins': 'Even Strength Faceoffs Won',
  'evFaceoffs': 'Even Strength Faceoffs',
  'evFaceoffsLost': 'Even Strength Faceoffs Lost',
  'evFaceoffsWon': 'Even Strength Faceoffs Won',
  'faceoffLosses': 'Faceoffs Lost',
  'faceOffWinPercentage': 'Faceoffs Win %',
  'faceoffWinPct': 'Faceoff Win Percentage',
  'faceoffWins': 'Faceoffs Won',
  'faceOffWins': 'Faceoffs Won',
  'faceoffsLost': 'Faceoffs Lost',
  'faceOffsLost': 'Faceoffs Lost',
  'faceoffsWon': 'Faceoffs Won',
  'faceOffsWon': 'Faceoffs Won',
  'franchiseName': 'Team',
  'gameDate': 'Game Date',
  'gameId': 'Game',
  'gameWinningGoals': 'Game Winning Goals',
  'games': 'Games Played',
  'gamesPlayed': 'Games Played',
  'gamesStarted': 'Games Started',
  'goalieFullName': 'Player Name',
  'goals': 'Goals',
  'goalAgainstAverage': 'Goals Against Average',
  'goalsAgainst': 'Goals Against',
  'goalsAgainstPerGame': 'Goals Against Per Game',
  'goalsFor': 'Goals For',
  'goalsPerGame': 'Goals For Per Game',
  'goalsForPerGame': 'Goals For Per Game',
  'homeRoad': 'Home or Road',
  'losses': 'Losses',
  'neutralZoneFaceoffLosses': 'Neutral Zone Faceoff Losses',
  'neutralZoneFaceoffPct': 'Faceoff Win % - Neutral Zone',
  'neutralZoneFaceoffWins': 'Neutral Zone Faceoff Wins',
  'neutralZoneFaceoffs': 'Neutral Zone Faceoffs',
  'offensiveZoneFaceoffLosses': 'Offensive Zone Faceoff Losses',
  'offensiveZoneFaceoffPct': 'Faceoff Win % - Offensive Zone',
  'offensiveZoneFaceoffWins': 'Offensive Zone Faceoff Wins',
  'offensiveZoneFaceoffs': 'Offensive Zone Faceoffs',
  'opponentTeamAbbrev': 'Opponent Team',
  'overTimeGoals': 'Overtime Goals',
  'otGoals': 'Overtime Goals',
  'ot': 'Overtime Losses',
  'otLosses': 'Overtime Losses',
  'otPoints': 'Overtime Points',
  'penaltyKillPct': 'Penalty Kill %',
  'pim': 'Penalty minutes',
  'penaltyMinutes': 'Penalty Minutes',
  'pkPctg': 'Penalty Kill Percentage',
  'playerTeamsPlayedFor': 'Player Teams Played For',
  'plusMinus': 'Plus-Minus',
  'ptPctg': 'Point %',
  'pointPct': 'Point %',
  'pts': 'Points',
  'points': 'Points',
  'pointsPerGame': 'Points Per Game',
  'positionCode': 'Player Position',
  'powerPlayPercentage': 'Power Play %',
  'powerPlayPct': 'Power Play Percentage',
  'ppFaceoffLosses': 'Power Play Faceoffs Lost',
  'ppFaceoffPct': 'Power Play Faceoff Win %',
  'ppFaceoffWins': 'Power Play Faceoffs Won',
  'ppFaceoffs': 'Power Play Faceoffs',
  'ppFaceoffsLost': 'Power Play Faceoffs Lost',
  'ppFaceoffsWon': 'Power Play Faceoffs Won',
  'powerPlayGoals': 'Power Play Goals',
  'ppGoals': 'Power Play Goals',
  'ppGoalsAgainst': 'Power Play Goals Against',
  'powerPlayOpportunities': 'Power Play Opportunities',
  'ppOpportunities': 'Power Play Opportunities',
  'ppPctg': 'Power Play Percentage',
  'powerPlayPoints': 'Power Play Points',
  'ppPoints': 'Power Play Points',
  'regulationAndOtWins': 'Regulation Plus Overtime Wins',
  'savePercentage': 'Save %',
  'savePctg': 'Save %',
  'savePct': 'Save %',
  'seasonId': 'Season',
  'penaltyKillPercentage': 'Penalty Kill %',
  'shFaceoffLosses': 'Shorthanded Faceoffs Lost',
  'shFaceoffPct': 'Shorthanded Faceoff Win %',
  'shFaceoffWins': 'Shorthanded Faceoffs Won',
  'shFaceoffs': 'Shorthanded Faceoffs',
  'shFaceoffsLost': 'Shorthanded Faceoffs Lost',
  'shFaceoffsWon': 'Shorthanded Faceoffs Won',
  'shortHandedGoals': 'Shorthanded Goals',
  'shortHandedAssists': 'Shorthanded Assists',
  'shGoals': 'Shorthanded Goals',
  'shNumTimes': 'Times Shorthanded',
  'shortHandedPoints': 'Shorthanded Points',
  'shPoints': 'Shorthanded Points',
  'shiftsPerGame': 'Shifts Per Game',
  'shotPct': 'Shooting Percentage',
  'shootingPct': 'Shooting Percentage',
  'shootingPctg': 'Shooting Percentage',
  'shootoutLosses': 'Shootout Games Lost',
  'shootoutWins': 'Shootout Games Won',
  'shootsCatches': 'Player Shoots/Catches',
  'shots': 'Shots',
  'saves': 'Saves',
  'shortHandedSaves': 'Shorthanded Saves',
  'shortHandedShotsAgainst': 'Shorthanded Shots Against',
  'powerPlaySaves': 'Power Play Saves',
  'powerPlayShotsAgainst': 'Power Play Shots Against',
  'powerPlaySavePercentage': 'Power Play Save%',
  'evenSaves': 'Even Strength Saves',
  'shortHandedShots': 'Shorthanded Shots Against',
  'shortHandedSavePercentage': 'Shorthanded Save%',
  'powerPlayShots': 'Power Play Shots Against',
  'evenShots': 'Even Strength Shots Against',
  'evenShotsAgainst': 'Even Strength Shots Against',
  'evenStrengthSavePercentage': 'Even Strength Save%',
  'shotsAllowed': 'Shots Against Per Game',
  'shotsAgainst': 'Shots Against',
  'shotsAgainstPerGame': 'Shots Against Per Game',
  'shotsFor': 'Shots For',
  'shotsPerGame': 'Shots Per Game',
  'shotsForPerGame': 'Shots For Per Game',
  'shutouts': 'Shutouts',
  'skaterFullName': 'Player Name',
  'teamAbbrev': 'Team',
  'teamAbbrevs': 'Teams Played For',
  'teamFullName': 'Team',
  'ties': 'Ties',
  'timeOnIcePerGame': 'Time On Ice per Game Played',
  'timeOnIcePerGame5v5': '5v5 Time on Ice per Game',
  'timesShorthanded': 'Times Shorthanded',
  'totalFaceoffLosses': 'Faceoffs Lost',
  'totalFaceoffWins': 'Faceoffs Won',
  'totalFaceoffs': 'Faceoffs',
  'faceoffTaken': 'Faceoffs taken',
  'wins': 'Wins',
  'winsInRegulation': 'Regulation Wins',
  'winsInShootout': 'Shootout Games Won',
  'evGoals': 'Even Strength Goals',
  'evPoints': 'Even Strength Points',
  'blocked': 'Blocked shots',
  'blockedShots': 'Blocked Shots by Player',
  'blockedShotsPer60': 'Blocked Shots per 60',
  'emptyNetAssists': 'Empty Net Assists',
  'emptyNetGoals': 'Empty Net Goals',
  'emptyNetPoints': 'Empty Net Points',
  'firstGoals': 'Times Scored First Goal of Game',
  'giveaways': 'Giveaways',
  'giveawaysPer60': 'Giveaways per 60',
  'hits': 'Hits',
  'hitsPer60': 'Hits per 60',
  'missedShotCrossbar': 'Missed Shot Hit Crossbar',
  'missedShotGoalpost': 'Missed Shots Hit Post',
  'missedShotOverNet': 'Missed Shots Over Net',
  'missedShotWideOfNet': 'Missed Shots Wide of Net',
  'missedShots': 'Missed Shots',
  'takeaways': 'Takeaways',
  'takeawaysPer60': 'Takeaways per 60',
  'ppAssists': 'Power Play Assists',
  'powerPlayAssists': 'Power Play Assists',
  'ppGoalsForPer60': 'Power Play Goals For per 60 minutes',
  'ppGoalsPer60': 'Power Play Goals per 60',
  'ppIndividualSatFor': 'Power Play Individual SAT For',
  'ppIndividualSatForPer60': 'Power Play Individual SAT For per 60',
  'ppPointsPer60': 'Power Play Points per 60',
  'ppPrimaryAssists': 'Power Play Primary Assists',
  'ppPrimaryAssistsPer60': 'Power Play Primary Assists per 60',
  'ppSecondaryAssists': 'Power Play Secondary Assists',
  'ppSecondaryAssistsPer60': 'Power Play Secondary Assists per 60',
  'ppShootingPct': 'Power Play Shooting Pct',
  'ppShots': 'Power Play Shots',
  'ppShotsPer60': 'Power Play Shots per 60',
  'ppTimeOnIce': 'Power Play Time On Ice',
  'ppTimeOnIcePctPerGame': 'Player\'s % of Team Power Play Time, per Game',
  'ppTimeOnIcePerGame': 'Power Play Time On Ice per Game Played',
  'evenTimeOnIce': 'Even Strength Time On Ice',
  'evTimeOnIce': 'Even Strength Time On Ice',
  'evenTimeOnIcePerGame': 'Even Strength Time On Ice Per Game Played',
  'evTimeOnIcePerGame': 'Even Strength Time On Ice Per Game Played',
  'otTimeOnIce': 'Overtime Time on Ice',
  'otTimeOnIcePerOtGame': 'Overtime Time on Ice Per Overtime Game Played',
  'shTimeOnIce': 'Shorthanded Time On Ice',
  'shTimeOnIcePerGame': 'Shorthanded Time On Ice Per Game Played',
  'shifts': 'Shifts',
  'timeOnIce': 'Time On Ice',
  'timeOnIcePerShift': 'Time On Ice Per Shift',
  'faceOffPct': 'Faceoff %',
  'goalsBackhand': 'Backhand Goals',
  'goalsDeflected': 'Goals Deflected',
  'goalsSlap': 'Slap Shot Goals',
  'goalsSnap': 'Snap Shot Goals',
  'goalsTipIn': 'Goals Tipped',
  'goalsWrapAround': 'Wrap Around Goals',
  'goalsWrist': 'Wrist Shot Goals',
  'shootingPctBackhand': 'Shooting Pct Backhand',
  'shootingPctDeflected': 'Shooting Pct Deflected',
  'shootingPctSlap': 'Shooting Pct Slap',
  'shootingPctSnap': 'Shooting Pct Snap',
  'shootingPctTipIn': 'Shooting Pct Tip-In',
  'shootingPctWrapAround': 'Shooting Pct WrapAround',
  'shootingPctWrist': 'Shooting Pct Wrist',
  'shotsOnNetBackhand': 'Backhand Shots',
  'shotsOnNetDeflected': 'Shots Deflected',
  'shotsOnNetSlap': 'Slap Shots',
  'shotsOnNetSnap': 'Snap Shots',
  'shotsOnNetTipIn': 'Shots Tipped',
  'shotsOnNetWrapAround': 'Wrap Around Shots',
  'shotsOnNetWrist': 'Wrist Shots',
  'evenStrengthGoalDifference': 'On-Ice Even-Strength Goal Differential',
  'evenStrengthGoalsAgainst': 'On-Ice Even Strength Goals Against',
  'evenStrengthGoalsFor': 'On-Ice Even Strength Goals For',
  'evGGARatio': 'Even Strength G/GA Ratio',
  'evenStrengthGoalsForPct': 'Even Strength Goals For Pct',
  'evenStrengthTimeOnIcePerGame': 'Even Strength Time On Ice Per Game',
  'powerPlayGoalFor': 'On-Ice Power Play Goals For',
  'powerPlayGoalsAgainst': 'On-Ice Power Play Goals Against',
  'powerPlayTimeOnIce': 'Power Play Time On Ice',
  'powerPlayTimeOnIcePerGame': 'Power Play Time On Ice Per Game',
  'shortHandedGoalsAgainst': 'On-Ice Shorthanded Goals Against',
  'shortHandedGoalsFor': 'On-Ice Shorthanded Goals For',
  'shortHandedTimeOnIcePerGame': 'Shorthanded Time On Ice Per Game',
  'shortHandedTimeOnIce': 'Shorthanded Time On Ice',
  'evFaceoffsWo': 'Even Strength Faceoffs Won',
  'goalieCatches': 'Goalie Catches',
  'playerShoots': 'Skater Shoots',
  'shFaceoffsWo': 'Shorthanded Faceoffs Won',
  'winsInRegulatio': 'Regulation Wins (a Standings tiebreaker since 2019-20)',
  //team
  'penaltyKillNetPct': 'Penalty Kill Net Pct',
  'powerPlayNetPct': 'Power Play Net Pct',
  'lossesScoringFirst': 'Losses When Scoring First',
  'lossesTrailingFirst': 'Losses When Trailing First',
  'otLossesScoringFirst': 'Overtime Losses When Scoring First',
  'otLossesTrailingFirst': 'Overtime Losses When Trailing First',
  'scoringFirstGamesPlayed': 'Scoring First Games Played',
  'tiesScoringFirst': 'Ties When Scoring First',
  'tiesTrailingFirst': 'Ties When Trailing First',
  'trailingFirstGamesPlayed': 'Trailing First Games Played',
  'winPctScoringFirst': 'Win % When Scoring First',
  'winPctTrailingFirst': 'Win % When Trailing First',
  'winScoreFirst': 'Wins When Scoring First',
  'winsScoringFirst': 'Wins When Scoring First',
  'winOppScoreFirst': 'Wins When Trailing First',
  'winsTrailingFirst': 'Wins When Trailing First',
  "lossLeadPeriod1": "Losses After Lead Period 1",
  "lossLeadPeriod2": "Losses After Lead Period 2",
  "lossTrailPeriod1": "Losses After Trail Period 1",
  "lossTrailPeriod2": "Losses After Trail Period 2",
  "otLossLeadPeriod1": "OT Loss After Lead Period 1",
  "otLossLeadPeriod2": "OT Loss After Lead Period 2",
  "otLossTrailPeriod1": "OT Loss After Trail Period 1",
  "otLossTrailPeriod2": "OT Loss After Trail Period 2",
  "period1GoalsAgainst": "Goals Against In Period 1",
  "period1GoalsFor": "Goals For In Period 1",
  "period2GoalsAgainst": "Goals Against In Period 2",
  "period2GoalsFor": "Goals For In Period 2",
  "tiesLeadPeriod1": "Ties Leading After Period 1",
  "tiesLeadPeriod2": "Ties Leading After Period 2",
  "tiesTrailPeriod1": "Ties Trailing After Period 1",
  "tiesTrailPeriod2": "Ties Trailing After Period 2",
  "winPctLeadPeriod1": "Win % After Lead Period 1",
  "winPctLeadPeriod2": "Win % After Lead Period 2",
  "winPctTrailPeriod1": "Win % After Trail Period 1",
  "winPctTrailPeriod2": "Win % After Trail Period 2",
  'winLeadFirstPer': 'Wins After Lead 1st',
  "winsLeadPeriod1": "Wins After Lead Period 1",
  'winLeadSecondPer': 'Wins After Lead 2nd',
  "winsLeadPeriod2": "Wins After Lead Period 2",
  "winsTrailPeriod1": "Wins After Trail Period 1",
  "winsTrailPeriod2": "Wins After Trail Period 2",
  'lossesEvenShots': 'Losses Even Shots',
  'lossesOutshootOpponent': 'Losses Outshot Opponent',
  'lossesOutshotByOpponent': 'Losses Outshot by Opponent',
  'netShotsPerGame': 'Net Shots per Game',
  'otLossesEvenShots': 'Overtime Loss Even Shots',
  'otLossesOutshootOpponent': 'Overtime Loss Outshot Opponent',
  'otLossesOutshotByOpponent': 'Overtime Loss Outshot by Opponent',
  'tiesEvenShots': 'Overtime Loss Even Shots',
  'tiesOutshootOpponent': 'Overtime Loss Outshot Opponent',
  'tiesOutshotByOpponent': 'Overtime Loss Outshot by Opponent',
  'winsEvenShots': 'Wins Even Shots',
  'winOutshootOpp': 'Wins Outshot Opponent',
  'winsOutshootOpponent': 'Wins Outshot Opponent',
  'winOutshotByOpp': 'Wins Outshot by Opponent',
  'winsOutshotByOpponent': 'Wins Outshot by Opponent',
  'faceOffsTaken': 'Faceoffs taken',
  'homeRecord': 'Home record',
  'awayRecord': 'Away record',
  'soRecord': 'Record in games decided by shootout',
  'l10Record': 'Record in last 10 games',
  'streak': 'Streak',
};

String changeNameToAbb(String teamName) {
  switch (teamName) {
    case 'Anaheim Ducks':
      return 'ANA';

    case 'Arizona Coyotes':
      return 'ARI';

    case 'Boston Bruins':
      return 'BOS';

    case 'Buffalo Sabres':
      return 'BUF';

    case 'Carolina Hurricanes':
      return 'CAR';

    case 'Columbus Blue Jackets':
      return 'CBJ';

    case 'Calgary Flames':
      return 'CGY';

    case 'Chicago Blackhawks':
      return 'CHI';

    case 'Colorado Avalanche':
      return 'COL';

    case 'Dallas Stars':
      return 'DAL';

    case 'Detroit Red Wings':
      return 'DET';

    case 'Edmonton Oilers':
      return 'EDM';

    case 'Florida Panthers':
      return 'FLA';

    case 'Los Angeles Kings':
      return 'LAK';

    case 'Minnesota Wild':
      return 'MIN';

    case 'Montréal Canadiens':
      return 'MTL';

    case 'Nashville Predators':
      return 'NAS';

    case 'New Jersey Devils':
      return 'NJD';

    case 'New York Islanders':
      return 'NYI';

    case 'New York Rangers':
      return 'NYR';

    case 'Ottawa Senators':
      return 'OTT';

    case 'Philadelphia Flyers':
      return 'PHI';

    case 'Pittsburgh Penguins':
      return 'PIT';

    case 'San Jose Sharks':
      return 'SJS';

    case 'St. Louis Blues':
      return 'STL';

    case 'Tampa Bay Lightning':
      return 'TBL';

    case 'Toronto Maple Leafs':
      return 'TOR';

    case 'Vancouver Canucks':
      return 'VAN';

    case 'Vegas Golden Knights':
      return 'VGK';

    case 'Washington Capitals':
      return 'WSH';

    case 'Winnipeg Jets':
      return 'WPG';

    default:
      return 'UNK';
  }
}

Color getTeamColor(String teamName) {
  switch (teamName) {
    case 'Anaheim Ducks':
      return Color(0xFF000000);

    case 'Arizona Coyotes':
      return Color(0xFF862633);

    case 'Boston Bruins':
      return Color(0xFF000000);

    case 'Buffalo Sabres':
      return Color(0xFF041E42);

    case 'Carolina Hurricanes':
      return Color(0xFFC8102E);

    case 'Columbus Blue Jackets':
      return Color(0xFF041E42);

    case 'Calgary Flames':
      return Color(0xFFC8102E);

    case 'Chicago Blackhawks':
      return Color(0xFFC8102E);

    case 'Colorado Avalanche':
      return Color(0xFF6F263D);

    case 'Dallas Stars':
      return Color(0xFF006341);

    case 'Detroit Red Wings':
      return Color(0xFFC8102E);

    case 'Edmonton Oilers':
      return Color(0xFFFC4C02);

    case 'Florida Panthers':
      return Color(0xFFC8102E);

    case 'Los Angeles Kings':
      return Color(0xFF000000);

    case 'Minnesota Wild':
      return Color(0xFF154734);

    case 'Montréal Canadiens':
      return Color(0xFFA6192E);

    case 'Nashville Predators':
      return Color(0xFFFFB81C);

    case 'New Jersey Devils':
      return Color(0xFFC8102E);

    case 'New York Islanders':
      return Color(0xFF003087);

    case 'New York Rangers':
      return Color(0xFF0033A0);

    case 'Ottawa Senators':
      return Color(0xFFC8102E);

    case 'Philadelphia Flyers':
      return Color(0xFFFA4616);

    case 'Pittsburgh Penguins':
      return Color(0xFF000000);

    case 'San Jose Sharks':
      return Color(0xFF006272);

    case 'St. Louis Blues':
      return Color(0xFF003087);

    case 'Tampa Bay Lightning':
      return Color(0xFF00205B);

    case 'Toronto Maple Leafs':
      return Color(0xFF00205B);

    case 'Vancouver Canucks':
      return Color(0xFF00205B);

    case 'Vegas Golden Knights':
      return Color(0xFF333F48);

    case 'Washington Capitals':
      return Color(0xFFC8102E);

    case 'Winnipeg Jets':
      return Color(0xFF041E42);

    default:
      return Color(0x50FFFFFF);
  }
}
