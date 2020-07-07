import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/DatePicker/datepicker.dart';
import 'package:flutter_gallery_ultimate/DatePicker/datepickercode.dart';
import 'package:flutter_gallery_ultimate/DatePicker/description.dart';


class DatePickerOutput extends StatefulWidget {
  @override
  _DatePickerOutputState createState() => _DatePickerOutputState();
}

class _DatePickerOutputState extends State<DatePickerOutput> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: PageController(),
        scrollDirection: Axis.horizontal,
        children: [
          DatePickerDescription(),
          DatePickerWidget(),
          DatePickerCode(),
        ],
      ),
    );
  }
}
