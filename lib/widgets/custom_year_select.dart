import 'package:FlutterNhl/constants/styles.dart';
import 'package:flutter/material.dart';

class CustomYearPicker extends StatelessWidget {
  final int selected;
  final Function(int) onSelected;
  final int maxValue;
  final int minValue;
  final int reducer;

  const CustomYearPicker(
      {Key key,
      @required this.selected,
      @required this.onSelected,
      @required this.maxValue,
      @required this.minValue,
      this.reducer = 1})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () => callYearPicker(context),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(selected.toString(), style: Styles.infoTableHeaderText),
          ),
          Icon(Icons.keyboard_arrow_down),
        ],
      ),
    );
  }

  void callYearPicker(BuildContext context) async {
    int newValue = await showDialog<int>(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
              title: const Text('Select a year'),
              children: _getValues(context));
        });
    if (newValue != null) onSelected(newValue);
  }

  List<Widget> _getValues(BuildContext context) {
    List<Widget> grids = [];
    for (int x = maxValue; x >= minValue; x = x - (3 * reducer)) {
      grids.add(Row(
        children: <Widget>[
          FlatButton(
            onPressed: () => Navigator.pop(context, x),
            child: Text(x.toString()),
          ),
          FlatButton(
            onPressed: () => Navigator.pop(context, x - reducer),
            child: Text((x - reducer).toString()),
          ),
          FlatButton(
            onPressed: () => Navigator.pop(context, x - (2 * reducer)),
            child: Text((x - (2 * reducer)).toString()),
          ),
        ],
      ));
    }
    return grids;
  }
}
