import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/utils/DataFile.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/googlecode.dart';



class GridViewCode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    var code = '''
import 'package:flutter/material.dart';

class GridViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView"),
        centerTitle: true,
      ),
      body:Container(
        child: GridView.count(
            crossAxisCount: 3,
            crossAxisSpacing: 8,
            padding: EdgeInsets.all(8),
            childAspectRatio: 1,
            mainAxisSpacing: 8,
          children: generateGrid(),
        ),
      ),
    );
  }
}

generateGrid(){
  return List.generate(21, (index)  {
    return Container(
      color: Colors.blueAccent,
      child: Center(child: Text('')),
  );
});
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
