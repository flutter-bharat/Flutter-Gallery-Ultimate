import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/utils/DataFile.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/googlecode.dart';

class AppBarDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var code;
    Column(
      children: [
        HighlightView(
            code = '''// Flutter code sample for AppBar

// This sample shows an [AppBar] with two simple actions. The first action
// opens a [SnackBar], while the second action navigates to a new page.

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: MyStatelessWidget(),
    );
  }
}

final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
final SnackBar snackBar = const SnackBar(content: Text('Showing Snackbar'));

void openPage(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(
    builder: (BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Next page'),
        ),
        body: const Center(
          child: Text(
            'This is the next page',
            style: TextStyle(fontSize: 24),
          ),
        ),
      );
    },
  ));
}

/// This is the stateless widget that the main application instantiates.
class MyStatelessWidget extends StatelessWidget {
  MyStatelessWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: const Text('AppBar Demo'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_alert),
            tooltip: 'Show Snackbar',
            onPressed: () {
              scaffoldKey.currentState.showSnackBar(snackBar);
            },
          ),
          IconButton(
            icon: const Icon(Icons.navigate_next),
            tooltip: 'Next page',
            onPressed: () {
              openPage(context);
            },
          ),
        ],
      ),
      body: const Center(
        child: Text(
          'This is the home page',
          style: TextStyle(fontSize: 24),
        ),
      ),
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
                    child: Text("AppBar",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold))),
                SizedBox(height: 30.0),
                Container(
                  //    padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    children: [
                      Text('          An app bar consists of a toolbar and potentially other widgets, such as a TabBar and a FlexibleSpaceBar. '
                          'App bars typically expose one or more common actions with IconButtons'
                          ' which are optionally followed by a PopupMenuButton for less common operations (sometimes called '
                          'the "overflow menu").',style: TextStyle(fontSize: 15,),),
                      SizedBox(height: 10.0,),
                      Text('        App bars are typically used in the Scaffold.appBar property, which places the app bar as a fixed-height widget'
                          ' at the top of the screen. For a scrollable app bar, see SliverAppBar, which embeds an AppBar in a sliver for use'
                          ' in a CustomScrollView. When not used as Scaffold.appBar, or when wrapped in a Hero, place the app bar in a'
                          ' MediaQuery to take care of the padding around the content of the app bar if needed, as the padding will not be '
                          'handled by Scaffold. ',style: TextStyle(fontSize: 15),),
                      SizedBox(height: 10.0,),
                      Text('        The AppBar displays the toolbar widgets, leading, title, and actions, above the bottom '
                          '(if any). The bottom is usually used for a TabBar. If a flexibleSpace widget is specified then '
                          'it is stacked behind the toolbar and the bottom widget. The following diagram shows where each of '
                          'these slots appears in the toolbar when the writing language is left-to-right (e.g. English):'
                        ,style: TextStyle(fontSize: 15),),
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
                      Text("Scaffold",style: TextStyle(color: Colors.blue,fontSize: 17),),
                      SizedBox(height: 5.0),
                      Text("which displays the AppBar in its Scaffold.appBar slot.",style: TextStyle(fontSize: 15),),
                      SizedBox(height: 20.0),
                      Text("SilverAppBar",style: TextStyle(color: Colors.blue,fontSize: 17),),
                      SizedBox(height: 5.0),
                      Text("which uses AppBar to provide a flexible app bar that can be used in a CustomScrollView.",style: TextStyle(fontSize: 15),),
                      SizedBox(height: 20.0),
                      Text("TabBar",style: TextStyle(color: Colors.blue,fontSize: 17),),
                      SizedBox(height: 5.0),
                      Text(" which is typically placed in the bottom slot of the AppBar if the screen has multiple pages arranged in tabs.",style: TextStyle(fontSize: 15),),
                      SizedBox(height: 20.0),
                      Text("IconButton",style: TextStyle(color: Colors.blue,fontSize: 17),),
                      SizedBox(height: 5.0),
                      Text("which is used with actions to show buttons on the app bar.",style: TextStyle(fontSize: 15),),
                      SizedBox(height: 20.0),
                      Text("PopupMenyButton",style: TextStyle(color: Colors.blue,fontSize: 17),),
                      SizedBox(height: 5.0),
                      Text("to show a popup menu on the app bar, via actions.",style: TextStyle(fontSize: 15),),
                      SizedBox(height: 20.0),
                      Text("FlexibalSpaceBar",style: TextStyle(color: Colors.blue,fontSize: 17),),
                      SizedBox(height: 5.0),
                      Text(" which is used with flexibleSpace when the app bar can expand and collapse.",style: TextStyle(fontSize: 15),),
                      SizedBox(height: 20.0),
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
