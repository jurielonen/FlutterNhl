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
  int get sortColumn => null;
  set setColumnSortCallBack(DataColumnSortCallback dataColumnSortCallback);
  void callback(int columnIndex, bool ascending);
  set setRowCallBack(DataRowTapCallBack dataRowTapCallBack);

  static Widget createTableCorner(String title) {
    return SizedBox(
      width: CustomDataTableSource.firstColumnWidth,
      height: CustomDataTableSource.headerRowHeight,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8.0, 3.0, 8.0, 3.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: Colors.grey, width: 3))),
                child:
                    Text(title, style: CustomDataTableSource.firstColumnStyle)),
          ),
        ),
      ),
    );
  }

  static DataColumn createTableColumn(String title, String tooltip,
      {DataColumnSortCallback onSortCallBack}) {
    return DataColumn(
      label: Container(
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.grey, width: 3))),
        child: Padding(
          padding: const EdgeInsets.all(3.0),
          child: Text(
            title,
            style: CustomDataTableSource.headerRowStyle,
          ),
        ),
      ),
      tooltip: tooltip,
      onSort: (c, a) => onSortCallBack(c, a),
    );
  }

  static Widget createTableFirstColumn(Widget title) {
    return SizedBox(
      width: CustomDataTableSource.firstColumnWidth,
      height: CustomDataTableSource.dataRowHeight,
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Align(alignment: Alignment.centerLeft, child: title),
      ),
    );
  }

  static DataCell createTableCell(String value) {
    return DataCell(
      Text(
        value,
        style: CustomDataTableSource.cellRowStyle,
      ),
    );
  }
}

class CustomDataTable extends StatefulWidget {
  final CustomDataTableSource dataTableSource;

  const CustomDataTable({Key key, @required this.dataTableSource})
      : super(key: key);

  @override
  _CustomDataTableState createState() => _CustomDataTableState();
}

class _CustomDataTableState extends State<CustomDataTable> {
  int _sortColumn = 0;
  bool _ascending = true;


  @override
  void initState() {
    super.initState();
    _sortColumn = widget.dataTableSource.sortColumn;
    _ascending = widget.dataTableSource.sortAscending;
  }

  @override
  Widget build(BuildContext context) {
    widget.dataTableSource.setRowCallBack = (Argument args, String route) {
      Navigator.pushNamed(context, route, arguments: args);
    };
    widget.dataTableSource.setColumnSortCallBack = (columnIndex, ascending) {
      setState(() {
        widget.dataTableSource.callback(_sortColumn, _ascending);
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
              data:
                  Theme.of(context).copyWith(dividerColor: Colors.transparent),
              child: DataTable(
                headingRowHeight: CustomDataTableSource.headerRowHeight,
                horizontalMargin: 5.0,
                columnSpacing: 15.0,
                dataRowHeight: CustomDataTableSource.dataRowHeight,
                columns: widget.dataTableSource.columns,
                rows: widget.dataTableSource.rows,
                sortAscending: _ascending,
                sortColumnIndex: _sortColumn,
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
