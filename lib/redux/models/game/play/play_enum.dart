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

String playEnumToString(PlayEnum value) {
  switch (value) {
    case PlayEnum.FACEOFF:
      return 'FACEOFF';
    case PlayEnum.HIT:
      return 'HIT';
    case PlayEnum.GIVEAWAY:
      return 'GIVEAWAY';
    case PlayEnum.GOAL:
      return 'GOAL';
    case PlayEnum.SHOT:
      return 'SHOT';
    case PlayEnum.MISSED_SHOT:
      return 'MISSED SHOT';
    case PlayEnum.PENALTY:
      return 'PENALTY';
    case PlayEnum.STOP:
      return 'STOP';
    case PlayEnum.SUB:
      return 'SUB';
    case PlayEnum.FIGHT:
      return 'FIGHT';
    case PlayEnum.TAKEAWAY:
      return 'TAKEAWAY';
    case PlayEnum.BLOCKED_SHOT:
      return 'BLOCKED SHOT';
    case PlayEnum.PERIOD_START:
      return 'PERIOD START';
    case PlayEnum.PERIOD_END:
      return 'PERIOD END';
    case PlayEnum.GAME_END:
      return 'GAME END';
    case PlayEnum.GAME_SCHEDULED:
      return 'GAME SCHEDULED';
    case PlayEnum.PERIOD_READY:
      return 'PERIOD READY';
    case PlayEnum.PERIOD_OFFICIAL:
      return 'PERIOD OFFICIAL';
    case PlayEnum.SHOOTOUT_COMPLETE:
      return 'SHOOTOUT COMPLETE';
    case PlayEnum.EARLY_INT_START:
      return 'EARLY INT START';
    case PlayEnum.EARLY_INT_END:
      return 'EARLY INT END';
    case PlayEnum.GAME_OFFICIAL:
      return 'GAME OFFICIAL';
    case PlayEnum.CHALLENGE:
      return 'CHALLENGE';
    case PlayEnum.EMERGENCY_GOALTENDER:
      return 'EMERGENCY GOALTENDER';
    default:
      return 'UNKNOWN';
  }
}

enum ShotTypeEnum {
  SNAP,
  WRIST,
  SLAP,
  TIP,
  DEFLECTED,
  BACKHAND,
  WRAP,
  MISSED,
  BLOCKED,
  UNK,
}

ShotTypeEnum shotTypeEnumFromString(String type) {
  switch (type.toLowerCase()) {
    case "wrist shot":
      return ShotTypeEnum.WRIST;
    case "snap shot":
      return ShotTypeEnum.SNAP;
    case "slap shot":
      return ShotTypeEnum.SLAP;
    case "deflected":
      return ShotTypeEnum.DEFLECTED;
    case "backhand":
      return ShotTypeEnum.BACKHAND;
    case "wrap-around":
      return ShotTypeEnum.WRAP;
    case "missed shot":
      return ShotTypeEnum.MISSED;
    case "blocked shot":
      return ShotTypeEnum.BLOCKED;
    case "tip-in":
      return ShotTypeEnum.TIP;
    default:
      return ShotTypeEnum.UNK;
  }
}

String shotTypeEnumToString(ShotTypeEnum type) {
  switch (type) {
    case ShotTypeEnum.WRIST:
      return "Wrist Shot";
    case ShotTypeEnum.SNAP:
      return "Snap Shot";
    case ShotTypeEnum.SLAP:
      return "Slap Shot";
    case ShotTypeEnum.TIP:
      return "Tip-In";
    case ShotTypeEnum.BACKHAND:
      return "Backhand";
    case ShotTypeEnum.WRAP:
      return "Wrap-around";
    case ShotTypeEnum.MISSED:
      return "Missed Shot";
    case ShotTypeEnum.BLOCKED:
      return "Blocked Shot";
    case ShotTypeEnum.DEFLECTED:
      return "Deflected";
    default:
      return 'Unknown';
  }
}
