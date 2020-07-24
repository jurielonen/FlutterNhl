import 'package:FlutterNhl/redux/models/award/award_enums.dart';
import 'package:FlutterNhl/redux/models/award/recipient.dart';
import 'package:FlutterNhl/redux/models/helpers.dart';
import 'package:FlutterNhl/redux/models/player/player.dart';
import 'package:FlutterNhl/redux/models/team/team.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AwardDataTableSource extends DataTableSource {
  final Award award;
  final Function(int) onRowPressed;
  List<DataColumn> _columns = [];

  AwardDataTableSource({@required this.award, @required this.onRowPressed});

  @override
  DataRow getRow(int index) {
    assert(index >= 0);
    if(index >= rowCount){
      return null;
    }
    final AwardFinalists finalists = award.recipients[index];
    switch (award.trophyCategory) {
      case TrophyType.TEAM:
        return DataRow.byIndex(index: index, cells: [
          DataCell(Text(finalists.seasonId.toString())),
          DataCell(Text(finalists.winner.name)),
          DataCell(Text(finalists.runnerUp.name)),
        ]);
      case TrophyType.PLAYER:
      case TrophyType.COACH:
      case TrophyType.GM:
        if (_columns.length == 7) {
          return DataRow.byIndex(index: index, cells: [
            DataCell(Text(finalists.seasonId.toString())),
            DataCell(Text(finalists.winner.name)),
            DataCell(Text(finalists.winner.teamName)),
            DataCell(Text(finalists.runnerUp.name)),
            DataCell(Text(finalists.runnerUp.teamName)),
            DataCell(Text(finalists.finalist.name)),
            DataCell(Text(finalists.finalist.teamName)),
          ]);
        } else if (_columns.length == 5) {
          return DataRow.byIndex(index: index, cells: [
            DataCell(Text(finalists.seasonId.toString())),
            DataCell(Text(finalists.winner.name)),
            DataCell(Text(finalists.winner.teamName)),
            DataCell(Text(finalists.runnerUp.name)),
            DataCell(Text(finalists.runnerUp.teamName)),
          ]);
        }
        return DataRow.byIndex(index: index, cells: [
          DataCell(Text(finalists.seasonId.toString())),
          DataCell(Text(finalists.winner.name)),
          DataCell(Text(finalists.winner.teamName)),
        ]);
      case TrophyType.OTHER:
        return DataRow.byIndex(index: index, cells: [
          DataCell(Text(finalists.seasonId.toString())),
          DataCell(Text(finalists.winner.name)),
        ]);
    }
    throw Exception('Unknown amount of columns(${_columns.length}) on ${award.name}');
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => award.recipients.length;

  @override
  int get selectedRowCount => 0;

  int get rowsPerPage => rowCount < 10 ? rowCount : 10;
  List<DataColumn> get columns {
    if (_columns != null && _columns.isNotEmpty) {
      return _columns;
    }
    _columns = [DataColumn(label: Text('Year'))];
    switch (award.trophyCategory) {
      case TrophyType.TEAM:
        _columns.addAll(<DataColumn>[
          DataColumn(label: Text('Winner')),
          DataColumn(label: Text('2nd')),
        ]);
        break;
      case TrophyType.PLAYER:
      case TrophyType.COACH:
      case TrophyType.GM:
        if (award.recipients
            .any((recipient) => recipient.finalist.name != '')) {
          _columns.addAll(<DataColumn>[
            DataColumn(label: Text('Winner')),
            DataColumn(label: Text('Team')),
            DataColumn(label: Text('2nd')),
            DataColumn(label: Text('Team')),
            DataColumn(label: Text('3rd')),
            DataColumn(label: Text('Team')),
          ]);
        } else if (award.recipients
            .any((recipient) => recipient.runnerUp.name != '')) {
          _columns.addAll(<DataColumn>[
            DataColumn(label: Text('Winner')),
            DataColumn(label: Text('Team')),
            DataColumn(label: Text('2nd')),
            DataColumn(label: Text('Team')),
          ]);
        } else {
          _columns.addAll(<DataColumn>[
            DataColumn(label: Text('Winner')),
            DataColumn(label: Text('Team')),
          ]);
        }
        break;
      case TrophyType.OTHER:
        _columns.addAll(<DataColumn>[
          DataColumn(label: Text('Winner')),
        ]);
        break;
    }
    return _columns;
  }
}

