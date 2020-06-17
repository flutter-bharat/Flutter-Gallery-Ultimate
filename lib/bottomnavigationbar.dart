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