import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/utils/DataFile.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/googlecode.dart';

class Description extends StatelessWidget {
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
                    child: Text("PageView",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold))),
                SizedBox(height: 30.0),
                Container(
                  //    padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    children: [
                      Text("           A scrollable list that works page by page.Each child of a page view is forced "
                          "to be the same size as the viewport.",style: TextStyle(fontSize: 15,),),
                      SizedBox(height: 10.0,),
                      Text("           You can use a PageController to control which page is visible in the view. In "
                          "addition to being able to control the pixel offset of the content inside the PageView, "
                          "a PageController also lets you control the offset in terms of pages, which are increments of the "
                          "viewport size.",style: TextStyle(fontSize: 15),),
                      SizedBox(height: 10.0,),
                      Text("           The PageController can also be used to control the PageController.initialPage, which "
                          "determines which page is shown when the PageView is first constructed, and the PageController.viewportFraction, "
                          "which determines the size of the pages as a fraction of the viewport size.",style: TextStyle(fontSize: 15),),

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
                      Text("PageController",style: TextStyle(color: Colors.blue,fontSize: 17),),
                      SizedBox(height: 5.0),
                      Text("Which controls which page is visible in the view.",style: TextStyle(fontSize: 15),),
                      SizedBox(height: 20.0),
                      Text("SingalChildScrollView",style: TextStyle(color: Colors.blue,fontSize: 17),),
                      SizedBox(height: 5.0),
                      Text("When you need to make a single child scrollable.",style: TextStyle(fontSize: 15),),
                      SizedBox(height: 20.0),
                      Text("ListView",style: TextStyle(color: Colors.blue,fontSize: 17),),
                      SizedBox(height: 5.0),
                      Text("For a scrollable list of boxes.",style: TextStyle(fontSize: 15),),
                      SizedBox(height: 20.0),
                      Text("GirdView",style: TextStyle(color: Colors.blue,fontSize: 17),),
                      SizedBox(height: 5.0),
                      Text("For a scrollable grid of boxes.",style: TextStyle(fontSize: 15),),
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
