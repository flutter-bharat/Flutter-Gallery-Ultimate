import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HttpScreen extends StatefulWidget {
  @override
  _HttpScreenState createState() => _HttpScreenState();
}

class _HttpScreenState extends State<HttpScreen> {
  List data;
  Future getUsers() async {
    String url = 'https://randomuser.me/api/?results=15';
    var result = await http
        .get(Uri.encodeFull(url), headers: {"Accept": "application/json"});

    setState(() {
      var extractedCode = jsonDecode(result.body);
      data = extractedCode["results"];
      isLoading = false;
    });
    print(result.body);
    print('Separator-----------------');
    print(data);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getUsers();
  }

  bool isLoading = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Contacts'),
        ),
        body: isLoading == true
            ? Container(
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              )
            : ListView.builder(
                itemCount: data == null ? 0 : data.length,
                itemBuilder: (context, index) {
                  return ListTile(
                      title: Text(data[index]["name"]["first"]),
                      subtitle: Text(data[index]["phone"]),
                      leading: CircleAvatar(
                        backgroundImage:
                            NetworkImage(data[index]["picture"]["thumbnail"]),
                      ));
                },
              ));
  }
}
