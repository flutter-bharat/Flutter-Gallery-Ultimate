import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  GlobalKey<ScaffoldState> key = GlobalKey<ScaffoldState>();
  void showSnackbar() {
    key.currentState.showSnackBar(SnackBar(
      content: Text('You just pressed Button'),
      duration: Duration(seconds: 1),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: key,
      appBar: AppBar(
        title: Text('Custom Icon Button'),
      ),
      body: Center(
        child: FlatButton.icon(
            onPressed: showSnackbar,
            icon: Icon(Icons.edit),
            label: Text('Edit')),
      ),
    );
  }
}
