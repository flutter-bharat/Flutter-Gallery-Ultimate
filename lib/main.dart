import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/about.dart';
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

          backgroundColor: Colors.blueGrey, primarySwatch: Colors.red),
          appBarTheme: AppBarTheme(

              color: Colors.grey),
          backgroundColor: Colors.blueGrey,
          primarySwatch: Colors.blue),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      initialRoute: 'home',
      routes: {
        'home': (context) => MyHomePage(),
      }
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

        centerTitle: true,
        leading: Container(),
        backgroundColor: Colors.orange,
        title: Text('Flutter Gallery'),
      ),
      body: ListView.builder(
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
              trailing: CircleAvatar(
                maxRadius: 30,
                backgroundColor: Colors.white,
              ),
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
            GestureDetector(
              child: ListTile(
                title: Text('Team'),
                leading: Icon(Icons.supervisor_account),
              ),
              onTap: (){
                Navigator.push(context, CupertinoPageRoute(builder: (context) => AboutUs()));
              },
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
