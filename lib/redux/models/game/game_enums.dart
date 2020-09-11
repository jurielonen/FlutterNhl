enum GameType {
  REGULAR,
  POSTSEASON,
  PRESEASON,
  ALL_STAR,
  OLYMPIC,
  EXHIBITION,
  WORLD_CUP_E,
  WORLD_CUP_P,
  WORLD_CUP_F,
  UNKNOWN,
}

bool acceptableGameType(GameType type){
  switch(type){
    case GameType.REGULAR:
    case GameType.POSTSEASON:
      return true;
    default:
      return false;
  }
}

GameType gameTypeFromString(String value){
  switch(value) {
    case "PR": return GameType.PRESEASON;
    case "R" : return GameType.REGULAR;
    case "P" : return GameType.POSTSEASON;
    case "A" : return GameType.ALL_STAR;
    case "O" : return GameType.OLYMPIC;
    case "E" : return GameType.EXHIBITION;
    case "WCOH_EXH" : return GameType.WORLD_CUP_E;
    case "WCOH_PRELIM" : return GameType.WORLD_CUP_P;
    case "WCOH_FINAL" : return GameType.WORLD_CUP_F;
    default : return GameType.UNKNOWN;
  }
}

enum GameStateEnum {
  SCHEDULED,
  PRE_GAME,
  IN_PROGRESS,
  IN_PROGRESS_CRITICAL,
  GAME_OVER,
  FINAL,
  FINAL_2,
  SCHEDULED_TBD,
  POSTPONED,
  UNKNOWN
}

GameStateEnum gameStateFromString(String value){
  switch(value){
    case "1" : return GameStateEnum.SCHEDULED;
    case "2" : return GameStateEnum.PRE_GAME;
    case "3" : return GameStateEnum.IN_PROGRESS;
    case "4" : return GameStateEnum.IN_PROGRESS_CRITICAL;
    case "5" : return GameStateEnum.GAME_OVER;
    case "6" : return GameStateEnum.FINAL;
    case "7" : return GameStateEnum.FINAL_2;
    case "8" : return GameStateEnum.SCHEDULED_TBD;
    case "9" : return GameStateEnum.POSTPONED;
    default : return GameStateEnum.UNKNOWN;
  }
}

String gameStateToString(GameStateEnum value){
  switch(value){
    case GameStateEnum.SCHEDULED: return 'Scheduled';
    case GameStateEnum.PRE_GAME:
    case GameStateEnum.IN_PROGRESS:
    case GameStateEnum.IN_PROGRESS_CRITICAL: return 'Live';
    case GameStateEnum.GAME_OVER:
    case GameStateEnum.FINAL:
    case GameStateEnum.FINAL_2: return 'Final';
    case GameStateEnum.SCHEDULED_TBD: return 'TBD';
    case GameStateEnum.POSTPONED: return 'Postponed';
    default : return 'Unknown';
  }
}