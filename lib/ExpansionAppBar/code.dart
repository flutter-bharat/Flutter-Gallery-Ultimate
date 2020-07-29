import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/utils/DataFile.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/googlecode.dart';



class ExpansionAppBarCode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    var code = '''
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomMainAppbar extends StatefulWidget {
  @override
  _CustomMainAppbarState createState() => _CustomMainAppbarState();
}

double height = 0.0;

class _CustomMainAppbarState extends State<CustomMainAppbar>
    with TickerProviderStateMixin {
  TabController tabController;
  AnimationController controller;
  Animation<Offset> offset;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
    controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 150));
    offset = Tween<Offset>(begin: Offset.zero, end: Offset(0.0, 0.6))
        .animate(controller);
  }

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    List items = [
      Stack(
        fit: StackFit.expand,
        children: [
          Container(
            child: Text("this is settings"),
          ),
          SlideTransition(
            position: offset,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
            ),
          ),
        ],
      ),
      Container(
        color: Colors.blue,
      ),
    ];
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            switch (controller.status) {
              case AnimationStatus.completed:
                controller.reverse();
                break;
              case AnimationStatus.dismissed:
                controller.forward();
                break;
              default:
            }
          },
        ),
      ),
      body: items[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.widgets), title: Container()),
          BottomNavigationBarItem(
              icon: Icon(Icons.view_carousel), title: Container())
        ],
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
