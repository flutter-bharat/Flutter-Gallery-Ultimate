import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/utils/DataFile.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/googlecode.dart';



class Code extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    var code = '''
import 'package:flutter/material.dart';

class CustomerDrawer extends StatefulWidget {
  @override
  _CustomerDrawerState createState() => _CustomerDrawerState();
}

class _CustomerDrawerState extends State<CustomerDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer- Side Menu'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('User Name'),
              accountEmail: Text('useremail@mail.com'),
              decoration: BoxDecoration(color: Colors.blue),
              currentAccountPicture: CircleAvatar(
                child: Text('U'),
                backgroundColor: Colors.amber,
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundColor: Colors.brown,
                ),
                CircleAvatar(
                  backgroundColor: Colors.green,
                ),
              ],
            ),
            ListTile(
              title: Text('Using Leading of ListTile'),
              subtitle: Text('Widget shows on left side'),
              leading: Icon(
                Icons.home,
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Using Leading of ListTile'),
              subtitle: Text('Widget shows on left side'),
              leading: Icon(
                Icons.settings,
                color: Colors.blue,
              ),
            ),
            SizedBox(
              child: Container(
                color: Colors.grey.shade200,
              ),
              height: 1,
              width: double.infinity,
            ),
            ListTile(
              title: Text('Using Trailing of ListTile'),
              subtitle: Text('Widget shows on right side'),
              trailing: Icon(
                Icons.portrait,
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Using Trailing of ListTile'),
              subtitle: Text('Widget shows on right side'),
              trailing: Icon(
                Icons.work,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

    ''';


    return Scaffold(
     appBar: customizedAppBar("Code"),
      body: ListView(
        children: [
        HighlightView(
        // The original code to be highlighted
        code,

        // Specify language
        // It is recommended to give it a value for performance
        language: 'dart',

        // Specify highlight theme
        // All available themes are listed in `themes` folder
          theme: googlecodeTheme   ,

        // Specify padding
        padding: EdgeInsets.all(12),

        // Specify text style
        textStyle: TextStyle(
          fontFamily: 'My awesome monospace font',
          fontSize: 16,
        ),
        ),
        ],
      ),
    );
  }
}
