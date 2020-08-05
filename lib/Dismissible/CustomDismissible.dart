import 'package:flutter/material.dart';

class CustomDismissible extends StatelessWidget {

  List<String> items= List<String>.generate(6, (index) => 'Item no$index');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Dismissible'),
      ),
      body: ListView.builder(
    itemCount: items.length,
    itemBuilder: (context, index){
      return Dismissible(key: Key(items[index]), child: ListTile(
        title: Text('Item no $index'),
      ),
        background: Container(
          color: Colors.red,
        ),
        onDismissed: (val){
          items.removeAt(index);
          Scaffold.of(context).showSnackBar(SnackBar(content: Text('Item No$index got removed' ), duration: Duration(milliseconds: 500),),);
        },
      );
    },
      ),
    );
  }
}
