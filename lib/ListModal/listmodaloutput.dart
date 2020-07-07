import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/ListModal/ListModal.dart';
import 'package:flutter_gallery_ultimate/ListModal/code.dart';
import 'package:flutter_gallery_ultimate/ListModal/description.dart';



class ListModalOutput extends StatefulWidget {
  @override
  _ListModalState createState() => _ListModalState();
}

class _ListModalState extends State<ListModalOutput> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: PageController(),
        scrollDirection: Axis.horizontal,
        children: [
          ListModalDescription(),
          ListModal(),
          ListModalCode(),
        ],
      ),
    );
  }
}
