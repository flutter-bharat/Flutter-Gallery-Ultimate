import 'package:flutter/material.dart';

class CustomList extends StatefulWidget {
  @override
  _CustomListState createState() => _CustomListState();
}

class _CustomListState extends State<CustomList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Example'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index){
          return ListTile(
            title: Text('Heading of list item'),
            subtitle: Text('Sub- Heading of the list item'),
            leading: Icon(Icons.label_important,
            color: Colors.blue,),
          );
        },
      ),
    );
  }
}
