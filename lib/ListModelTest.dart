

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_gallery_ultimate/AppBar/customAppBar.dart';
//class ListModalTest extends StatefulWidget {
//  String name, description;
//  LinearGradient linearGradient;
//
//  ListModalTest(
//      {this.name, this.description, this.linearGradient, pageRoute()});
//  pageRoute(context) {
//    Navigator.push(context, MaterialPageRoute(builder: (context)=> CustomAppbar()));
//  }
//  @override
//  _ListModalTestState createState() => _ListModalTestState();
//}
//
//class _ListModalTestState extends State<ListModalTest> {
//  @override
//  Widget build(BuildContext context) {
//    return Padding(
//      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 2),
//      child: Center(
//          child: ListTile(
//        onTap: () => widget.pageRoute(context),
//        focusColor: Colors.red,
//              title: Text(widget.name),
//                 subtitle: Text(widget.description),
//                 trailing: CircleAvatar(
//          backgroundColor: Colors.white,
//          maxRadius: 30,
//        ),
//      )),
//    );
//  }
//}

class WidgetModel {
  String _title;
  String _desc;
  Widget _widget;
  String _leading;

  WidgetModel.setData({String name, String description,String leading,Widget widget}) {
    _title = name;
    _desc = description;
    _leading = leading;
    _widget = widget;
  }

  getTitle(){
    return this._title;
  }
  getDesc(){
    return this._desc;
  }
  getLeading(){
    return this._leading;
  }
  getWidget(){
    return this._widget;
  }


}


