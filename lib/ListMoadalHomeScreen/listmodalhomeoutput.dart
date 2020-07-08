import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/Flow/flow.dart';
import 'package:flutter_gallery_ultimate/ListMoadalHomeScreen/ListModalForHomeScreen.dart';
import 'package:flutter_gallery_ultimate/ListMoadalHomeScreen/code.dart';
import 'package:flutter_gallery_ultimate/ListMoadalHomeScreen/description.dart';


class ListMadalHomeOutput extends StatefulWidget {
  @override
  _ListMadalHomeOutputState createState() => _ListMadalHomeOutputState();
}

class _ListMadalHomeOutputState extends State<ListMadalHomeOutput> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: PageController(),
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
