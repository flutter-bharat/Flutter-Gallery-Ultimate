import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/utils/DataFile.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/googlecode.dart';

class BottomSheetDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: customizedAppBar("Description"),

      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all( 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  //   padding: EdgeInsets.symmetric(horizontal: 50.0),
                    child: Text("BottomSheet",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold))),
                SizedBox(height: 30.0),
                Container(
                  //    padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("There are two kinds of bottom sheets in material design:",style: TextStyle(fontSize: 20,),),
                      SizedBox(height: 20.0,),
                      Text("1. Persistent",style: TextStyle(fontSize: 20),),
                      SizedBox(height: 10.0,),
                      Text("          A persistent bottom sheet shows information that supplements the primary content of "
                          "the app.A persistent bottom sheet remains visible even when the user interacts with other parts of the app."
                          " Persistent bottom sheets can be created and displayed with the ScaffoldState.showBottomSheet"
                          " function or by specifying the Scaffold.bottomSheet constructor parameter."
                        ,style: TextStyle(fontSize: 15),),
                      SizedBox(height: 20.0,),
                      Text("2. Modal",style: TextStyle(fontSize: 20),),
                      SizedBox(height: 10.0,),
                      Text("          A modal bottom sheet is an alternative to a menu or a dialog and prevents the user from"
                          " interacting with the rest of the app. Modal bottom sheets can be created and displayed with the"
                          " showModalBottomSheet function.",style: TextStyle(fontSize: 15),),
                      SizedBox(height: 30.0,),
                      Text("   The BottomSheet widget itself is rarely used directly. Instead, prefer to create "
                          "a persistent bottom sheet with ScaffoldState.showBottomSheet or Scaffold.bottomSheet, and a modal "
                          "bottom sheet with showModalBottomSheet.",style: TextStyle(fontSize: 16),),
                    ],
                  ),
                ),
                SizedBox(height: 40.0),
                Text("Related Widgets",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
                SizedBox(height: 20.0),
                Container(
                  //   padding: EdgeInsets.symmetric(horizontal: 15.0,vertical: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("ShowBottomSheet",style: TextStyle(color: Colors.blue,fontSize: 17),),
                      SizedBox(height: 5.0),
                      Text('for showing non-modal "persistent" bottom sheets.',style: TextStyle(fontSize: 15),),
                      SizedBox(height: 20.0),
                      Text("ShowModalBottomSheet",style: TextStyle(color: Colors.blue,fontSize: 17),),
                      SizedBox(height: 5.0),
                      Text("which can be used to display a modal bottom sheet.",style: TextStyle(fontSize: 15),),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
