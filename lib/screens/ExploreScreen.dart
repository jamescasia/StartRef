import 'package:flutter/material.dart';
import 'HomeScreen.dart';

class ExploreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.white,
    );
  }
}

class ExplorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      width: screenWidth,
      color: Colors.white,

      child: new GridView.count(
          crossAxisCount: 4,
          childAspectRatio: 1.0,
          padding: const EdgeInsets.all(4.0),
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 4.0,
          children: <String>[
            'http://www.for-example.org/img/main/forexamplelogo.png',
            'http://www.for-example.org/img/main/forexamplelogo.png',
            'http://www.for-example.org/img/main/forexamplelogo.png',
            'http://www.for-example.org/img/main/forexamplelogo.png',
            'http://www.for-example.org/img/main/forexamplelogo.png',
            'http://www.for-example.org/img/main/forexamplelogo.png',
            'http://www.for-example.org/img/main/forexamplelogo.png',
            'http://www.for-example.org/img/main/forexamplelogo.png',
            'http://www.for-example.org/img/main/forexamplelogo.png',
            'http://www.for-example.org/img/main/forexamplelogo.png',
            'http://www.for-example.org/img/main/forexamplelogo.png',
          ].map((String url) {
            return new GridTile(
                child: new Icon(Icons.ac_unit,color: Colors.black,));
          }).toList()),
    );
  }
}
