import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/utils/DataFile.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/googlecode.dart';

class FadeInImageDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var code;
    Column(
      children: [
        HighlightView(
            code = '''FadeInImage(
  // here `bytes` is a Uint8List containing the bytes for the in-memory image
  placeholder: MemoryImage(bytes),
  image: NetworkImage('https://backend.example.com/image.png'),
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
                    child: Text("FadeInImage",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold))),
                SizedBox(height: 30.0),
                Container(
                  //    padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    children: [
                      Text("           An image that shows a placeholder image while the target image is loading, then fades in the new"
                          " image when it loads.",style: TextStyle(fontSize: 15,),),
                      SizedBox(height: 10.0,),
                      Text("           Use this class to display long-loading images, such as new NetworkImage, so that the image "
                          "appears on screen with a graceful animation rather than abruptly popping onto "
                          "the screen.",style: TextStyle(fontSize: 15),),
                      SizedBox(height: 10.0,),
                      Text("           If the image emits an ImageInfo synchronously, such as when the image has been "
                          "loaded and cached, the image is displayed immediately, and the placeholder is"
                          " never displayed.",style: TextStyle(fontSize: 15,),),
                      SizedBox(height: 10.0,),
                      Text("           The fadeOutDuration and fadeOutCurve properties control the fade-out animation of the"
                          " placeholder.The fadeInDuration and fadeInCurve properties control the fade-in animation of "
                          "the target image.",style: TextStyle(fontSize: 15,),),
                      SizedBox(height: 10.0,),
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
