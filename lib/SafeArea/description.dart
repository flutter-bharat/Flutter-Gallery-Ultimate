import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/utils/DataFile.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/googlecode.dart';

class SafeAreaDescription extends StatelessWidget {
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
                    child: Text("SafeArea",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold))),
                SizedBox(height: 30.0),
                Container(
                  //    padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    children: [
                      Text("          A widget that insets its child by sufficient padding to avoid intrusions by the "
                          "operating system.For example, this will indent the child by enough to avoid the status bar at "
                          "the top of the screen.",style: TextStyle(fontSize: 15,),),
                      SizedBox(height: 10.0,),
                      Text("           It will also indent the child by the amount necessary to avoid The Notch on the"
                          " iPhone X, or other similar creative physical features of the display.When a minimum padding "
                          "is specified, the greater of the minimum padding or the safe area padding will be applied.",
                        style: TextStyle(fontSize: 15),),
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
                      Text("SilverSafeArea",style: TextStyle(color: Colors.blue,fontSize: 17),),
                      SizedBox(height: 5.0),
                      Text("For insetting slivers to avoid operating system intrusions.",style: TextStyle(fontSize: 15),),
                      SizedBox(height: 20.0),
                      Text("Padding",style: TextStyle(color: Colors.blue,fontSize: 17),),
                      SizedBox(height: 5.0),
                      Text("For insetting widgets in general.",style: TextStyle(fontSize: 15),),
                      SizedBox(height: 20.0),
                      Text("MediaQuery",style: TextStyle(color: Colors.blue,fontSize: 17),),
                      SizedBox(height: 5.0),
                      Text("From which the window padding is obtained.",style: TextStyle(fontSize: 15),),
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
