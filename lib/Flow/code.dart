import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/utils/DataFile.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/googlecode.dart';



class FlowCode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    var code = '''
import 'package:flutter/material.dart';

class FlowWidget extends StatefulWidget {
  @override
  _FlowWidgetState createState() => _FlowWidgetState();
}

class _FlowWidgetState extends State<FlowWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flow"),
        centerTitle: true,
      ),
      body: FlowMenu(),
    );
  }
}

class FlowMenu extends StatefulWidget {
  @override
  _FlowMenuState createState() => _FlowMenuState();
}

class _FlowMenuState extends State<FlowMenu> with SingleTickerProviderStateMixin{
  AnimationController menuAnimation;
  IconData lastTapped = Icons.notifications;
  final List<IconData> menuItem = <IconData>[
    Icons.home,
    Icons.settings,
    Icons.new_releases,
    Icons.notifications,
    Icons.menu,
  ];

  void _updateMenu(IconData icon) {
    if(icon != Icons.menu)
    {
      setState(() {
        lastTapped = icon;
      });
    }
  }
  @override
  void initState(){
    super.initState();
    menuAnimation = AnimationController(
      duration: Duration(microseconds: 250),
      vsync: this,
      );
  }

  Widget FlowMenuItem(IconData icon){
    final double  buttondiameter = MediaQuery.of(context).size.width / menuItem.length;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: RawMaterialButton(
        fillColor: lastTapped == icon ? Colors.green : Colors.blue,
        splashColor: Colors.amber,
        shape: CircleBorder(),
        constraints: BoxConstraints.tight(Size(buttondiameter, buttondiameter)),
        onPressed: (){
          _updateMenu(icon);
          menuAnimation.status == AnimationStatus.completed ? menuAnimation.reverse() : menuAnimation.forward();
        },
        child: Icon(
          icon,
          color: Colors.white,
          size: 45.0,
          ),
        ),
    );
  }
  Widget build(BuildContext context) {
    return Container(
      child: Flow(
        delegate: FlowMenuDelegate(menuAnimation: menuAnimation),
        children:  menuItem.map<Widget>((IconData icon) => FlowMenuItem(icon)).toList(),
      ),
    );
  }
}

class FlowMenuDelegate extends FlowDelegate {

  FlowMenuDelegate({this.menuAnimation}) : super (repaint: menuAnimation);

  final Animation<double> menuAnimation;

  bool shouldRepaint(FlowMenuDelegate oldDelegate){
    return menuAnimation != oldDelegate.menuAnimation;
  }

  @override
  void paintChildren(FlowPaintingContext context){
    double dx = 0.0;
    for(int i= 0 ; i< context.childCount; i++){
      dx = context.getChildSize(i).width*i;
      context.paintChild(
        i,
        transform: Matrix4.translationValues(
          dx * menuAnimation.value,
          0,
          0,
        ),
        );
    }
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
