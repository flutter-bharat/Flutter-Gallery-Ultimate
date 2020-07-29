import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/ListMoadalHomeScreen/ListModalForHomeScreen.dart';
import 'package:flutter_gallery_ultimate/ListMoadalHomeScreen/code.dart';
import 'package:flutter_gallery_ultimate/ListMoadalHomeScreen/description.dart';


class ListMadalHomeOutput extends StatefulWidget {
  @override
  _ListMadalHomeOutputState createState() => _ListMadalHomeOutputState();
}

class _ListMadalHomeOutputState extends State<ListMadalHomeOutput> {
  PageController _controller  = PageController(initialPage: 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        scrollDirection: Axis.horizontal,
        children: [
          ListMadalHomeDescription(),
          ListModal(),
          ListMadalHomeCode(),
        ],
      ),
    );
  }
}
