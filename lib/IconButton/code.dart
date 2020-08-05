import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/utils/DataFile.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/googlecode.dart';



class IconButtonCode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    var code = '''
import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  GlobalKey<ScaffoldState> key = GlobalKey<ScaffoldState>();
  void showSnackbar() {
    key.currentState.showSnackBar(SnackBar(
      content: Text('You just pressed Button'),
      duration: Duration(seconds: 1),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: key,
      appBar: AppBar(
        title: Text('Custom Icon Button'),
      ),
      body: Center(
        child: FlatButton.icon(
            onPressed: showSnackbar,
            icon: Icon(Icons.edit),
            label: Text('Edit')),
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
