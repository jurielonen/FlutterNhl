enum PlayEnum {
  UNKNOWN,
  FACEOFF,
  HIT,
  GIVEAWAY,
  GOAL,
  SHOT,
  MISSED_SHOT,
  PENALTY,
  STOP,
  SUB,
  FIGHT,
  TAKEAWAY,
  BLOCKED_SHOT,
  PERIOD_START,
  PERIOD_END,
  GAME_END,
  GAME_SCHEDULED,
  PERIOD_READY,
  PERIOD_OFFICIAL,
  SHOOTOUT_COMPLETE,
  EARLY_INT_START,
  EARLY_INT_END,
  GAME_OFFICIAL,
  CHALLENGE,
  EMERGENCY_GOALTENDER,
}

PlayEnum playEnumFromString(String value) {
  switch (value) {
    case 'FACEOFF':
      return PlayEnum.FACEOFF;
    case 'HIT':
      return PlayEnum.HIT;
    case 'GIVEAWAY':
      return PlayEnum.GIVEAWAY;
    case 'GOAL':
      return PlayEnum.GOAL;
    case 'SHOT':
      return PlayEnum.SHOT;
    case 'MISSED_SHOT':
      return PlayEnum.MISSED_SHOT;
    case 'PENALTY':
      return PlayEnum.PENALTY;
    case 'STOP':
      return PlayEnum.STOP;
    case 'SUB':
      return PlayEnum.SUB;
    case 'FIGHT':
      return PlayEnum.FIGHT;
    case 'TAKEAWAY':
      return PlayEnum.TAKEAWAY;
    case 'BLOCKED_SHOT':
      return PlayEnum.BLOCKED_SHOT;
    case 'PERIOD_START':
      return PlayEnum.PERIOD_START;
    case 'PERIOD_END':
      return PlayEnum.PERIOD_END;
    case 'GAME_END':
      return PlayEnum.GAME_END;
    case 'GAME_SCHEDULED':
      return PlayEnum.GAME_SCHEDULED;
    case 'PERIOD_READY':
      return PlayEnum.PERIOD_READY;
    case 'PERIOD_OFFICIAL':
      return PlayEnum.PERIOD_OFFICIAL;
    case 'SHOOTOUT_COMPLETE':
      return PlayEnum.SHOOTOUT_COMPLETE;
    case 'EARLY_INT_START':
      return PlayEnum.EARLY_INT_START;
    case 'EARLY_INT_END':
      return PlayEnum.EARLY_INT_END;
    case 'GAME_OFFICIAL':
      return PlayEnum.GAME_OFFICIAL;
    case 'CHALLENGE':
      return PlayEnum.CHALLENGE;
    case 'EMERGENCY_GOALTENDER':
      return PlayEnum.EMERGENCY_GOALTENDER;
    default:
      return PlayEnum.UNKNOWN;
  }
}
