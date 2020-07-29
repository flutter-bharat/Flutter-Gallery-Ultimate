import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/utils/DataFile.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/googlecode.dart';



class SnackBarCode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    var code = '''
import 'package:flutter/material.dart';

class Snackbar extends StatefulWidget {
  @override
  _SnackbarState createState() => _SnackbarState();
}

class _SnackbarState extends State<Snackbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SnackBar"),
        centerTitle: true,
      ),
      body:SnackBarWidget(),
    );
  }
}

class SnackBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 300),
          child: Center(
          child: RaisedButton(
            color: Colors.red,
            onPressed: ()  {
             final snackBar = SnackBar(
              content: Text("Show SnackBar Action"),
              backgroundColor: Colors.blue,
              action: SnackBarAction(
                textColor: Colors.white,
                label: "undo", 
                onPressed: (){}),
                duration: Duration(seconds: 3),
            );
            Scaffold.of(context).showSnackBar(snackBar);
          },
          child: Text("Show SnackBar With Action",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
          ),
          ),
        ),
      ],
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
