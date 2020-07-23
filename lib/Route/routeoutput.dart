import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/Route/code.dart';
import 'package:flutter_gallery_ultimate/Route/description.dart';
import 'package:flutter_gallery_ultimate/Route/route.dart';



class RouteOutput extends StatefulWidget {
  @override
  _RouteOutputState createState() => _RouteOutputState();
}

class _RouteOutputState extends State<RouteOutput> {
  PageController _controller  = PageController(initialPage: 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        scrollDirection: Axis.horizontal,
        children: [
          RouteDescription(),
          FirstScreen(),
          RouteCode(),
        ],
      ),
    );
  }
}
