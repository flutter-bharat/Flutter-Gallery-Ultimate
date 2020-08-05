import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/utils/DataFile.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/googlecode.dart';

class IconButtonDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var code;
    Column(
      children: [
        HighlightView(
            code = '''// Flutter code sample for IconButton

// This sample shows an `IconButton` that uses the Material icon "volume_up" to
// increase the volume.
//
// ![](https://flutter.github.io/assets-for-api-docs/assets/material/icon_button.png)

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: Center(
          child: MyStatefulWidget(),
        ),
      ),
    );
  }
}

double _volume = 0.0;

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.volume_up),
          tooltip: 'Increase volume by 10',
          onPressed: () {
            setState(() {
              _volume += 10;
            });
          },
        ),
        Text('Volume : +  _volume +')
      ],
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
                    child: Text("Icon Button",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold))),
                SizedBox(height: 30.0),
                Container(
                  //    padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    children: [
                      Text("           An icon button is a picture printed on a Material widget that reacts to touches by filling "
                          "with color (ink).",style: TextStyle(fontSize: 15,),),
                      SizedBox(height: 10.0,),
                      Text("           Icon buttons are commonly used in the AppBar.actions field, but they can be used in many "
                          "other places as well.",style: TextStyle(fontSize: 15),),
                      SizedBox(height: 10.0,),
                      Text("          If the onPressed callback is null, then the button will be disabled and will not react to touch."
                          "Requires one of its ancestors to be a Material widget.",style: TextStyle(fontSize: 15),),
                      SizedBox(height: 10.0,),
                      Text("           The hit region of an icon button will, if possible, be at least kMinInteractiveDimension pixels in size, regardless of the actual iconSize, to satisfy the touch target size requirements "
                          "in the Material Design specification. The alignment controls how the icon itself is positioned within "
                          "the hit region.",style: TextStyle(fontSize: 15),),
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
                        Container(
                          height: 150,
                          width: 100,
                          padding: EdgeInsets.all(20),
                          decoration: new BoxDecoration(
                            image: new DecorationImage(
                              image: AssetImage("assets/iconbutton.png"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
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
                      Text("Icons",style: TextStyle(color: Colors.blue,fontSize: 17),),
                      SizedBox(height: 5.0),
                      Text(" A library of predefined icons.",style: TextStyle(fontSize: 15),),
                      SizedBox(height: 20.0),
                      Text("BackButton",style: TextStyle(color: Colors.blue,fontSize: 17),),
                      SizedBox(height: 5.0),
                      Text("An icon button for a 'back' affordance which adapts to the current platform's conventions.",style: TextStyle(fontSize: 15),),
                      SizedBox(height: 20.0),
                      Text("CloseButton",style: TextStyle(color: Colors.blue,fontSize: 17),),
                      SizedBox(height: 5.0),
                      Text("An icon button for closing pages.",style: TextStyle(fontSize: 15),),
                      SizedBox(height: 20.0),
                      Text("AppBar",style: TextStyle(color: Colors.blue,fontSize: 17),),
                      SizedBox(height: 5.0),
                      Text("To show a toolbar at the top of an application.",style: TextStyle(fontSize: 15),),
                      SizedBox(height: 20.0),
                      Text("RaisedButton",style: TextStyle(color: Colors.blue,fontSize: 17),),
                      SizedBox(height: 5.0),
                      Text("For buttons with text in them.",style: TextStyle(fontSize: 15),),
                      SizedBox(height: 20.0),
                      Text("InkResponse",style: TextStyle(color: Colors.blue,fontSize: 17),),
                      SizedBox(height: 5.0),
                      Text("For the ink splash effect itself.",style: TextStyle(fontSize: 15),),
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
