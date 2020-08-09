import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/ListModelTest.dart';
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
        backgroundColor: Colors.blueGrey,
        primarySwatch: Colors.red,

      ),
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

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  int currentIndex = 0;
  TabController tabBarController;
  List<WidgetModel> _list;
  @override
  void initState() {
    super.initState();
    tabBarController =
        new TabController(initialIndex: currentIndex, length: 2, vsync: this);
    _list = modelList;
  }

  @override
  void dispose() {
    tabBarController.dispose();
    super.dispose();
  }

  FSBStatus drawerStatus;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 250.0,
            floating: false,
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.pin,
              centerTitle: true,
              background: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 56,
                  ),
                  Text(
                    "Let's Learn Flutter",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "Learning Flutter made Easy!",
                    style: TextStyle(
                      color: Colors.white60,
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Padding(
                          padding:
                              EdgeInsets.only(left: 32, right: 32, bottom: 32),
                          child: Container(
                            height: 48,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(8),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 5.0,
                                  offset: Offset(0, 5),
                                ),
                              ],
                            ),
                            child: Row(
                              children: <Widget>[
                                SizedBox(width: 20,),
                                Icon(
                                  Icons.search,
                                  color: Colors.black54,
                                ),
                                Expanded(
                                  child: TextField(
                                    style: TextStyle(fontSize: 19),
                                    cursorColor: Colors.orange,
                                    onChanged: (change) {
                                      setState(() {
                                        _list = modelList.where((e) => e.getTitle().toLowerCase().contains(change.toLowerCase())).toList();
                                      });
                                    },
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.only(left: 16),
                                      hintText: "Search Widget",
                                      focusedBorder: InputBorder.none,
                                      enabledBorder: InputBorder.none,
                                      errorBorder: InputBorder.none,
                                      disabledBorder: InputBorder.none,
                                      hintStyle: TextStyle(
                                        color: Colors.black26,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              DecoratedTabBar(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.white30,
                      width: 2.0,
                    ),
                  ),
                ),
                tabBar: TabBar(
                  controller: tabBarController,
                  indicatorColor: Colors.white,
                  tabs: [
                    Tab(
                      child: Text(
                        "Material",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Cupertino",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ]),
          ),
          SliverFillRemaining(
            child: TabBarView(
              controller: tabBarController,
              children: [bodyWidget(), Container()],
            ),
          )
        ],
      ),
      drawer: Drawer(
       elevation: 0,
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(

              child: Text('Drawer Header'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),
//      body: FoldableSidebarBuilder(
//        status: drawerStatus,
//        drawer: drawerWidget(),
//        screenContents: bodyWidget(),
//      ),
    );
  }

  bodyWidget() {
    return ListView.builder(
      itemCount: _list.length,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.symmetric(vertical: 4, horizontal: 12),
          padding: EdgeInsets.symmetric(vertical: 4),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: Colors.black12,
          ),
          child: ListTile(
            trailing: Icon(
              Icons.chevron_right,
              color: Colors.white,
            ),
            title: Padding(
              padding: EdgeInsets.only(bottom: 12),
              child: Text(
                _list[index].getTitle(),
                style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 42,
                    color: Colors.white70,
                    fontWeight: FontWeight.w900),
              ),
            ),
            subtitle: Text(
              _list[index].getDesc(),
              style: TextStyle(color: Colors.white70, fontSize: 18),
            ),
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => _list[index].getWidget())),
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

class DecoratedTabBar extends StatelessWidget implements PreferredSizeWidget {
  DecoratedTabBar({@required this.tabBar, @required this.decoration});

  final TabBar tabBar;
  final BoxDecoration decoration;

  @override
  Size get preferredSize => tabBar.preferredSize;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(child: Container(decoration: decoration)),
        tabBar,
      ],
    );
  }
}
