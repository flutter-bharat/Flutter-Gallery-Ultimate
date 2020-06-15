import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/Prince/CustomAlert.dart';
import 'package:flutter_gallery_ultimate/Prince/CustomDrawer.dart';
import 'package:flutter_gallery_ultimate/Prince/customAppBar.dart';
import 'package:flutter_gallery_ultimate/Prince/customList.dart';
import 'package:flutter_gallery_ultimate/Prince/customTabbar.dart';
import 'package:flutter_gallery_ultimate/Prince/httpreq.dart';
import 'package:flutter_gallery_ultimate/bottomnavigationbar.dart';
import 'package:flutter_gallery_ultimate/bottomsheet.dart';
import 'package:flutter_gallery_ultimate/expansionpannel.dart';
import 'package:flutter_gallery_ultimate/pageview.dart';
import 'package:flutter_gallery_ultimate/route.dart';
import 'package:flutter_gallery_ultimate/snackbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
      appBar: AppBar(
        title: Text('Flutter Gallery'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            
            FlatButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> CustomAppbar())), child: Text('Appbar ')),
            FlatButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> CustomTabbar())), child: Text('Tab bar ')),
            FlatButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> CustomerDrawer())), child: Text('Drawer ')),
            FlatButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> HttpScreen())), child: Text('HTTP')),
            FlatButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> CustomAlert())), child: Text('Alert')),
            FlatButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> CustomList())), child: Text('CustomList')),
            FlatButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => BottomNavigationbar())), child: Text('BottomNavigationBar')),
            FlatButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => pageView())), child: Text('PageView')),
            FlatButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => FirstScreen())), child: Text('PageRoute')),
            FlatButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Snackbar())), child: Text('SnackBar')),
            FlatButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ExpansionPannelWidget())), child: Text('ExpansionPannel')),
            FlatButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => BottomSheetWidget())), child: Text('BottomSheet')),
             
            ],
        ),
      ),
    );
  }
}
