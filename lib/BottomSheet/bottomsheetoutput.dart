import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/BottomSheet/bottomsheet.dart';
import 'package:flutter_gallery_ultimate/BottomSheet/bottomsheetcode.dart';
import 'package:flutter_gallery_ultimate/BottomSheet/bottomsheetdescription.dart';


class BottomSheetOutput extends StatefulWidget {
  @override
  _BottomSheetOutputState createState() => _BottomSheetOutputState();
}

class _BottomSheetOutputState extends State<BottomSheetOutput> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: PageController(),
        scrollDirection: Axis.horizontal,
        children: [
          BottomSheetDescription(),
          BottomSheetWidget(),
          BottomSheetCode(),
        ],
      ),
    );
  }
}
