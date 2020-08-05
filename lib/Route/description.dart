import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/utils/DataFile.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/googlecode.dart';

class RouteDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var code;
    Column(
      children: [
        HighlightView(
            code = '''Future<void> _showMyDialog() async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('AlertDialog Title'),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text('This is a demo alert dialog.'),
              Text('Would you like to approve of this message?'),
            ],
          ),
        ),
        actions: <Widget>[
          FlatButton(
            child: Text('Approve'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
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
                    child: Text("Alert Widget",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold))),
                SizedBox(height: 30.0),
                Container(
                  //    padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    children: [
                      Text("           An alert dialog informs the user about situations that require acknowledgement. An alert dialog has an "
                          "optional title and an optional list of actions. The title is displayed above the content and the actions are "
                          "displayed below the content.",style: TextStyle(fontSize: 15,),),
                      SizedBox(height: 10.0,),
                      Text("           If the content is too large to fit on the screen vertically, the dialog will "
                          "display the title and` the actions and let the content overflow, which is rarely desired. Consider using"
                          " a scrolling widget for content, such as SingleChildScrollView,  to avoid overflow. (However, be aware that "
                          "since AlertDialog tries to size itself using the intrinsic dimensions of its children, widgets such as "
                          "ListView, GridView,and CustomScrollView, which use lazy viewports, will not work. If this is a problem, "
                          "consider using Dialog directly.)",style: TextStyle(fontSize: 15),),
                    ],
                  ),
                ),
                SizedBox(height: 30.0),
                Text("Demo Code",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold)),
                SizedBox(height: 20.0),
                Container(
                  height: 400,
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
                      Text("SimpleDialog",style: TextStyle(color: Colors.blue,fontSize: 17),),
                      SizedBox(height: 5.0),
                      Text("which handles the scrolling of the contents but has no actions.",style: TextStyle(fontSize: 15),),
                      SizedBox(height: 20.0),
                      Text("Dialog",style: TextStyle(color: Colors.blue,fontSize: 17),),
                      SizedBox(height: 5.0),
                      Text("on which AlertDialog and SimpleDialog are based.",style: TextStyle(fontSize: 15),),
                      SizedBox(height: 20.0),
                      Text("CupertinoAlertDialog",style: TextStyle(color: Colors.blue,fontSize: 17),),
                      SizedBox(height: 5.0),
                      Text("an iOS-styled alert dialog.",style: TextStyle(fontSize: 15),),
                      SizedBox(height: 20.0),
                      Text("ShowDialog",style: TextStyle(color: Colors.blue,fontSize: 17),),
                      SizedBox(height: 5.0),
                      Text("which actually displays the dialog and returns its result.",style: TextStyle(fontSize: 15),),
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
