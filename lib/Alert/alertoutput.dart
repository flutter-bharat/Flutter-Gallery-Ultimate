import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/Alert/CustomAlert.dart';
import 'package:flutter_gallery_ultimate/Alert/alertcode.dart';
import 'package:flutter_gallery_ultimate/Alert/alertdescription.dart';


class AlertOutput extends StatefulWidget {
  @override
  _AlertOutputState createState() => _AlertOutputState();
}

class _AlertOutputState extends State<AlertOutput> {
  PageController _controller  = PageController(initialPage: 1);


//  void dispose() {
//    _controller.dispose();
//    super.dispose();
//  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        scrollDirection: Axis.horizontal,
        children: [
          AlertDescription(),
          CustomAlert(),
          AlertCode(),
        ],
      ),
    );
  }
}
