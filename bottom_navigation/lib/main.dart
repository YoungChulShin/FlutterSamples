import 'package:flutter/material.dart';
import './home.dart';
import './work.dart';
import './landscape.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp>{
  int _selectedPage = 0;
  final _pageOptions = [
    HomePage(),
    WorkPage(),
    LandscapePage() 
  ];


  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: Scaffold(
      appBar: AppBar(title: Text('Bottom Nav Bar'),),
      body: _pageOptions[_selectedPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedPage,
        onTap: (int index) {
          setState(() {
            _selectedPage = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work),
            title: Text('Work')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.landscape),
            title: Text('Landscape')
          ),
        ],
      ),
    )
  );
  }
}