import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/SnackBar/code.dart';
import 'package:flutter_gallery_ultimate/SnackBar/description.dart';
import 'package:flutter_gallery_ultimate/SnackBar/snackbar.dart';


class SnackBarOutput extends StatefulWidget {
  @override
  _SnackBarOutputState createState() => _SnackBarOutputState();
}

class _SnackBarOutputState extends State<SnackBarOutput> {
  PageController _controller  = PageController(initialPage: 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
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
