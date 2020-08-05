import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/utils/DataFile.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/googlecode.dart';



class SpacerCode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    var code = '''
import 'package:flutter/material.dart';

class CustomSpacer extends StatefulWidget {
  @override
  _CustomSpacerState createState() => _CustomSpacerState();
}

class _CustomSpacerState extends State<CustomSpacer> {

  double height= 50.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Spacer'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [

            Spacer(),
            Text('There is a spacer above me'),
            Text('Scroll to increase the height of SizedBox below me', textAlign: TextAlign.center,),
            Slider(
              label: "",
                min: 50,
                max: 300,
                value: height, onChanged: (val){
              setState(() {
                height= val;
              });
            }),
            SizedBox(
              height: height,
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
