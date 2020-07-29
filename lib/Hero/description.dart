import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/utils/DataFile.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/googlecode.dart';

class HeroDescription extends StatelessWidget {
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
                    child: Text("Hero",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold))),
                SizedBox(height: 30.0),
                Container(
                  //    padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    children: [
                      Text("           A widget that marks its child as being a candidate for hero animations.",style: TextStyle(fontSize: 15,),),
                      SizedBox(height: 10.0,),
                      Text("           When a PageRoute is pushed or popped with the Navigator, the entire screen's "
                          "content is replaced. An old route disappears and a new route appears. If there's a "
                          "common visual feature on both routes then it can be helpful for orienting the user for "
                          "the feature to physically move from one page to the other during the routes' transition. Such"
                          " an animation is called a hero animation. The hero widgets 'fly' in the Navigator's overlay "
                        "during the transition and while they're in-flight they're, by default, not shown in their original "
                        "locations in the old and new routes.",style: TextStyle(fontSize: 15),),
                      SizedBox(height: 10.0,),
                      Text("           To label a widget as such a feature, wrap it in a Hero widget. When navigation "
                          "happens, the Hero widgets on each route are identified by the HeroController. For each pair of Hero widgets "
                          "that have the same tag, a hero animation is triggered.",style: TextStyle(fontSize: 15),),
                      SizedBox(height: 10.0,),
                      Text("           If a Hero is already in flight when navigation occurs, its flight animation will be redirected to "
                          "its new destination. The widget shown in-flight during the transition is, by default, the destination route's"
                          " Hero's child.",style: TextStyle(fontSize: 15),),
                    ],
                  ),
                ),
                SizedBox(height: 40.0),
                Text("Discussion",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
                SizedBox(height: 20.0),
                Container(
                  //   padding: EdgeInsets.symmetric(horizontal: 15.0,vertical: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("           Heroes and the Navigator's Overlay Stack must be axis-aligned for all "
                          "this to work. The top left and bottom right coordinates of each animated Hero will be converted to global "
                          "coordinates and then from there converted to that Stack's coordinate space, and the entire Hero subtree will, "
                          "for the duration of the animation, be lifted out of its original place, and positioned on that stack. If the"
                          " Hero isn't axis aligned, this is going to fail in a rather ugly fashion. Don't rotate "
                          "your heroes!",style: TextStyle(fontSize: 15,),),
                      SizedBox(height: 10.0,),
                      Text("           To make the animations look good, it's critical that the widget tree for the hero in both locations "
                          "be essentially identical. The widget of the target is, by default, used to do the transition: when going from "
                          "route A to route B, route B's hero's widget is placed over route A's hero's widget. If a flightShuttleBuilder is "
                          "supplied, its output widget is shown during the flight transition instead.",style: TextStyle(fontSize: 15),),
                      SizedBox(height: 10.0,),
                      Text("           By default, both route A and route B's heroes are hidden while the transitioning widget is animating "
                          "in-flight above the 2 routes. placeholderBuilder can be used to show a custom widget in their place instead once "
                          "the transition has taken flight.",style: TextStyle(fontSize: 15),),
                      SizedBox(height: 10.0,),
                      Text("           During the transition, the transition widget is animated to route B's hero's position, and then the widget "
                          "is inserted into route B. When going back from B to A, route A's hero's widget is, by default, placed over where "
                          "route B's hero's widget was, and then the animation goes the other way.",style: TextStyle(fontSize: 15),),
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
