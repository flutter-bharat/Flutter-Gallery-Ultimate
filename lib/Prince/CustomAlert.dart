import 'package:flutter/material.dart';

class CustomAlert extends StatelessWidget {
  Future<bool> showAlert(BuildContext context) async {
    return showDialog(
      barrierDismissible: false,
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(
              'This is a alert box example',
              style: TextStyle(fontWeight: FontWeight.w400),
            ),
            actions: [
              FlatButton(
                  onPressed: () {
                    Navigator.pop(context);
                    print('Got it!');
                  },
                  child: Text('Got it!')),
              FlatButton(
                  onPressed: () {
                    Navigator.pop(context);
                    print('Not Yet');
                  },
                  child: Text('Not yet!'))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Alert'),
      ),
      body: Center(
        child: FlatButton(
            onPressed: () => showAlert(context), child: Text('Show Dialog')),
      ),
    );
  }
}
