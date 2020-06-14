import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Card'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Card(
                elevation: 6,
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Text('This is a custom card. Card Provides a different layout than other widgets.', textAlign: TextAlign.center,),
                )),
          ),
          SizedBox(
            height: 50,
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              Card(
                elevation: 2,
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width * 1,
                ),
              ),
              Card(
                  elevation: 4,
                  child: Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width * 0.9,
                  )),
              Card(
                  elevation: 6,
                  child: Container(
                    height: 70,
                    width: MediaQuery.of(context).size.width * 0.8,
                  )),
              Card(
                  elevation: 8,
                  child: Container(
                    height: 80,
                    width: MediaQuery.of(context).size.width * 0.7,
                  )),
              Card(
                  elevation: 10,
                  child: Container(
                    alignment: Alignment.center,
                    child: Text('Stack of cards'),
                    height: 90,
                    width: MediaQuery.of(context).size.width * 0.6,
                  ))
            ],
          )
        ],
      ),
    );
  }
}
