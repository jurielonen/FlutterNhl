import 'package:FlutterNhl/redux/models/helpers.dart';
import 'package:FlutterNhl/redux/models/player/player.dart';
import 'package:FlutterNhl/redux/models/player/player_enums.dart';
import 'package:FlutterNhl/redux/models/team/team.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DraftDataTableSource extends DataTableSource {
  final Draft draft;
  final Function(int) onRowPressed;

  DraftDataTableSource({@required this.draft, @required this.onRowPressed});

  @override
  DataRow getRow(int index) {
    assert(index >= 0);
    if (index >= rowCount) {
      return null;
    }
    Pick pick = draft.getPick(index + 1);
    return DataRow.byIndex(index: index, cells: _getDataRow(pick));
  }

  List<DataCell> _getDataRow(Pick pick) {
    return [
      //DataCell(Text(pick.round)),
      DataCell(Text(pick.pickRound.toString())),
      DataCell(Text(pick.pickOverall.toString())),
      DataCell(Text(pick.prospect.nameString), onTap: () {
        if (pick.prospect is ProspectWithFullDetails)
          onRowPressed(pick.prospect.id);
      }),
      DataCell(Text(pick.team.abb)),
      DataCell(Text(pick.prospect.positionString)),
      DataCell(Text(pick.prospect.birthCountryString)),
      DataCell(Text(pick.prospect.amateurLeagueString)),
      DataCell(Text(pick.prospect.amateurTeamString)),
    ];
  }

  @override
  bool get isRowCountApproximate => true;

  @override
  int get rowCount => draft.rounds.last.picks.last.pickOverall;

  @override
  int get selectedRowCount => 0;

  int get rowsPerPage {
    if (draft == null) {
      return 30;
    } else {
      return draft.rounds.first.picks.length;
    }
  }

  String get year => draft.year.toString();
}

class Draft {
  final int year;
  //final int picksInRound;
  //final List<Pick> picks;
  final List<DraftRound> rounds;

  Draft({@required this.year, @required this.rounds});

  factory Draft.fromJson(Map<String, dynamic> json) {
    Map<String, dynamic> draft = getJsonObject(['drafts', 0], json);
    /*List<Pick> picks = [];
    getJsonList(['rounds'], draft).forEach((round) =>
        getJsonList(['picks'], round)
            .forEach((pick) => picks.add(Pick.fromJson(pick))));*/

    return Draft(
        year: getJsonInt('draftYear', draft),
        rounds: List<DraftRound>.from(getJsonList(['rounds'], draft)
            .map((round) => DraftRound.fromJson(round))));
  }

  factory Draft.empty() {
    return Draft(year: 0, rounds: []);
  }

  Pick getPick(int overallPick) {
    Pick pick;
    rounds.forEach((round) {
      if (round.picks.first.pickOverall <= overallPick &&
          round.picks.last.pickOverall >= overallPick) {
        pick = round.picks
            .firstWhere((element) => element.pickOverall == overallPick);
      }
    });
    return pick;
  }

  DraftRound getRound(int round) {
    return rounds.firstWhere((dRound) => dRound.round == round,
        orElse: () => null);
  }
}

class DraftRound {
  final int round;
  final List<Pick> picks;

  DraftRound({@required this.round, @required this.picks});

  factory DraftRound.fromJson(Map<String, dynamic> json) {
    return DraftRound(
      round: getJsonInt('roundNumber', json),
      picks: List<Pick>.from(
          getJsonList(['picks'], json).map((pick) => Pick.fromJson(pick))),
    );
  }
}

class Pick {
  final int pickOverall;
  final int pickRound;
  final String round;
  final Team team;
  final Prospect prospect;

  Pick(
      {@required this.pickOverall,
      @required this.team,
      @required this.round,
      @required this.prospect,
      @required this.pickRound});

  factory Pick.fromJson(Map<String, dynamic> json) {
    return Pick(
      pickOverall: getJsonInt('pickOverall', json),
      pickRound: getJsonInt('pickInRound', json),
      round: getJsonString('round', json),
      team: Team.fromJson(getJsonObject(['team'], json)),
      prospect: Prospect.fromJson(getJsonObject(['prospect'], json)),
    );
  }
}

class Prospect {
  Prospect();

  String get nameString => 'UNK';
  String get positionString => 'UNK';
  String get birthCountryString => 'UNK';
  String get amateurLeagueString => 'UNK';
  String get amateurTeamString => 'UNK';
  int get id => -1;

  factory Prospect.fromJson(Map<String, dynamic> json) {
    if (json.length > 2) {
      return ProspectWithFullDetails.fromJson(json);
    } else {
      return ProspectWithJustName(getJsonString('fullName', json));
    }
  }
}

class ProspectWithJustName extends Prospect {
  final String name;

  @override
  String get nameString => name;
  ProspectWithJustName(this.name);
}

class ProspectWithFullDetails extends Prospect {
  final String fullname;
  final int nhlId;
  final String nationality;
  final String birthCity;
  final String birthCountry;
  final DateTime birthDate;
  final String handness;
  final PersonPosition position;
  final String prospectCategory;
  final String amateurTeam;
  final String amateurLeague;

  ProspectWithFullDetails(
      {@required this.fullname,
      @required this.nhlId,
      @required this.nationality,
      @required this.birthCity,
      @required this.birthCountry,
      @required this.birthDate,
      @required this.handness,
      @required this.position,
      @required this.prospectCategory,
      @required this.amateurTeam,
      @required this.amateurLeague});

  factory ProspectWithFullDetails.fromJson(Map<String, dynamic> json) {
    return ProspectWithFullDetails(
      fullname: getJsonString('fullName', json),
      nhlId: getJsonInt('nhlPlayerId', json),
      nationality: getJsonString('nationality', json),
      birthCity: getJsonString('birthCity', json),
      birthCountry: getJsonString('birthCountry', json),
      birthDate: getJsonDateTime('birthDate', json),
      handness: getJsonString('shootsCatches', json),
      position:
          PersonPosition.fromJson(getJsonObject(['primaryPosition'], json)),
      prospectCategory: getJsonString2(['prospectCategory', 'shortName'], json),
      amateurTeam: getJsonString2(['amateurTeam', 'name'], json),
      amateurLeague: getJsonString2(['amateurLeague', 'name'], json),
    );
  }

  @override
  String get nameString => fullname;

  @override
  String get positionString => positionToAbbString(position.code);

  @override
  String get birthCountryString => birthCountry;

  @override
  String get amateurLeagueString => amateurLeague;

  @override
  String get amateurTeamString => amateurTeam;

  @override
  int get id => nhlId;
}
