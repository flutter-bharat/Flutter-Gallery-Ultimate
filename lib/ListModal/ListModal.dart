import 'package:flutter/material.dart';

class ListModal extends StatefulWidget {
  @override
  _ListModalState createState() => _ListModalState();
}

class _ListModalState extends State<ListModal> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.black,
      width: MediaQuery.of(context).size.width*1,
      height: MediaQuery.of(context).size.height*0.3,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width*0.9,
            height: MediaQuery.of(context).size.height*0.2,
            decoration: BoxDecoration(color: Colors.red,
            borderRadius: BorderRadius.circular(10)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 35, top: 10),
            child: OverflowBox(
              alignment: Alignment.topLeft,
              child: CircleAvatar(
                radius: 40,
                foregroundColor: Colors.blue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
