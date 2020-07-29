import 'package:flutter/material.dart';

class BottomSheetWidget extends StatefulWidget {
  @override
  _BottomSheetWidgetState createState() => _BottomSheetWidgetState();
}

class _BottomSheetWidgetState extends State<BottomSheetWidget> {
  List list = ['Option A', 'Option B', 'Option C', 'Option D'];
  var bottomSheetController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BottomSheet"),
        centerTitle: true,
      ),
      body: Center(
        child: FlatButton(
            child: Text("Show Bottom Sheet"),
            onPressed: () {
              _openShowModal();
            }),
      ),
    );
  }

  Future _openShowModal() async {
    final option = await showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            color: Colors.grey,
            height: 300,
            child: ListView(
                children: List.generate(4, (index) {
              return ListTile(
                title: Text(
                  list[index],
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                onTap: () {
                  Navigator.pop(context, list[index]);
                },
              );
            })),
          );
        });
  }
}
