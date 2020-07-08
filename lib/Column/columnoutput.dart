import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/Column/column.dart';
import 'package:flutter_gallery_ultimate/Column/columncode.dart';
import 'package:flutter_gallery_ultimate/Column/columndescription.dart';

class ColumntOutput extends StatefulWidget {
  @override
  _ColumntOutputState createState() => _ColumntOutputState();
}

class _ColumntOutputState extends State<ColumntOutput> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: PageController(),
        scrollDirection: Axis.horizontal,
        children: [
          ColumnDescription(),
          ColumnWidget(),
          ColumnCode(),
        ],
      ),
    );
  }
}
