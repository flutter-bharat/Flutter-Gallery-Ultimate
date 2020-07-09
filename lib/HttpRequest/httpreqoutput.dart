import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/HttpRequest/code.dart';
import 'package:flutter_gallery_ultimate/HttpRequest/description.dart';
import 'package:flutter_gallery_ultimate/HttpRequest/httpreq.dart';


class HttpRequestOutput extends StatefulWidget {
  @override
  _HttpRequestOutputState createState() => _HttpRequestOutputState();
}

class _HttpRequestOutputState extends State<HttpRequestOutput> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: PageController(),
        scrollDirection: Axis.horizontal,
        children: [
          HttpRequestDescription(),
          HttpScreen(),
          HttpRequestCode(),
        ],
      ),
    );
  }
}
