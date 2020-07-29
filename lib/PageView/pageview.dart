import 'package:flutter/material.dart';

class pageView extends StatefulWidget {
  @override
  _pageViewState createState() => _pageViewState();
}

class _pageViewState extends State<pageView> {

  bool isVertical = false;
  static const TextStyle textStyle = TextStyle(fontSize: 16);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PageView"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("PageView",style: textStyle),
          SizedBox(height: 30),
          Container(
            height: 400,
            width: double.infinity,
            color: Theme.of(context).primaryColor,
            child: PageView(
              controller: PageController(),
              scrollDirection: isVertical ? Axis.vertical : Axis.horizontal,
              children: [
                Center (child: Text("Page 1",style: textStyle),),
                Center(child: Text("Page 2",style: textStyle)),
                Center(child: Text("Page 3",style: textStyle)),
                Center(child: Text("Page 4",style: textStyle)),
              ],
            ),
          ),
          SizedBox(height: 30),
          RaisedButton(
            onPressed: () => setState(() => isVertical = !isVertical),
            child: Text("Change Direction",style: textStyle),
          ),
        ],
      ),
    );
  }
}