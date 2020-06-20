import 'package:flutter/material.dart';

class DividerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Divider"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          ListTile(
            title: Text("Item: 1"),
          ),
          Divider(),
          ListTile(
            title: Text("Item: 2"),
          ),
          Divider(),
          ListTile(
            title: Text("Item: 3"),
          ),
          Divider(),
          ListTile(
            title: Text("Divider height range"),
          ),
          Divider(height: 60),
          ListTile(
            title: Text("Divider left space indent"),
          ),
          Divider(indent: 100,color: Colors.grey),
          ListTile(
            title: Text("Divider Color"),
          ),
          Divider(color: Colors.red),
        ],
      )
    );
  }
}
