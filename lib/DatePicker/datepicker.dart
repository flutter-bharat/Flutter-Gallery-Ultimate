import 'package:flutter/material.dart';

class DatePickerWidget extends StatefulWidget {
  @override
  _DatePickerWidgetState createState() => _DatePickerWidgetState();
}

class _DatePickerWidgetState extends State<DatePickerWidget> {

  DateTime _dateTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DatePicker"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(_dateTime == null ? 'Nothing has been picked yet' : _dateTime.toUtc().toString(),
            style: TextStyle(fontSize: 20.0),),
            SizedBox(height: 30.0),
            RaisedButton(
              child: Text("Pick a date",style: TextStyle(fontSize: 18.0)),
              onPressed: (){
                showDatePicker(
                  context: context, 
                  initialDate: _dateTime == null ? DateTime.now() : _dateTime, 
                  firstDate: DateTime(1960), 
                  lastDate: DateTime(2050)
                  ).then((date) =>{
                    setState(() {
                      _dateTime = date;
                    }),
                  });
              }
              ),
          ],
        ),
      ),
    );
  }
}