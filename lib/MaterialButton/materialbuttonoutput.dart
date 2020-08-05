import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/MaterialButton/CustomMaterialButton.dart';
import 'package:flutter_gallery_ultimate/MaterialButton/code.dart';
import 'package:flutter_gallery_ultimate/MaterialButton/description.dart';


class MaterialButtonOutput extends StatefulWidget {
  @override
  _MaterialButtonOutputState createState() => _MaterialButtonOutputState();
}

class _MaterialButtonOutputState extends State<MaterialButtonOutput> {
  PageController _controller  = PageController(initialPage: 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        scrollDirection: Axis.horizontal,
        children: [
          MaterialButtonDescription(),
          CustomMaterialButton(),
          MaterialButtonCode(),
        ],
      ),
    );
  }
}
