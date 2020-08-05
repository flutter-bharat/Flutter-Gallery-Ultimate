import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/utils/DataFile.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/googlecode.dart';



class SafeAreaCode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    var code = '''
import 'package:flutter/material.dart';

class CustomSafeArea extends StatefulWidget {
  @override
  _CustomSafeAreaState createState() => _CustomSafeAreaState();
}

class _CustomSafeAreaState extends State<CustomSafeArea> {

  bool showSafe= false;
  GlobalKey<ScaffoldState> key= GlobalKey<ScaffoldState>();
  void showSnackbar(String text){
    key.currentState.showSnackBar(SnackBar(content: Text(text), duration: Duration(milliseconds: 500),));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: key,
      body: showSafe? Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SafeArea(
              child: Text('Safe Area saves the content of your app from intrusions of the operating system by prodiving required padding', textAlign: TextAlign.center,)),
         SizedBox(
           height: 350,
         ),
          Text('Toggle Safe Area State'),
          Switch(value: showSafe,
            onChanged: (val){
            showSnackbar('Safe Area is removed');
              setState(() {
                showSafe= val;
              });
            },
          )
        ],
      ):Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        Text('Safe Area saves the content of your app from intrusions of the operating system by prodiving required padding', textAlign: TextAlign.center,),
          SizedBox(
            height: 350,
          ),
          Text('Toggle Safe Area State'),
          Switch(value: showSafe,
          onChanged: (val){
            showSnackbar('Safe Area is applied');
            setState(() {
              showSafe= val;
            });
          },
          )
        ],
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
