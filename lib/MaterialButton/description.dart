import 'package:flutter/material.dart';

class MaterialButtonDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Description"),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("MaterialButton Widget"),
        ],
      ),
    );
  }
}
