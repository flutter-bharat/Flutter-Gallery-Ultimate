import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListModal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(18)),
              height: MediaQuery.of(context).size.height * 0.3,
              child: Row(
                children: [
                  SizedBox(
                    height:100,
                    width: 100,
                    child: Align(
                      alignment: Alignment.center,
                      child: OverflowBox(
                        minWidth: 0.0,
                        maxWidth: 40.0,
                        minHeight: 0.0,
                        maxHeight: 30.0,
                        child: Container(
                          color: Colors.white,
                          width: MediaQuery.of(context).size.width * 0.2,
                          height: MediaQuery.of(context).size.height,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
