import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/BottomAppbar.dart';
import 'package:flutter_gallery_ultimate/ListModelTest.dart';
import 'package:flutter_gallery_ultimate/utils/DataFile.dart';

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
import 'package:flutter_gallery_ultimate/ExpansionPannel/expansionpanneloutput.dart';
import 'package:flutter_gallery_ultimate/FadeInImage/fadeinimageoutput.dart';
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
import 'package:foldable_sidebar/foldable_sidebar.dart';

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
          appBarTheme: AppBarTheme(

              color: Colors.grey),
          backgroundColor: Colors.blueGrey,
          primarySwatch: Colors.blue),
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
  FSBStatus drawerStatus;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffe4e3e3),
        appBar: AppBar(
          leading: IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                setState(() {
                  drawerStatus = drawerStatus == FSBStatus.FSB_OPEN
                      ? FSBStatus.FSB_CLOSE
                      : FSBStatus.FSB_OPEN;
                });
              }),
          centerTitle: true,
          backgroundColor: Colors.orange,
          title: Text('Flutter Gallery'),
        ),
        body: FoldableSidebarBuilder(
            status: drawerStatus,
            drawer: drawerWidget(),
            screenContents: bodyWidget()));
  }

  bodyWidget() {
    return ListView.builder(
      itemCount: modelList.length,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.symmetric(vertical: 4, horizontal: 12),
          padding: EdgeInsets.symmetric(vertical: 4),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              gradient: gradientList[index % gradientList.length]),
          child: ListTile(
            title: Text(
              modelList[index].getTitle(),
              style: TextStyle(fontFamily: 'Pacifico'),
            ),
            subtitle: Text(modelList[index].getDesc()),
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => modelList[index].getWidget())),
          ),
        );
      },
    );
  }

  drawerWidget() {
    return Container(
      width: MediaQuery.of(context).size.width*0.6,
      child: Drawer(

        child: ListView(
          children: [
            UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.orange
                ),
                accountName: null, accountEmail: null),
            ListTile(
              title: Text('Home'),
              leading: Icon(Icons.home),
            ),
            ListTile(
              title: Text('Feedback'),
              leading: Icon(Icons.mail),
            ),
            ListTile(
              title: Text('Rate Us'),
              leading: Icon(Icons.star),
            ),
            ListTile(
              title: Text('Share'),
              leading: Icon(Icons.share),
            ),
            Divider(),
            ListTile(
              title: Text('Team'),
              leading: Icon(Icons.supervisor_account),
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
