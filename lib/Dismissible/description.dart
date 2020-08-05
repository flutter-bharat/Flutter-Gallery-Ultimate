import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/utils/DataFile.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/googlecode.dart';

class DismissibleDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var code;
    Column(
      children: [
        HighlightView(
            code = '''import 'package:dismissable_listview/models/movie.dart';
import 'package:dismissable_listview/widgets/movie-card.dart';
import 'package:flutter/material.dart';
 
class MoviesPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MoviesPageState();
  }
}
 
class _MoviesPageState extends State<MoviesPage> {
  final List<Movie> movies = MovieList.getMovies();
 
  Widget _buildMoviesList() {
    return Container(
      child: movies.length > 0
          ? ListView.builder(
              itemCount: movies.length,
              itemBuilder: (BuildContext context, int index) {
                return Dismissible(
                  onDismissed: (DismissDirection direction) {
                    setState(() {
                      movies.removeAt(index);
                    });
                  },
                  secondaryBackground: Container(
                    child: Center(
                      child: Text(
                        'Delete',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    color: Colors.red,
                  ),
                  background: Container(),
                  child: MovieCard(movie: movies[index]),
                  key: UniqueKey(),
                  direction: DismissDirection.endToStart,
                );
              },
            )
          : Center(child: Text('No Items')),
    );
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Movies'),
      ),
      body: _buildMoviesList(),
    );
  }
}
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
                    child: Text("Dismissible",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold))),
                SizedBox(height: 30.0),
                Container(
                  //    padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    children: [
                      Text("           A widget that can be dismissed by dragging in the indicated direction."
                          "Dragging or flinging this widget in the DismissDirection causes the child to slide out of"
                          " view. Following the slide animation, if resizeDuration is non-null, the Dismissible widget "
                          "animates its height (or width, whichever is perpendicular to the dismiss direction) to zero over "
                          "the resizeDuration. ",style: TextStyle(fontSize: 15,),),
                      SizedBox(height: 10.0,),
                      Text("           The widget calls the onDismissed callback either after its size has collapsed to "
                          "zero (if resizeDuration is non-null) or immediately after the slide animation (if resizeDuration "
                          "is null). If the Dismissible is a list item, it must have a key that distinguishes it from the"
                          " other items and its onDismissed callback must remove the item from"
                          " the list.",style: TextStyle(fontSize: 15),),
                    ],
                  ),
                ),
                SizedBox(height: 30.0),
                Text("Demo Code",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold)),
                SizedBox(height: 20.0),
                Container(
                  height: 400,
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
