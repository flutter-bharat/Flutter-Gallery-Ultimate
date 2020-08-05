import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/utils/DataFile.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/googlecode.dart';

class TextFieldDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var code;
    Column(
      children: [
        HighlightView(
            code = '''TextField(
  obscureText: true,
  decoration: InputDecoration(
    border: OutlineInputBorder(),
    labelText: 'Password',
  ),
)
      '''
        ),
      ],
    );

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
                    child: Text("TextField",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold))),
                SizedBox(height: 30.0),
                Container(
                  //    padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    children: [
                      Text("           A material design text field.A text field lets the user enter text, either"
                          " with hardware keyboard or with an onscreen keyboard.",style: TextStyle(fontSize: 15,),),
                      SizedBox(height: 10.0,),
                      Text("           The text field calls the onChanged callback whenever the user changes the text in the field. If the user indicates that they are "
                          "done typing in the field (e.g., by pressing a button on the soft keyboard), the text field calls the "
                          "onSubmitted callback.",style: TextStyle(fontSize: 15),),
                      SizedBox(height: 10.0,),
                      Text("           To control the text that is displayed in the text field, use the controller. For example, to set the initial value of the text field, use a controller that already contains some text. The controller "
                          "can also control the selection and composing region (and to observe changes to the text, selection, and "
                          "composing region).",style: TextStyle(fontSize: 15),),
                      SizedBox(height: 10.0,),
                      Text("           By default, a text field has a decoration that draws a divider below the text field. You can use the decoration property to control the decoration, for example by adding a label or an icon. If you set the decoration property to null, the decoration "
                          "will be removed entirely, including the extra padding introduced by the decoration to save space for the "
                          "labels.",style: TextStyle(fontSize: 15),),
                    ],
                  ),
                ),
                SizedBox(height: 30.0),
                Text("Demo Code",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold)),
                SizedBox(height: 20.0),
                Container(
                  height: 200,
                  width: 370,
                  child: Card(
                    shadowColor: Colors.grey,
                    elevation: 15,
                    child: ListView(
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
                      Text("TextFormField",style: TextStyle(color: Colors.blue,fontSize: 17),),
                      SizedBox(height: 5.0),
                      Text("Which integrates with the Form widget.",style: TextStyle(fontSize: 15),),
                      SizedBox(height: 20.0),
                      Text("InputDecorator",style: TextStyle(color: Colors.blue,fontSize: 17),),
                      SizedBox(height: 5.0),
                      Text("Which shows the labels and other visual elements that surround the actual text editing widget.",style: TextStyle(fontSize: 15),),
                      SizedBox(height: 20.0),
                      Text("EditableText",style: TextStyle(color: Colors.blue,fontSize: 17),),
                      SizedBox(height: 5.0),
                      Text("which is the raw text editing control at the heart of a TextField. The EditableText widget is rarely "
                          "used directly unless you are implementing an entirely different design language, such as Cupertino.",style: TextStyle(fontSize: 15),),
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
