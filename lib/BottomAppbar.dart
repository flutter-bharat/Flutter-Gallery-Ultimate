import 'package:flutter/material.dart';

class CustomBottomAppBar extends StatefulWidget {
  @override
  _CustomBottomAppBarState createState() => _CustomBottomAppBarState();
}

class _CustomBottomAppBarState extends State<CustomBottomAppBar> {
  expandAppbar() {
    return ExpansionTile(
        title: Text(
          "Title",
          style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
        ),
        children: <Widget>[
          ExpansionTile(
            title: Text(
              'Sub title',
            ),
            children: <Widget>[
              ListTile(
                title: Text('data'),
              )
            ],
          )
        ]);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: const Text('Bottom App Bar'),
        leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              expandAppbar();
            }),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                expandAppbar();
              },
            ),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
