import 'package:flutter/material.dart';

/*
class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}
*/

class LandscapePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25.0),
      child: Text('Landscape', style: TextStyle(fontSize: 36.0),),
    );
  }
}