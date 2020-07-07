import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
   static const TextStyle textStyle = TextStyle(fontSize: 30,fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PageRoute")
      ),
      body:
       Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
          Text("First Screen",style: textStyle,),
          SizedBox(height:10.0),
          RaisedButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (BuildContext)=> SecondScreen())),
          child: Text("Second Screen",style: TextStyle(fontSize: 18))),
        ],
        ), 
      ),  
    );
  }
}

class SecondScreen extends StatelessWidget {
   static const TextStyle textStyle = TextStyle(fontSize: 30,fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
        centerTitle: true,
      ),
      body: Center(
        child: Text("Second Screen",style: textStyle),
      ),
    );
  }
}