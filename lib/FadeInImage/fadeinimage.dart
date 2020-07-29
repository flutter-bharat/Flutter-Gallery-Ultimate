import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class FadeInImageWidget extends StatefulWidget {
  @override
  _FadeInImageWidgetState createState() => _FadeInImageWidgetState();
}

class _FadeInImageWidgetState extends State<FadeInImageWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FadeInImage"),
        centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("FadeInImage",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
              ),
              FadeInImage.memoryNetwork(
                 placeholder: kTransparentImage,
                 height: MediaQuery.of(context).size.height/3,
                 fadeInDuration: Duration(seconds: 2),
                 image: 'https://picsum.photos/250?image=9',
              ),   
            ],
          ),
        ),
      ),
    );
  }
}