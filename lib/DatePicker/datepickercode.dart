import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/utils/DataFile.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/googlecode.dart';



class DatePickerCode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    var code = '''
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
            style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
            SizedBox(height: 30.0),
            RaisedButton(
              color: Colors.red,
              child: Text("Pick a date",style: TextStyle(fontSize: 18.0,color: Colors.white)),
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
    ''';


    return Scaffold(
     appBar: customizedAppBar("Code"),
      body: ListView(
        children: [
        HighlightView(
        // The original code to be highlighted
        code,

        // Specify language
        // It is recommended to give it a value for performance
        language: 'dart',

        // Specify highlight theme
        // All available themes are listed in `themes` folder
          theme: googlecodeTheme   ,

        // Specify padding
        padding: EdgeInsets.all(12),

        // Specify text style
        textStyle: TextStyle(
          fontFamily: 'My awesome monospace font',
          fontSize: 16,
        ),
        ),
        ],
      ),
    );
  }
}
