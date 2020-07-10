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
      icon: Icon(Icons.arrow_downward),
      iconSize: 24,
      elevation: 16,
      style: TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String newValue) {
        onValueChanged(newValue);
      },
      items: values.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
