import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/utils/DataFile.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/googlecode.dart';

class ToolTipDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var code;
    Column(
      children: [
        HighlightView(
            code = '''class TooltipText extends StatelessWidget {
  final String text;
  final String tooltip;

  TooltipText({Key key, this.tooltip, this.text});

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: tooltip,
      child: Text(text),
    );
  }
}
      '''
        ),
      ],
    );

    return Scaffold(
      appBar: customizedAppBar("Description"),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all( 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  //   padding: EdgeInsets.symmetric(horizontal: 50.0),
                    child: Text("Tooltip",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold))),
                SizedBox(height: 30.0),
                Container(
                  //    padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    children: [
                      Text("           A material design tooltip. Tooltips provide text labels that help explain the"
                          " function of a button or other user interface action. Wrap the button in a Tooltip widget to show "
                          "a label when the widget long pressed (or when the user takes some other appropriate "
                          "action).",style: TextStyle(fontSize: 15,),),
                      SizedBox(height: 10.0,),
                      Text("          Many widgets, such as IconButton, FloatingActionButton, and PopupMenuButton have a "
                          "tooltip property that, when non-null, causes the widget to include a Tooltip in "
                          "its build.",style: TextStyle(fontSize: 15),),
                      SizedBox(height: 10.0,),
                      Text("          Tooltips improve the accessibility of visual widgets by proving a textual representation"
                          " of the widget, which, for example, can be vocalized by a screen reader..",style: TextStyle(fontSize: 15),),
                    ],
                  ),
                ),
                SizedBox(height: 30.0),
                Text("Demo Code",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold)),
                SizedBox(height: 20.0),
                Container(
                  height: 300,
                  width: 370,
                  child: Card(
                    shadowColor: Colors.grey,
                    elevation: 15,
                    child: ListView(
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
                  ),
                ),
                SizedBox(height: 40.0),
                Text("Related Widgets",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
                SizedBox(height: 20.0),
                Container(
                  //   padding: EdgeInsets.symmetric(horizontal: 15.0,vertical: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("TootipTheme or ThemeData.tooltipTheme",style: TextStyle(color: Colors.blue,fontSize: 17),),
                      SizedBox(height: 5.0),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
