import 'package:flutter/material.dart';

class CustomYearPicker extends StatelessWidget {
  final int selected;
  final Function(int) onSelected;
  final int maxValue;
  final int minValue;

  const CustomYearPicker({Key key, @required this.selected, @required this.onSelected, @required this.maxValue, @required this.minValue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () => callYearPicker(context),
      child: Text(selected.toString()),
    );
  }

  void callYearPicker(BuildContext context) async {
    int newValue = await showDialog<int>(context: context, builder: (BuildContext context){
      return SimpleDialog(
        title: const Text('Select a year'),
        children: _getValues(context)
      );
    });
    if(newValue != null)
      onSelected(newValue);
  }

  List<Widget> _getValues(BuildContext context){
    List<Widget> grids = [];
    for(int x = maxValue; x >= minValue; x = x-3){
      grids.add(Row(
        children: <Widget>[
          FlatButton(onPressed: () => Navigator.pop(context, x),child: Text(x.toString()),),
          FlatButton(onPressed: () => Navigator.pop(context, x-1),child: Text((x-1).toString()),),
          FlatButton(onPressed: () => Navigator.pop(context, x-2),child: Text((x-2).toString()),),
        ],
      ));
    }
    return grids;
  }
}
