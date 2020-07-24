enum TrophyType {
  TEAM,
  PLAYER,
  COACH,
  GM,
  OTHER,
}

TrophyType trophyTypeFromInt(int id){
  switch(id){
    case 1: return TrophyType.TEAM;
    case 2: return TrophyType.PLAYER;
    case 3: return TrophyType.COACH;
    case 4: return TrophyType.GM;
    case 5: return TrophyType.OTHER;
    default: throw Exception('Unknown trophy type: $id');
  }
}