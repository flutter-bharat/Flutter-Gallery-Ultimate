import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/Alert/CustomAlert.dart';
import 'package:flutter_gallery_ultimate/Alert/alertcode.dart';
import 'package:flutter_gallery_ultimate/Alert/alertdescription.dart';


class AlertOutput extends StatefulWidget {
  @override
  _AlertOutputState createState() => _AlertOutputState();
}

class _AlertOutputState extends State<AlertOutput> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: PageController(),
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
