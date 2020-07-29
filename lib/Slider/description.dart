import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/utils/DataFile.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/googlecode.dart';

class SliderDescription extends StatelessWidget {
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
                    child: Text("Slider",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold))),
                SizedBox(height: 30.0),
                Container(
                  //    padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    children: [
                      Text("           A Material Design slider.Used to select from a range"
                          " of values.",style: TextStyle(fontSize: 15,),),
                      SizedBox(height: 10.0,),
                      Text("           A slider can be used to select from either a continuous or a discrete set of values. "
                          "The default is to use a continuous range of values from min to max. To use discrete values, use a "
                          "non-null value for divisions, which indicates the number of discrete intervals. For example, if min "
                          "is 0.0 and max is 50.0 and divisions is 5, then the slider can take on the discrete values 0.0, 10.0,"
                          " 20.0, 30.0, 40.0, and 50.0.",style: TextStyle(fontSize: 15),),
                      SizedBox(height: 10.0,),
                      Text("          The slider widget itself does not maintain any state. Instead, when the state of the slider changes,"
                          " the widget calls the onChanged callback. Most widgets that use a slider will listen for the onChanged "
                          "callback and rebuild the slider with a new value to update the visual appearance of the slider. To know when "
                          "the value starts to change, or when it is done changing, set the optional callbacks onChangeStart and/or"
                          " onChangeEnd.",style: TextStyle(fontSize: 15),),
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
                      Text("SliderTheme",style: TextStyle(color: Colors.blue,fontSize: 17),),
                      SizedBox(height: 5.0),
                      Text("For information about controlling the visual appearance of the slider.",style: TextStyle(fontSize: 15),),
                      SizedBox(height: 20.0),
                      Text("Radio",style: TextStyle(color: Colors.blue,fontSize: 17),),
                      SizedBox(height: 5.0),
                      Text("For selecting among a set of explicit values.",style: TextStyle(fontSize: 15),),
                      SizedBox(height: 20.0),
                      Text("CheckBox",style: TextStyle(color: Colors.blue,fontSize: 17),),
                      SizedBox(height: 5.0),
                      Text("For toggling a particular value on or off.",style: TextStyle(fontSize: 15),),
                      SizedBox(height: 20.0),
                      Text("MediaQuery",style: TextStyle(color: Colors.blue,fontSize: 17),),
                      SizedBox(height: 5.0),
                      Text("From which the text scale factor is obtained.",style: TextStyle(fontSize: 15),),
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
