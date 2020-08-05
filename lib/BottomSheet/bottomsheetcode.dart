import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/utils/DataFile.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/googlecode.dart';



class BottomSheetCode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    var code = '''
  import 'package:flutter/material.dart';

class BottomSheetWidget extends StatefulWidget {
  @override
  _BottomSheetWidgetState createState() => _BottomSheetWidgetState();
}

class _BottomSheetWidgetState extends State<BottomSheetWidget> {

  List list = ['Option A', 'Option B', 'Option C'];
  var bottomSheetController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BottomSheet"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 120.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              color: Colors.red,
              child: Text("ShowBottomSheet",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20.0),),
              onPressed: 
            (){
              _openShowModal();
            }),
          ],
        ),
      ), 
    );
  }


Future _openShowModal() async{
  final option = await showModalBottomSheet(context: context, builder: (BuildContext context){
    return Container(
              color: Colors.blue,
              height: 200,
              child: ListView(
                children: List.generate(3, (index) {
                  return ListTile(
                    title: Text(list[index],style: TextStyle(color: Colors.white,fontSize: 20),),
                    onTap: (){
                      Navigator.pop(context, list[index]);
                    },
                  );
                })
              ),
            );
          });
      }
}
    ''';


    return Scaffold(
     appBar: customizedAppBar("Code"),
      body: ListView(
        children: [
        HighlightView(
        // The original code to be highlighted
        code,

        // Specify language
        // It is recommended to give it a value for performance
        language: 'dart',

        // Specify highlight theme
        // All available themes are listed in `themes` folder
          theme: googlecodeTheme   ,

        // Specify padding
        padding: EdgeInsets.all(12),

        // Specify text style
        textStyle: TextStyle(
          fontFamily: 'My awesome monospace font',
          fontSize: 16,
        ),
        ),
        ],
      ),
    );
  }
}
