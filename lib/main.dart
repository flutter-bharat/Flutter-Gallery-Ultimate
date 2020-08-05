import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/about.dart';
import 'package:flutter_gallery_ultimate/utils/DataFile.dart';
import 'package:foldable_sidebar/foldable_sidebar.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          backgroundColor: Colors.blueGrey, primarySwatch: Colors.red),
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: FlareActor(
        'assets/Flutter Splash Animation.flr',
        alignment: Alignment.center,
        fit: BoxFit.contain,
        animation: "FlutterSplashAnimation",
        callback: (animationName) {
          Navigator.pushAndRemoveUntil(
              context,
              CupertinoPageRoute(
                builder: (_) => Home(),
              ),
              (route) => false);
        },
      ),
    );
  }
}

class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  FSBStatus drawerStatus;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffe4e3e3),
        appBar: AppBar(
          elevation: 0.0,
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
          title: Text("Let's Learn Flutter"),
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
            title: Padding(
              padding: EdgeInsets.only(bottom: 12),
              child: Text(
                modelList[index].getTitle(),
                style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 42,
                    color: Colors.white54,
                    fontWeight: FontWeight.w900),
              ),
            ),
            subtitle: Text(
              modelList[index].getDesc(),
              style: TextStyle(color: Colors.white70, fontSize: 18),
            ),
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
      width: MediaQuery.of(context).size.width * 0.6,
      child: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/forDrawerHeader.png"),
                      fit: BoxFit.contain,
                    ),
                    color: Colors.orange),
                accountName: null,
                accountEmail: null),
            ListTile(
              title: Text('Home'),
              leading: Icon(Icons.home),
            ),
            ListTile(
              title: Text('Feedback'),
              leading: Icon(Icons.mail),
              onTap: () {
                launch(
                    "https://play.google.com/store/apps/details?id=com.grevity.flutter_gallery_ultimate");
              },
            ),
            ListTile(
              title: Text('Rate Us'),
              leading: Icon(Icons.star),
              onTap: () {
                launch(
                    "https://play.google.com/store/apps/details?id=com.grevity.flutter_gallery_ultimate");
              },
            ),
            ListTile(
              title: Text('Share'),
              leading: Icon(Icons.share),
              onTap: () {
                Share.share(
                    'Hey Check Out This Flutter Learning Resource it includes flutter widgets code snippents along with there implementations https://play.google.com/store/apps/details?id=com.grevity.flutter_gallery_ultimate');
              },
            ),
            Divider(),
            GestureDetector(
              child: ListTile(
                title: Text('About & Collaborators'),
                leading: Icon(Icons.supervisor_account),
              ),
              onTap: () {
                Navigator.push(context,
                    CupertinoPageRoute(builder: (context) => AboutUs()));
              },
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
