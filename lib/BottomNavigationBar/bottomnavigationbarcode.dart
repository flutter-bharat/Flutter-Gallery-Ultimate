import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/utils/DataFile.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/googlecode.dart';



class BottomNavigationBarCode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    var code = '''
  import 'package:flutter/material.dart';

class BottomNavigationbar extends StatefulWidget {
  @override
  _BottomNavigationbarState createState() => _BottomNavigationbarState();
}

class _BottomNavigationbarState extends State<BottomNavigationbar> {

  static const TextStyle textStyle = TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.grey);

  int _selectIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0 :  Home',
      style: textStyle, 
    ),
    Text(
      'Index 1 : Search',
      style: textStyle,  
    ),
    Text(
      'Index 2 : Photo',
      style: textStyle,
    ),
    Text(
      'Index 3 : Favorite',
      style: textStyle,
    ),
    Text(
      'Index 4 : Profile',
      style: textStyle,
    ),
  ];

  void _OnTap(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BottomNavigationBar'),
        centerTitle: true,
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(

        items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text("Home")),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          title: Text("Search")),
        BottomNavigationBarItem(
          icon: Icon(Icons.add_a_photo),
          title: Text("Photo")),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite_border),
          title: Text("Favorite")),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle),
          title: Text("Profile")),      
      ],
      currentIndex: _selectIndex,
      selectedItemColor: Colors.black,
      onTap: _OnTap,
      unselectedItemColor: Colors.grey,
      selectedFontSize: 20,
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