class Award {
  final int id;
  final String briefDesc;
  final String description;
  final String imageUrl;
  final String name;
  final TrophyType trophyCategory;
  final String trophyCategoryString;
  List<AwardFinalists> recipients;

  Award(
      {@required this.id,
      @required this.briefDesc,
      @required this.description,
      @required this.imageUrl,
      @required this.name,
      @required this.trophyCategory,
      @required this.trophyCategoryString});

  factory Award.fromJson(Map<String, dynamic> json) {
    return Award(
        id: getJsonInt('id', json),
        briefDesc: getJsonString('briefDescription', json),
        description: getJsonString('description', json),
        imageUrl: getJsonString('imageUrl', json).trim(),
        name: getJsonString('name', json),
        trophyCategory:
            trophyTypeFromInt(getJsonInt2(['trophyCategory', 'id'], json)),
        trophyCategoryString: getJsonString2(
            ['trophyCategory', 'trophyRecipientCategory'], json));
  }

  int get trophyCategoryId => trophyCategory.index + 1;
  bool isRecipientsEmpty() {
    if (recipients == null) return true;
    return recipients.isEmpty;
  }

  List<String> recipientQueryParams() {
    List<String> params = ['seasonId'];
    switch (trophyCategory) {
      case TrophyType.TEAM:
        params.addAll(_teams);
        break;
      case TrophyType.PLAYER:
        params.addAll(_teams);
        params.addAll([
          'multipleFinalists',
          'multipleWinners',
          'multipleRunnerUp',
          'player.fullName',
          'player.id',
          'runnerUpPlayer.fullName',
          'runnerUpPlayer.id',
          'finalistPlayer.fullName',
          'finalistPlayer.id',
        ]);
        break;
      case TrophyType.COACH:
        params.addAll(_teams);
        params.addAll([
          'coach.id',
          'coach.fullName',
          'runnerUpCoach.id',
          'runnerUpCoach.fullName',
          'finalistCoach.id',
          'finalistCoach.fullName',
        ]);
        break;
      case TrophyType.GM:
        params.addAll(_teams);
        params.addAll([
          'otherName',
          'otherRunnerUp',
          'otherFinalistName',
        ]);
        break;
      case TrophyType.OTHER:
        params.addAll([
          'otherName',
          'otherRunnerUp',
          'otherFinalistName',
        ]);
        break;
    }
    return params;
  }

  static const List<String> _teams = [
    'team.id',
    'team.fullName',
    'team.triCode',
    'team.active',
    'runnerUpTeam.id',
    'runnerUpTeam.fullName',
    'runnerUpTeam.triCode',
    'runnerUpTeam.active',
    'finalistTeam.id',
    'finalistTeam.fullName',
    'finalistTeam.triCode',
    'finalistTeam.active'
  ];
}

class AwardFinalists {
  final int seasonId;
  final Recipient winner;
  final Recipient runnerUp;
  final Recipient finalist;

  AwardFinalists({this.seasonId, this.winner, this.runnerUp, this.finalist});

  factory AwardFinalists.fromJson(Map<String, dynamic> json, TrophyType type) {
    return AwardFinalists(
        seasonId: getJsonInt('seasonId', json),
        winner: Recipient.fromJsonWinner(json, type),
        runnerUp: Recipient.fromJsonRunnerUp(json, type),
        finalist: Recipient.fromJsonFinalist(json, type));
  }
}
