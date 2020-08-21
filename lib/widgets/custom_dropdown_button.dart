import 'package:FlutterNhl/constants/styles.dart';
import 'package:flutter/material.dart';

class CustomDropdownButton extends StatelessWidget {
  final String selectedValue;
  final List<String> values;
  final Function(String) onValueChanged;

  const CustomDropdownButton(
      {Key key, this.selectedValue, this.values, this.onValueChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: selectedValue,
      icon: Icon(Icons.keyboard_arrow_down),
      iconSize: 24,
      elevation: 16,
      onChanged: (String newValue) {
        onValueChanged(newValue);
      },
      items: values.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value.toUpperCase(),style: Styles.infoTableHeaderText),
        );
      }).toList(),
    );
  }
}
