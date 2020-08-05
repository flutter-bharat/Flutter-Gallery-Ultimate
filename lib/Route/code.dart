import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/utils/DataFile.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/googlecode.dart';



class RouteCode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    var code = '''
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
   static const TextStyle textStyle = TextStyle(fontSize: 30,fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PageRoute")
      ),
      body:
       Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
          Text("First Screen",style: textStyle,),
          SizedBox(height:10.0),
          RaisedButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (BuildContext)=> SecondScreen())),
          child: Text("Second Screen",style: TextStyle(fontSize: 18))),
        ],
        ), 
      ),  
    );
  }
}

class SecondScreen extends StatelessWidget {
   static const TextStyle textStyle = TextStyle(fontSize: 30,fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
        centerTitle: true,
      ),
      body: Center(
        child: Text("Second Screen",style: textStyle),
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
