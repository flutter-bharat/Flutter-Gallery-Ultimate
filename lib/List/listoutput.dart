import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/List/CustomList.dart';
import 'package:flutter_gallery_ultimate/List/code.dart';
import 'package:flutter_gallery_ultimate/List/description.dart';

class ListOutput extends StatefulWidget {
  @override
  _ListOutputState createState() => _ListOutputState();
}

class _ListOutputState extends State<ListOutput> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: PageController(),
        scrollDirection: Axis.horizontal,
        children: [
          ListDescription(),
          CustomList(),
          ListCode(),
        ],
      ),
    );
  }
}
