enum StatType { GOALIE, PLAYER, TEAM }

String statTypeToString(StatType type) {
  switch (type) {
    case StatType.PLAYER:
      return 'Player';
    case StatType.GOALIE:
      return 'Goalie';
    case StatType.TEAM:
      return 'Team';
    default:
      return '';
  }
}

String statTypeNameKey(StatType type) {
  switch (type) {
    case StatType.PLAYER:
      return 'skaterFullName';
    case StatType.GOALIE:
      return 'goalieFullName';
    case StatType.TEAM:
      return 'teamFullName';
    default:
      return '';
  }
}

String statTypeToParam(StatType type) {
  switch (type) {
    case StatType.PLAYER:
      return 'skater';
    case StatType.GOALIE:
      return 'goalie';
    /*case StatType.TEAM:
      return 'teamFullName';*/
    default:
      throw Exception('Unknown stattype in statTypeToParam ${type}');
  }
}

class ParamType {
  final StatType type;
  final String stat;
  final String sort;

  ParamType(this.type, this.stat, this.sort);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ParamType &&
          runtimeType == other.runtimeType &&
          type == other.type &&
          stat == other.stat;

  @override
  int get hashCode => type.hashCode ^ stat.hashCode;

  ParamType copyWith({StatType type, String stat}) {
    return ParamType(type ?? this.type, stat ?? this.stat, this.sort);
  }
}

class StatParameters {
  final ParamType paramType;
  final bool isAggregated = false;
  final bool isGame = false;
  final int limit = 20;
  int start = 0;
  int gamesPlayed = 1;
  int gameType = 2;
  String startSeason = _getCurrentSeason();
  String endSeason = _getCurrentSeason();

  static final Map<ParamType, StatParameters> _cache =
      <ParamType, StatParameters>{};

  StatParameters(this.paramType);

  StatParameters.copy(
      {this.paramType,
      this.start,
      this.gamesPlayed,
      this.gameType,
      this.startSeason,
      this.endSeason});

  factory StatParameters.create(ParamType paramType) {
    if (_cache.containsKey(paramType)) {
      return _cache[paramType];
    } else {
      StatParameters temp = StatParameters(paramType);
      _cache[paramType] = temp;
      return temp;
    }
  }

  factory StatParameters.initial() {
    return StatParameters(ParamType(StatType.PLAYER, '', ''));
  }

  StatParameters copyWith(
      {ParamType paramType,
      int start,
      int gamesPlayed,
      int gameType,
      String startSeason,
      String endSeason}) {
    return StatParameters.copy(
        paramType: paramType ?? this.paramType,
        start: start ?? this.start,
        gamesPlayed: gamesPlayed ?? this.gamesPlayed,
        gameType: gameType ?? this.gameType,
        startSeason: startSeason ?? this.startSeason,
        endSeason: endSeason ?? this.endSeason);
  }

  StatParameters nextStats() {
    return copyWith(start: start += limit);
  }

  StatParameters previousStats() {
    if (start < limit) {
      return copyWith(start: 0);
    }
    return copyWith(start: start -= limit);
  }

  resetFilters() {
    start = 0;
    gamesPlayed = 1;
    gameType = 2;
    startSeason = _getCurrentSeason();
    endSeason = _getCurrentSeason();
  }

  static String _getCurrentSeason() {
    DateTime currentTime = DateTime.now();
    int year = currentTime.year;
    if (currentTime.month >= DateTime.october && currentTime.day >= 15) {
      year += 1;
    }
    return '${year - 1}$year';
  }

  String getPath() {
    String path = 'stats/rest/en/';
    switch (paramType.type) {
      case StatType.GOALIE:
        path += 'goalie/${paramType.stat}';
        break;
      case StatType.PLAYER:
        path += 'skater/${paramType.stat}';
        break;
      case StatType.TEAM:
        path += 'team/${paramType.stat}';
        break;
    }
    return path;
  }

  Map<String, String> getParams() {
    Map<String, String> temp = {
      'isAggregate': isAggregated.toString(),
      'isGame': isGame.toString(),
      'sort': paramType.sort,
      'start': start.toString(),
      'limit': limit.toString(),
      'factCayenneExp': 'gamesPlayed>=${gamesPlayed.toString()}',
      'cayenneExp':
          'gameTypeId=${gameType.toString()} and seasonId>=${startSeason.toString()} and seasonId<=${endSeason.toString()}'
    };
    switch (paramType.stat) {
      case 'shootout':
      case 'penaltyShots':
        if (temp.containsKey('factCayenneExp')) {
          temp.remove('factCayenneExp');
        }
        break;
    }

    return temp;
  }
}

/*Map<String, String> getParams(sort,
    {isAggregated = false,
    isGame = false,
    start = 0,
    limit = 20,
    gamesPlayed = 1,
    gameType = 2,
    startSeason = '20192020',
    endSeason = '20192020'}) {
  return {
    'isAggregate': isAggregated.toString(),
    'isGame': isGame.toString(),
    'sort': sort,
    'start': start.toString(),
    'limit': limit.toString(),
    'factCayenneExp': 'gamesPlayed>=${gamesPlayed.toString()}',
    'cayenneExp':
        'gameTypeId=${gameType.toString()} and seasonId>=${startSeason.toString()} and seasonId<=${endSeason.toString()}'
  };
}*/
