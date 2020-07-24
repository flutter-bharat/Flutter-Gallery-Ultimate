import 'package:flutter/material.dart';

class StackListModal extends StatefulWidget {
  @override
  _StackListModalState createState() => _StackListModalState();
}

class _StackListModalState extends State<StackListModal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20)),
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height * 0.26,
                  child: Row(
                    children: [
                      Align(
                        alignment: const Alignment(-1, 0),
                        child: Container(
                            color: Colors.yellow,
                            width: 10.0,
                            height: 100.0,
                            child: OverflowBox(
                              child: Container(
                                child: Row(
                                  children: [
                                    Text('HELLO'),
                                  ],
                                ),
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                              maxHeight: 100,
                              maxWidth: 100,
                            )),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Appbar',
                              style:
                                  TextStyle(fontSize: 24, color: Colors.white),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                           Wrap(
                              children: [
                                Text(
                                  'An app bar consists of a toolbar and potentially other widgets, such as a TabBar and a FlexibleSpaceBar. App bars typically expose one or more common actions with IconButtons which are optionally '
                                  'followed by a PopupMenuButton for less common operations (sometimes called the "overflow menu").',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    ));
  }
}
