import 'package:flutter/material.dart';

class CustomFlatButton extends StatelessWidget {

  GlobalKey<ScaffoldState> key= GlobalKey<ScaffoldState>();

  void showSnackbar(){
    key.currentState.showSnackBar(SnackBar(content: Text('You just clicked button'),
    duration: Duration(seconds: 1),));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: key,
      appBar: AppBar(
        title: Text('Custom Flat Button'),
      ),
      body: Center(
        child: FlatButton(onPressed: (){
          showSnackbar();
        }, child: Text('Flat Button'),
        color: Colors.blue,
          textColor: Colors.white,
        ),

      ),
    );
  }
}
