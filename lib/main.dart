import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/bottomnavigationbar.dart';
import 'package:flutter_gallery_ultimate/bottomsheet.dart';
import 'package:flutter_gallery_ultimate/datepicker.dart';
import 'package:flutter_gallery_ultimate/expansionpannel.dart';
import 'package:flutter_gallery_ultimate/fadeinimage.dart';
import 'package:flutter_gallery_ultimate/flow.dart';
import 'package:flutter_gallery_ultimate/pageview.dart';
import 'package:flutter_gallery_ultimate/route.dart';
import 'package:flutter_gallery_ultimate/slider.dart';
import 'package:flutter_gallery_ultimate/snackbar.dart';
import 'package:flutter_gallery_ultimate/CustomAlert.dart';
import 'package:flutter_gallery_ultimate/CustomBottomNavigation.dart';
import 'package:flutter_gallery_ultimate/CustomCard.dart';
import 'package:flutter_gallery_ultimate/CustomDrawer.dart';
import 'package:flutter_gallery_ultimate/CustomScrollViewFile.dart';
import 'package:flutter_gallery_ultimate/CustomSnackBar.dart';
import 'package:flutter_gallery_ultimate/customAppBar.dart';
import 'package:flutter_gallery_ultimate/CustomList.dart';
import 'package:flutter_gallery_ultimate/CustomTabbar.dart';
import 'package:flutter_gallery_ultimate/httpreq.dart';
import 'package:flutter_gallery_ultimate/stepper.dart';

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

        child: ListView(
              children: <Widget>[ Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> CustomAppbar())), child: Text('Appbar ')),
              FlatButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> CustomTabbar())), child: Text('Tab bar ')),
              FlatButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> CustomerDrawer())), child: Text('Drawer ')),
              FlatButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> HttpScreen())), child: Text('HTTP')),
              FlatButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> CustomAlert())), child: Text('Alert')),
              FlatButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> CustomList())), child: Text('CustomList')),
              FlatButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> CustomSnackBar())), child: Text('CustomSnackbar')),
              FlatButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> CustomBottomNavigation())), child: Text('Bottom Navigation')),
              FlatButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> CustomCard())), child: Text('Custom Card')),
              FlatButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> BottomNavigationbar())), child: Text('BottomeNavigationBar')),
              FlatButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> ExpansionPannelWidget())), child: Text('ExpansionPannel')),
              FlatButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> pageView())), child: Text('PageView')),
              FlatButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> FirstScreen())), child: Text('Route')),
              FlatButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> BottomSheetWidget())), child: Text('BottomeSheet')),            
              FlatButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> StepperWidget())), child: Text('Stepper')),            
              FlatButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> DatePickerWidget())), child: Text('DatePicker')),            
              FlatButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> SliderWidget())), child: Text('Slider')),   
              FlatButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> FadeInImageWidget())), child: Text('FadeInImage')),     
              FlatButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> FlowWidget())), child: Text('Flow')),            



            ],
          ),
          ],
        ),
      ),
    );
  }
}
