import 'package:FlutterNhl/constants/styles.dart';
import 'package:FlutterNhl/redux/api/stat_parameter.dart';
import 'package:FlutterNhl/constants/constants.dart';
import 'package:FlutterNhl/redux/models/helpers.dart';
import 'package:FlutterNhl/widgets/custom_data_table.dart';
import 'package:flutter/material.dart';

class PlayerSeasonTableSource extends CustomDataTableSource {
  final List<DataRow> _rows;
  final List<DataColumn> _column;
  final List<Widget> _firstColumn;

  PlayerSeasonTableSource(this._rows, this._firstColumn, this._column);

  factory PlayerSeasonTableSource.fromData(List<dynamic> stats, List<String> displayItems){
    List<DataRow> tRow = [];
    List<DataColumn> tColumn = [];
    List<Widget> tFirstColumn = [];

    tColumn.addAll(
    displayItems.map((item) {
      return CustomDataTableSource.createTableColumn(getColumnAbb(item),getColumnTooltip(item));
    }));

    stats.forEach((statRow) {
      if (statRow is Map<String, dynamic>) {
        tFirstColumn.add(CustomDataTableSource.createTableFirstColumn(Text(getJsonInt('seasonId', statRow).toString(), style: CustomDataTableSource.firstColumnStyle)));
        tRow.add(DataRow(cells: displayItems.map((item) {
          return CustomDataTableSource.createTableCell(getStatFromMap(item, statRow));
        }).toList()));
      }
    });

    return PlayerSeasonTableSource(tRow, tFirstColumn, tColumn);
  }

  @override
  List<DataRow> get rows {
    return _rows;
  }
  @override
  List<DataColumn> get columns {
    return _column;
  }

  @override
  List<Widget> get firstColumn {
    return _firstColumn;
  }

  @override
  void callback(int columnIndex, bool ascending) {
    // TODO: implement callback
  }

  @override
  set setRowCallBack(dataRowTapCallBack) {
    // TODO: implement setRowCallBack
  }

  @override
  bool get sortAscending => true;

  @override
  int get sortColumn => 0;

  @override
  Widget get tableCorner {
    return CustomDataTableSource.createTableCorner('Season');
  }

  @override
  set setColumnSortCallBack(dataColumnSortCallback) {
    // TODO: implement setColumnSortCallBack
  }

}
