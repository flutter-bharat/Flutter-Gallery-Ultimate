import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/Alert/alertoutput.dart';
import 'package:flutter_gallery_ultimate/Align/alignoutput.dart';
import 'package:flutter_gallery_ultimate/AppBar/appbaroutput.dart';
import 'package:flutter_gallery_ultimate/BottomNavigationBar/bottomnavigationbaroutput.dart';
import 'package:flutter_gallery_ultimate/BottomSheet/bottomsheetoutput.dart';
import 'package:flutter_gallery_ultimate/Card/cardoutput.dart';
import 'package:flutter_gallery_ultimate/ClipReact/clipreactoutput.dart';
import 'package:flutter_gallery_ultimate/Column/columnoutput.dart';
import 'package:flutter_gallery_ultimate/DatePicker/datepickeroutput.dart';
import 'package:flutter_gallery_ultimate/Dismissible/dismissibleoutput.dart';
import 'package:flutter_gallery_ultimate/Divider/divideroutput.dart';
import 'package:flutter_gallery_ultimate/Drawer/divideroutput.dart';
import 'package:flutter_gallery_ultimate/ExpansionPannel/divideroutput.dart';
import 'package:flutter_gallery_ultimate/FadeInImage/divideroutput.dart';
import 'package:flutter_gallery_ultimate/FlatButton/flatbuttonoutput.dart';
import 'package:flutter_gallery_ultimate/FloatActionButton/floatactionbuttonoutput.dart';
import 'package:flutter_gallery_ultimate/Flow/flowoutput.dart';
import 'package:flutter_gallery_ultimate/GridView/gridviewoutput.dart';
import 'package:flutter_gallery_ultimate/Hero/herooutput.dart';
import 'package:flutter_gallery_ultimate/HeroAnimationScreen/heroanimationoutput.dart';
import 'package:flutter_gallery_ultimate/HttpRequest/httpreqoutput.dart';
import 'package:flutter_gallery_ultimate/IconButton/iconbuttonoutput.dart';
import 'package:flutter_gallery_ultimate/List/listoutput.dart';
import 'package:flutter_gallery_ultimate/ListMoadalHomeScreen/listmodalhomeoutput.dart';
import 'package:flutter_gallery_ultimate/ListModal/listmodaloutput.dart';
import 'package:flutter_gallery_ultimate/MaterialButton/materialbuttonoutput.dart';
import 'package:flutter_gallery_ultimate/Opacity/opacityoutput.dart';
import 'package:flutter_gallery_ultimate/PageView/pageviewoutput.dart';
import 'package:flutter_gallery_ultimate/RichText/richtextoutput.dart';
import 'package:flutter_gallery_ultimate/Route/routeoutput.dart';
import 'package:flutter_gallery_ultimate/Row/rowoutput.dart';
import 'package:flutter_gallery_ultimate/SafeArea/safeareaoutput.dart';
import 'package:flutter_gallery_ultimate/ScrollView/scrollviewoutput.dart';
import 'package:flutter_gallery_ultimate/SelectedText/selectedtextoutput.dart';
import 'package:flutter_gallery_ultimate/Slider/slideroutput.dart';
import 'package:flutter_gallery_ultimate/SnackBar/snackbaroutput.dart';
import 'package:flutter_gallery_ultimate/Spacer/spaceroutput.dart';
import 'package:flutter_gallery_ultimate/Stack/stackoutput.dart';
import 'package:flutter_gallery_ultimate/Stepper/flowoutput.dart';
import 'package:flutter_gallery_ultimate/TabBar/tabbaroutput.dart';
import 'package:flutter_gallery_ultimate/TextField/textfieldoutput.dart';
import 'package:flutter_gallery_ultimate/Tooltip/tooltipoutput.dart';
import 'package:flutter_gallery_ultimate/Wrap/wrapoutput.dart';


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
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> PageViewOutput())), child: Text('PageView')),
              FlatButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> AlertOutput())), child: Text("Alert")),
              FlatButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> AppBarOutput())), child: Text("AppBar")),
              FlatButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> BottomNavigationBarOutput())), child: Text("BottomNavigationBar")),
              FlatButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> BottomSheetOutput())), child: Text("BottomSheet")),
              FlatButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> CardOutput())), child: Text("Card")),
              FlatButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> ClipReactOutput())), child: Text("ClipReact")),
              FlatButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> ColumntOutput())), child: Text("Column")),
              FlatButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> DatePickerOutput())), child: Text("DatePicker")),
              FlatButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> DividerOutput())), child: Text("Divider")),
              FlatButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> DrawerOutput())), child: Text("Drawer")),
              FlatButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> ExpansionPanelOutput())), child: Text("ExpansionPanel")),
              FlatButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> FadeInImageOutput())), child: Text("FadeInImage")),
              FlatButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> FlowOutput())), child: Text("Flow")),
              FlatButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> GridViewOutput())), child: Text("GridView")),
              FlatButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> HeroOutput())), child: Text("Hero")),
              FlatButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> HeroAnimationOutput())), child: Text("HeroAnimation")),
              FlatButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> HttpRequestOutput())), child: Text("HttpRequest")),
              FlatButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> ListOutput())), child: Text("List")),
              FlatButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> ListModalOutput())), child: Text("ListModal")),
              FlatButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> RichTextOutput())), child: Text("RichText")),
              FlatButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> RouteOutput())), child: Text("Route")),
              FlatButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> RowOutput())), child: Text("Row")),
              FlatButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> ScrollViewOutput())), child: Text("ScrollView")),
              FlatButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> SelectedTextOutput())), child: Text("SelectedText")),
              FlatButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> SliderOutput())), child: Text("Slider")),
              FlatButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> SnackBarOutput())), child: Text("SnackBar")),
              FlatButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> SpacerOutput())), child: Text("Spacer")),
              FlatButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> StackOutput())), child: Text("Stack")),
              FlatButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> StepperOutput())), child: Text("Stepper")),
              FlatButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> TabBarOutput())), child: Text("TabBar")),
              FlatButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> TextFieldOutput())), child: Text("TextField")),
              FlatButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> ToolTipOutput())), child: Text("ToolTip")),
              FlatButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> ListModalOutput())), child: Text('Custom List Modal old')),
              FlatButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> AlignOutput())), child: Text("Align")),
              FlatButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> DismissibleOutput())), child: Text("Dismissible")),
              FlatButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> FlatButtonOutput())), child: Text("FlatButton")),
              FlatButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> FloatActionButtonOutput())), child: Text("FloatActionButton")),
              FlatButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> IconButtonOutput())), child: Text("IconButton")),
              FlatButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> ListMadalHomeOutput())), child: Text("ListMadalHomeScreen")),
              FlatButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> MaterialButtonOutput())), child: Text("MaterialButton")),
              FlatButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> OpacityOutput())), child: Text("Opacity")),
              FlatButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> SafeAreaOutput())), child: Text("SafeArea")),
              FlatButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> WrapOutput())), child: Text("Wrap")),
            ],
          ),
        ),
      ),
    );
  }
}
