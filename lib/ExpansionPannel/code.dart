import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/utils/DataFile.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/googlecode.dart';



class ExpansionPanelCode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    var code = '''
import 'package:flutter/material.dart';

class ExpansionPannelWidget extends StatefulWidget {
  @override
  _ExpansionPannelWidgetState createState() => _ExpansionPannelWidgetState();
}

class _ExpansionPannelWidgetState extends State<ExpansionPannelWidget> {

  List<Item> _data = generateItems(10);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ExpansionPannel"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Container(
            child: ExpansionPanelList(
              expansionCallback: (int index, bool isExpanded){
                setState(() {
                  _data[index].isExpanded = !isExpanded;
                });
              },
              children: _data.map<ExpansionPanel>((Item item){
                return ExpansionPanel(
                  headerBuilder: (BuildContext context, bool isExpanded){
                    return ListTile(
                      title: Text(item.headerValue),
                    );
                  },
                  body: ListTile(
                    title: Text(item.expandedValue),
                    subtitle: Text('Click To Delete'),
                    trailing:  Icon(Icons.delete),
                    onTap: () => setState(() => _data.removeWhere((currentItem) => item == currentItem) ,
                  ),
                  ),
                  isExpanded: item.isExpanded,
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}

class Item {
   Item({
     this.expandedValue,
     this.headerValue,
     this.isExpanded = false,
   });

  String expandedValue;
  String headerValue;
  bool isExpanded;
 
  }

  List<Item>  generateItems(int numberOfItems){
    return List.generate(numberOfItems, (int  index ) {
      return Item(
        headerValue: 'ExpansionPannel ',
        expandedValue: 'Item ');
    });
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
