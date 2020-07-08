import 'package:flutter/material.dart';

class CustomMaterialButton extends StatelessWidget {

  GlobalKey<ScaffoldState> key = GlobalKey<ScaffoldState>();
  void showSnackbar(){
    key.currentState.showSnackBar(SnackBar(content: Text('You just pressed Button')));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: key,
      appBar: AppBar(
        title: Text('Custom Material Button'),
      ),
      body: Center(
        child: MaterialButton(onPressed: (){
          showSnackbar();
        },

        child: Text('Material Button'),),
      )
    );
  }
}
