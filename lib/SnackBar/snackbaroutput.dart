import 'package:flutter/material.dart';

import 'package:flutter_gallery_ultimate/Flow/flow.dart';
import 'package:flutter_gallery_ultimate/SnackBar/code.dart';
import 'package:flutter_gallery_ultimate/SnackBar/description.dart';
import 'package:flutter_gallery_ultimate/SnackBar/snackbar.dart';


class SnackBarOutput extends StatefulWidget {
  @override
  _SnackBarOutputState createState() => _SnackBarOutputState();
}

class _SnackBarOutputState extends State<SnackBarOutput> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: PageController(),
        scrollDirection: Axis.horizontal,
        children: [
          SnackBarDescription(),
          Snackbar(),
          SnackBarCode(),
        ],
      ),
    );
  }
}
