import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/BottomAppbar.dart';
import 'package:flutter_gallery_ultimate/ListModelTest.dart';
import 'package:flutter_gallery_ultimate/utils/DataFile.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          backgroundColor: Colors.blueGrey, primarySwatch: Colors.blue),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe4e3e3),
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Flutter Gallery'),
      ),
      body: ListView.builder(
        itemCount: modelList.length,
        itemBuilder: (context, index){
         return Container(
           margin: EdgeInsets.symmetric(vertical: 4, horizontal: 12),
           padding: EdgeInsets.symmetric(vertical: 4),
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(6),
             gradient: gradientList[index%gradientList.length]
           ),
           child: ListTile(
             title: Text(modelList[index].getTitle(), style: TextStyle(
               fontFamily: 'Pacifico'
             ),),
            subtitle: Text(modelList[index].getDesc()),
             onTap:()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> modelList[index].getWidget())),
             trailing: CircleAvatar(
               maxRadius: 30, backgroundColor: Colors.white,
             ),
           ),
         );
          },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => CustomBottomAppBar()));
        },
      ),
    );
  }
}
