import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/utils/DataFile.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/googlecode.dart';

class ScrollViewDescription extends StatelessWidget {
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
                    child: Text("ScrollView",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold))),
                SizedBox(height: 30.0),
                Container(
                  //    padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    children: [
                      Text("A widget that scrolls.",style: TextStyle(fontSize: 18,),),
                      SizedBox(height: 10.0,),
                      Text("Scrollable widgets consist of three pieces:",style: TextStyle(fontSize: 17),),
                      SizedBox(height: 10.0,),
                      Text(" 1. A Scrollable widget, which listens for various user gestures and implements the interaction design for scrolling.",style: TextStyle(fontSize: 15),),
                      SizedBox(height: 10.0,),
                      Text(" 2. A viewport widget, such as Viewport or ShrinkWrappingViewport, which implements the visual design for scrolling by displaying only"
                          " a portion of the widgets inside the scroll view.",style: TextStyle(fontSize: 15),),
                      SizedBox(height: 13.0,),
                      Text(" 3. One or more slivers, which are widgets that can be composed to created various scrolling effects, such as "
                          "lists, grids, and expanding headers.",style: TextStyle(fontSize: 15),),SizedBox(height: 10.0,),
                      Text("           ScrollView helps orchestrate these pieces by creating the Scrollable and the viewport and deferring to its "
                          "subclass to create the slivers.",style: TextStyle(fontSize: 15),),
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
                      Text("ListView",style: TextStyle(color: Colors.blue,fontSize: 17),),
                      SizedBox(height: 5.0),
                      Text("Which is a commonly used ScrollView that displays a scrolling, linear list of child widgets.",style: TextStyle(fontSize: 15),),
                      SizedBox(height: 20.0),
                      Text("PageView",style: TextStyle(color: Colors.blue,fontSize: 17),),
                      SizedBox(height: 5.0),
                      Text("Which is a scrolling list of child widgets that are each the size of the viewport.",style: TextStyle(fontSize: 15),),
                      SizedBox(height: 20.0),
                      Text("GridView",style: TextStyle(color: Colors.blue,fontSize: 17),),
                      SizedBox(height: 5.0),
                      Text("Which is a ScrollView that displays a scrolling, 2D array of child widgets.",style: TextStyle(fontSize: 15),),
                      SizedBox(height: 20.0),
                      Text("CustomScrollView",style: TextStyle(color: Colors.blue,fontSize: 17),),
                      SizedBox(height: 5.0),
                      Text("Which is a ScrollView that creates custom scroll effects using slivers.",style: TextStyle(fontSize: 15),),

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
