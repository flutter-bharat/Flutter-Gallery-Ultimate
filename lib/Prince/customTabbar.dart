import 'package:flutter/material.dart';

class CustomTabbar extends StatefulWidget {
  @override
  _CustomTabbarState createState() => _CustomTabbarState();
}

class _CustomTabbarState extends State<CustomTabbar>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 4 , vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tab Bar Example'),
        bottom: TabBar(
          controller: tabController,
          tabs: [
            Tab(
              icon: Icon(Icons.add),
            ),
            Tab(
              icon: Icon(Icons.mic_none),
            ),
            Tab(
              icon: Icon(Icons.mic_none),
            ),
            Tab(
              icon: Icon(Icons.add),
            ),
          ],
        ),

      ),
      body: TabBarView(children: [
       Container(
         color: Colors.red,
       ),Container(
          color: Colors.green,
        ),
        Container(
          color: Colors.yellow,
        ),
        Container(
          color: Colors.pink,
        ),
      ],
        controller: tabController,

      ),
      drawer: Drawer(),
    );
  }
}
