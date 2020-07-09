import 'package:flutter/material.dart';

class CustomFAB extends StatefulWidget {
  @override
  _CustomFABState createState() => _CustomFABState();
}

class _CustomFABState extends State<CustomFAB> {

  final GlobalKey<ScaffoldState> key= GlobalKey<ScaffoldState>();

 void getSnackbar() {
  key.currentState.showSnackBar(SnackBar(
      content: Text('You just clicked button'),
    duration: Duration(seconds: 1),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: key,
      appBar: AppBar(
        title: Text('Custom FAB'),
      ),
      body: Center(
        child: FloatingActionButton(
          onPressed: () {
            getSnackbar();
          },
          child: Icon(Icons.create),
        ),
      ),
    );
  }
}
