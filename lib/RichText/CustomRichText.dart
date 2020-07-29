import 'package:flutter/material.dart';

class CustomRichText extends StatefulWidget {
  @override
  _CustomRichTextState createState() => _CustomRichTextState();
}

class _CustomRichTextState extends State<CustomRichText> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom RichText'),
      ),
      body: Center(
          child: RichText(
        text: TextSpan(
          text: 'I am ',
          style: TextStyle(fontSize: 18, color: Colors.blue),
          children: <TextSpan>[
            TextSpan(
                text: 'Rich',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.black)),
            TextSpan(text: ' Text!', style: TextStyle(fontSize: 18)),
          ],
        ),
      )),
    );
  }
}
