import 'package:flutter/material.dart';

class CustomSnackBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Snackbar'),
      ),
      body: Center(
        child: Builder(builder: (context) {
          return MaterialButton(
            onPressed: () {
              Scaffold.of(context).showSnackBar(SnackBar(
                content: Text('This is a snackbar'),
                duration: Duration(seconds: 2),
              ));
            },
            child: Text('Show Snackbar'),
          );
        }),
      ),
    );
  }
}
