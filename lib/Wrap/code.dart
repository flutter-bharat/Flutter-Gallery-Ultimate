import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/utils/DataFile.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/googlecode.dart';



class WrapCode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    var code = '''
import 'package:flutter/material.dart';

class CustomWrap extends StatefulWidget {
  @override
  _CustomWrapState createState() => _CustomWrapState();
}

class _CustomWrapState extends State<CustomWrap> {
  GlobalKey<ScaffoldState> key = GlobalKey<ScaffoldState>();

  showSnackbar(String text) {
    key.currentState.showSnackBar(SnackBar(
      content: Text(text),
      duration: Duration(milliseconds: 500),
    ));
  }

  bool showWrap = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: key,
        appBar: AppBar(
          title: Text('Custom Wrap'),
        ),
        body: showWrap
            ? Column(
                children: [
                  Center(
                      child: Wrap(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        color: Colors.red,
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        color: Colors.green,
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        color: Colors.blue,
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        color: Colors.yellow,
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        color: Colors.brown,
                      ),
                    ],
                  )),
                  SizedBox(
                    height: 200,
                  ),
                  Switch(
                      value: showWrap,
                      onChanged: (val) {
                        showSnackbar('You have disabled the Wrap');
                        setState(() {
                          showWrap = val;
                        });
                      })
                ],
              )
            : Column(
                children: [
                  Center(
                      child: Row(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        color: Colors.red,
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        color: Colors.green,
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        color: Colors.blue,
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        color: Colors.yellow,
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        color: Colors.brown,
                      ),
                    ],
                  )),
                  SizedBox(
                    height: 200,
                  ),
                  Switch(
                      value: showWrap,
                      onChanged: (val) {
                        showSnackbar('You have enabled the Wrap');
                        setState(() {
                          showWrap = val;
                        });
                      })
                ],
              ));
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
