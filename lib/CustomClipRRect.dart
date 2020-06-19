import 'package:flutter/material.dart';

class CustomClipRRect extends StatefulWidget {
  @override
  _CustomClipRRectState createState() => _CustomClipRRectState();
}

class _CustomClipRRectState extends State<CustomClipRRect> {
  
  double radii=10.0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom ClipRRect'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Center(
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(radii),
                  child: Image.network("https://images.unsplash.com/photo-1503803548695-c2a7b4a5b875?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60")),
            ),
            SizedBox(
              height: 100,
            ),
            Slider(value: radii, onChanged: (val){
              setState(() {
                radii= val;
              });
            },
              min: 10,
              max: 100,
              activeColor: Colors.blue,
              inactiveColor: Colors.grey,
            )
          ],
        ),
      ),
    );
  }
}

