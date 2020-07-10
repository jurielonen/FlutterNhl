String getColumnAbb(String value) {
  if (constantColumns.containsKey(value)) {
    return constantColumns[value];
  }
  return '';
}

String getColumnTooltip(String value) {
  if (constantTooltips.containsKey(value)) {
    return constantTooltips[value];
  }
  return '';
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
  "otGoals": "OTG",
  "otLosses": "OT",
  "otPoints": "OTP",
  "penaltyKillPct": "PK%",
  "penaltyMinutes": "PIM",
  "pkPctg": "PK%",
  "playerTeamsPlayedFor": "Team",
  "plusMinus": "+/-",
  "pointPct": "P%",
  "points": "P",
  "pointsPerGame": "P/GP",
  "positionCode": "Pos",
  "powerPlayPct": "PP%",
  "ppGoals": "PPG",
  "ppGoalsAgainst": "PP GA",
  "ppOpportunities": "PP Opp",
  "ppPctg": "PP%",
  "ppPoints": "PPP",
  "regulationAndOtWins": "ROW",
  "savePct": "Sv%",
  "seasonId": "Season",
  "shGoals": "SHG",
  "shNumTimes": "TS",
  "shPoints": "SHP",
  "shiftsPerGame": "Shifts/GP",
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
  "shGoals": "Shorthanded Goals (since 1933-34)",
  "shNumTimes": "Times Shorthanded (since 1977-78)",
  "shPoints": "Shorthanded Points (since 1933-34)",
  "shiftsPerGame": "Shifts Per Game (since 1997-98)",
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
