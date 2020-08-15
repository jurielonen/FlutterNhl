import 'package:FlutterNhl/constants/styles.dart';
import 'package:FlutterNhl/redux/models/config/config.dart';
import 'package:flutter/material.dart';

class CustomDatePickerConfig {
  final DateTime firstDate;
  final DateTime lastDate;
  final Function(DateTime) onSelected;
  final DatePickerMode pickerMode;

  CustomDatePickerConfig(this.firstDate, this.lastDate, this.onSelected, this.pickerMode);
}

class CustomDateTimePicker extends StatefulWidget {
  final CustomDatePickerConfig config;
  final DateTime selectedDate;

  const CustomDateTimePicker(
      {Key key, @required this.config, @required this.selectedDate})
      : super(key: key);
  @override
  _CustomDateTimePickerState createState() => _CustomDateTimePickerState();
}

class _CustomDateTimePickerState extends State<CustomDateTimePicker> {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: callDatePicker,
      child: Text(Styles.dateFormat.format(widget.selectedDate)),
    );
  }

  void callDatePicker() async {
    DateTime selectedDate = await getDate();
    print(selectedDate);
    if(selectedDate != null)
      widget.config.onSelected(selectedDate);
  }

  Future<DateTime> getDate(){
    return showDatePicker(
      context: context,
      initialDate: widget.selectedDate,
      firstDate: widget.config.firstDate,
      lastDate: widget.config.lastDate,
      initialDatePickerMode: widget.config.pickerMode,
      selectableDayPredicate: (DateTime date) => Season.selectableDate(date),
    );
  }
}
