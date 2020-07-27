import 'package:FlutterNhl/constants/styles.dart';
import 'package:FlutterNhl/views/navigation/arguments.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

typedef DataRowTapCallBack =  void Function(Argument, String);

abstract class CustomDataTableSource {
  String get tableCorner;
  List<String> get firstColumn;
  List<DataColumn> get columns;
  List<DataRow> get rows;
  bool get sortAscending;
  int get sortColumn;
  set setColumnSortCallBack(DataColumnSortCallback dataColumnSortCallback);
  void callback(int columnIndex, bool ascending);
  set setRowCallBack(DataRowTapCallBack dataRowTapCallBack);
}

class CustomDataTable extends StatefulWidget {
  final CustomDataTableSource dataTableSource;

  const CustomDataTable({Key key, this.dataTableSource}) : super(key: key);

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
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              SizedBox(
                width: 100,
                height: 30,
                child: Center(
                  child: Text(widget.dataTableSource.tableCorner,
                      style: Styles.playerTableText),
                ),
              ),
              ...widget.dataTableSource.firstColumn
                  .map((row) => SizedBox(
                        width: 100,
                        height: 20,
                        child: Center(
                          child: Text(
                            row,
                            style: Styles.playerTableText,
                          ),
                        ),
                      ))
                  .toList()
            ],
          ),
          DataTable(
            headingRowHeight: 30.0,
            horizontalMargin: 5.0,
            columnSpacing: 3.0,
            dataRowHeight: 20.0,
            columns: widget.dataTableSource.columns,
            rows: widget.dataTableSource.rows,
            sortAscending: widget.dataTableSource.sortAscending,
            sortColumnIndex: widget.dataTableSource.sortColumn,
          ),
        ],
      ),
    );
    return Container();
  }

  void rowCallBack(Argument args, String route){
    Navigator.pushNamed(context, route, arguments: args);
  }
}
