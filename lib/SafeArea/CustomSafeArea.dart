import 'package:flutter/material.dart';

class CustomSafeArea extends StatefulWidget {
  @override
  _CustomSafeAreaState createState() => _CustomSafeAreaState();
}

class _CustomSafeAreaState extends State<CustomSafeArea> {

  bool showSafe= false;
  GlobalKey<ScaffoldState> key= GlobalKey<ScaffoldState>();
  void showSnackbar(String text){
    key.currentState.showSnackBar(SnackBar(content: Text(text), duration: Duration(milliseconds: 500),));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: key,
      body: showSafe? Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SafeArea(
              child: Text('Safe Area saves the content of your app from intrusions of the operating system by prodiving required padding', textAlign: TextAlign.center,)),
         SizedBox(
           height: 350,
         ),
          Text('Toggle Safe Area State'),
          Switch(value: showSafe,
            onChanged: (val){
            showSnackbar('Safe Area is removed');
              setState(() {
                showSafe= val;
              });
            },
          )
        ],
      ):Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        Text('Safe Area saves the content of your app from intrusions of the operating system by prodiving required padding', textAlign: TextAlign.center,),
          SizedBox(
            height: 350,
          ),
          Text('Toggle Safe Area State'),
          Switch(value: showSafe,
          onChanged: (val){
            showSnackbar('Safe Area is applied');
            setState(() {
              showSafe= val;
            });
          },
          )
        ],
      ),
    );
  }
}
