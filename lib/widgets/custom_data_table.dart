import 'package:FlutterNhl/constants/styles.dart';
import 'package:FlutterNhl/views/navigation/arguments.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

typedef DataRowTapCallBack = void Function(Argument, String);

abstract class CustomDataTableSource {
  static const TextStyle headerRowStyle = Styles.playerTableText;
  static const TextStyle cellRowStyle = Styles.playerTableText;
  static const TextStyle firstColumnStyle = Styles.playerTableText;
  static const double headerRowHeight = 35;
  static const double dataRowHeight = 30;
  static const double firstColumnWidth = 100;
  Widget get tableCorner;
  List<Widget> get firstColumn;
  List<DataColumn> get columns;
  List<DataRow> get rows;
  bool get sortAscending;
  int get sortColumn;
  set setColumnSortCallBack(DataColumnSortCallback dataColumnSortCallback);
  void callback(int columnIndex, bool ascending);
  set setRowCallBack(DataRowTapCallBack dataRowTapCallBack);
  Iterable<Widget> get firstColumnTest;
}

class CustomDataTable extends StatefulWidget {
  final CustomDataTableSource dataTableSource;

  const CustomDataTable({Key key, @required this.dataTableSource})
      : super(key: key);

  @override
  _CustomDataTableState createState() => _CustomDataTableState();
}

class _CustomDataTableState extends State<CustomDataTable> {
  @override
  Widget build(BuildContext context) {
    widget.dataTableSource.setRowCallBack = (Argument args, String route) {
      Navigator.pushNamed(context, route, arguments: args);
    };
    widget.dataTableSource.setColumnSortCallBack = (columnIndex, ascending) {
      setState(() {
        widget.dataTableSource.callback(columnIndex, ascending);
      });
    };
    return Row(
      children: <Widget>[
        Column(
          children: <Widget>[
            widget.dataTableSource.tableCorner,
            ...widget.dataTableSource.firstColumn
          ],
        ),
        Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Theme(
              data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
              child: DataTable(
                headingRowHeight: CustomDataTableSource.headerRowHeight,
                horizontalMargin: 5.0,
                columnSpacing: 15.0,
                dataRowHeight: CustomDataTableSource.dataRowHeight,
                columns: widget.dataTableSource.columns,
                rows: widget.dataTableSource.rows,
                sortAscending: widget.dataTableSource.sortAscending,
                sortColumnIndex: widget.dataTableSource.sortColumn,
              ),
            ),
          ),
        ),
      ],
    );
  }

  void rowCallBack(Argument args, String route) {
    Navigator.pushNamed(context, route, arguments: args);
  }
}
