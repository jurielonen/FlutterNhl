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

enum GameState {
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

GameState gameStateFromString(String value){
  switch(value){
    case "1" : return GameState.SCHEDULED;
    case "2" : return GameState.PRE_GAME;
    case "3" : return GameState.IN_PROGRESS;
    case "4" : return GameState.IN_PROGRESS_CRITICAL;
    case "5" : return GameState.GAME_OVER;
    case "6" : return GameState.FINAL;
    case "7" : return GameState.FINAL_2;
    case "8" : return GameState.SCHEDULED_TBD;
    case "9" : return GameState.POSTPONED;
    default : return GameState.UNKNOWN;
  }
}