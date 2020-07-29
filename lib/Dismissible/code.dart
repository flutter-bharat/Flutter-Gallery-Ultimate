import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/utils/DataFile.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/googlecode.dart';



class DismissibleCode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    var code = '''
import 'package:flutter/material.dart';

class CustomDismissible extends StatelessWidget {

  List<String> items= List<String>.generate(30, (index) => 'Item no');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Dismissible'),
      ),
      body: ListView.builder(
    itemCount: items.length,
    itemBuilder: (context, index){
      return Dismissible(key: Key(items[index]), child: ListTile(
        title: Text('Item no '),
      ),
        background: Container(
          color: Colors.red,
        ),
        onDismissed: (val){
          items.removeAt(index);
          Scaffold.of(context).showSnackBar(SnackBar(content: Text('Item No got removed' ), duration: Duration(milliseconds: 500),),);
        },
      );
    },
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
