import 'package:flutter/material.dart';

class CustomStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Stack'),
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              color: Colors.red,
              height: 300,
              width: MediaQuery.of(context).size.width * 1,
            ),
            Container(
              color: Colors.yellow,
              height: 150,
              width: MediaQuery.of(context).size.width * 0.9,
            ),
            Container(
              color: Colors.green,
              width: MediaQuery.of(context).size.width * 0.8,
              height: 76,
            ),
            Container(
              color: Colors.orange,
              width: MediaQuery.of(context).size.width * 0.7,
              height: 38,
            )
          ],
        ),
      ),
    );
  }
}
