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
