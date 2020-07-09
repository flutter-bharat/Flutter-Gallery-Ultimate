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
