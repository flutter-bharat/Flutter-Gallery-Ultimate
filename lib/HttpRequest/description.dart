import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/googlecode.dart';

class HttpRequestDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var code;
    Column(
      children: [
        HighlightView(
            code = '''final HOST = InternetAddress.loopbackIPv4;
final PORT = 80;

HttpServer.bind(HOST, PORT).then((_server) {
  _server.listen((HttpRequest request) {
    switch (request.method) {
      case 'GET':
        handleGetRequest(request);
        break;
      case 'POST':
        ...
    }
  },
  onError: handleError);    // listen() failed.
}).catchError(handleError);

      '''
        ),
      ],
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("Description"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all( 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20.0),
                Container(
                  height: 170,
                  width:370,
                  color: Colors.blue,
                ),
                SizedBox(height: 30.0),
                Container(
                  //   padding: EdgeInsets.symmetric(horizontal: 50.0),
                    child: Text("Http Request",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold))),
                SizedBox(height: 30.0),
                Container(
                  //    padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    children: [
                      Text("           A server-side object that contains the content of and information about"
                          " an HTTP request.",style: TextStyle(fontSize: 15,),),
                      SizedBox(height: 10.0,),
                      Text("           HttpRequest objects are generated by an HttpServer, which listens for HTTP requests on a specific host and port. "
                          "For each request received, the HttpServer, which is a Stream, generates an HttpRequest object and adds it"
                          " to the stream.",style: TextStyle(fontSize: 15),),
                      SizedBox(height: 10.0,),
                      Text("           An HttpRequest object delivers the body content of the request as a stream of byte lists. "
                          "The object also contains information about the request, such as the "
                          "method, URI, and headers.",style: TextStyle(fontSize: 15),),
                    ],
                  ),
                ),
                SizedBox(height: 30.0),
                Text("Demo Code",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold)),
                SizedBox(height: 20.0),
                Container(
                  height: 380,
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
