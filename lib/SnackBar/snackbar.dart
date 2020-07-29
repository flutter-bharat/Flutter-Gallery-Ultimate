import 'package:flutter/material.dart';

class Snackbar extends StatefulWidget {
  @override
  _SnackbarState createState() => _SnackbarState();
}

class _SnackbarState extends State<Snackbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SnackBar"),
        centerTitle: true,
      ),
      body: SnackBarWidget(),
    );
  }
}

class SnackBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        color: Theme.of(context).primaryColor,
        onPressed: () {
          final snackBar = SnackBar(
            content: Text("Show SnackBar Action"),
            action: SnackBarAction(
                textColor: Colors.white, label: "undo", onPressed: () {}),
            duration: Duration(seconds: 3),
          );
          Scaffold.of(context).showSnackBar(snackBar);
        },
        child: Text(
          "Show SnackBar With Action",
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}
