import 'package:flutter/material.dart';

class CustomWrap extends StatefulWidget {
  @override
  _CustomWrapState createState() => _CustomWrapState();
}

class _CustomWrapState extends State<CustomWrap> {
  GlobalKey<ScaffoldState> key = GlobalKey<ScaffoldState>();

  showSnackbar(String text) {
    key.currentState.showSnackBar(SnackBar(
      content: Text(text),
      duration: Duration(milliseconds: 500),
    ));
  }

  bool showWrap = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: key,
        appBar: AppBar(
          title: Text('Custom Wrap'),
        ),
        body: showWrap
            ? Column(
                children: [
                  Center(
                      child: Wrap(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        color: Colors.red,
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        color: Colors.green,
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        color: Colors.blue,
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        color: Colors.yellow,
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        color: Colors.brown,
                      ),
                    ],
                  )),
                  SizedBox(
                    height: 200,
                  ),
                  Switch(
                      value: showWrap,
                      onChanged: (val) {
                        showSnackbar('You have disabled the Wrap');
                        setState(() {
                          showWrap = val;
                        });
                      })
                ],
              )
            : Column(
                children: [
                  Center(
                      child: Row(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        color: Colors.red,
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        color: Colors.green,
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        color: Colors.blue,
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        color: Colors.yellow,
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        color: Colors.brown,
                      ),
                    ],
                  )),
                  SizedBox(
                    height: 200,
                  ),
                  Switch(
                      value: showWrap,
                      onChanged: (val) {
                        showSnackbar('You have enabled the Wrap');
                        setState(() {
                          showWrap = val;
                        });
                      })
                ],
              ));
  }
}
