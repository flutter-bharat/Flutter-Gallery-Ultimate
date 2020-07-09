import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/TextField/code.dart';
import 'package:flutter_gallery_ultimate/TextField/description.dart';
import 'package:flutter_gallery_ultimate/TextField/textfield.dart';

class TextFieldOutput extends StatefulWidget {
  @override
  _TextFieldOutputState createState() => _TextFieldOutputState();
}

class _TextFieldOutputState extends State<TextFieldOutput> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: PageController(),
        scrollDirection: Axis.horizontal,
        children: [
          TextFieldDescription(),
          TextFieldWidget(),
          TextFieldCode(),
        ],
      ),
    );
  }
}
