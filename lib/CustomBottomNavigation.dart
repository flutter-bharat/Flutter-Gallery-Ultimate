import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatefulWidget {
  @override
  _CustomBottomNavigationState createState() => _CustomBottomNavigationState();
}

class _CustomBottomNavigationState extends State<CustomBottomNavigation>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  int cIndex = 1;

  final tabs = [
    Center(
      child: Text('Home Screen'),
    ),
    Center(
      child: Text('HD Screen'),
    ),
    Center(
      child: Text('Search Screen'),
    ),
    Center(
      child: Text('Setting Screen'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Navigation Bar'),
      ),
      body: tabs[cIndex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: (val) {
            setState(() {
              cIndex = val;
            });
          },
          selectedItemColor: Colors.black,
          currentIndex: cIndex,
          elevation: 50,
          showSelectedLabels: true,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
              backgroundColor: Colors.red,
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.hd),
                title: Text('Home'),
                backgroundColor: Colors.orange),
            BottomNavigationBarItem(
                icon: Icon(Icons.youtube_searched_for),
                title: Text('Home'),
                backgroundColor: Colors.green),
            BottomNavigationBarItem(
              backgroundColor: Colors.purple,
              icon: Icon(Icons.settings),
              title: Text('Home'),
            ),
          ]),
    );
  }
}
