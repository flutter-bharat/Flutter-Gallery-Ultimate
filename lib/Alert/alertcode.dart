import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/googlecode.dart';



class AlertCode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    var code = '''
 import 'package:flutter/material.dart';

class CustomAlert extends StatelessWidget {
  Future<bool> showAlert(BuildContext context) async {
    return showDialog(
      barrierDismissible: false,
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(
              'This is a alert box example',
              style: TextStyle(fontWeight: FontWeight.w400),
            ),
            actions: [
              FlatButton(
                  onPressed: () {
                    Navigator.pop(context);
                    print('Got it!');
                  },
                  child: Text('Got it!')),
              FlatButton(
                  onPressed: () {
                    Navigator.pop(context);
                    print('Not Yet');
                  },
                  child: Text('Not yet!'))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Alert'),
      ),
      body: Center(
        child: FlatButton(
            onPressed: () => showAlert(context), child: Text('Show Dialog')),
      ),
    );
  }
}

    ''';


    return Scaffold(
      appBar: AppBar(
        title: Text("Code"),
        centerTitle: true,
      ),
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
