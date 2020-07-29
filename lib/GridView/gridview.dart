import 'package:flutter/material.dart';

class GridViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView"),
        centerTitle: true,
      ),
      body:Container(
        child: GridView.count(
            crossAxisCount: 3,
            crossAxisSpacing: 8,
            padding: EdgeInsets.all(8),
            childAspectRatio: 1,
            mainAxisSpacing: 8,
          children: generateGrid(),
        ),
      ),
    );
  }
}

generateGrid(){
  return List.generate(21, (index)  {
    return Container(
      color: Colors.blueAccent,
      child: Center(child: Text('$index')),
  );
});
}