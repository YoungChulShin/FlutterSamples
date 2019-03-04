import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin{

  TabController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller =TabController(vsync: this, length: 3);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.only(left: 15.0),
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 25.0),
                child: Icon(
                  Icons.camera_alt,
                  color: Color(0xFFEEB139),
                  size: 35.0
                ),
              ),
              SizedBox(height: 20.0),
              Padding(
                padding: EdgeInsets.only(right: 15.0),
                child: Text(
                  'Your Current Vehicle',
                  style: TextStyle(
                    color:Color(0xFF434C68).withOpacity(0.7),
                    fontSize: 50.0,
                    fontWeight:FontWeight.bold,
                    letterSpacing: 0.05
                  )
                ),
              ),
              SizedBox(height: 20.0),
              Image.asset(
                'assets/porsche.png', 
                fit: BoxFit.cover, 
                height: 175.0, 
                width: MediaQuery.of(context).size.width - 30.0
              ),
              Text(
                'PORSCHE',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold
                ),
              ),
              Text(
                '2019 - 911 CARREA S',
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF434C68).withOpacity(0.8)
                ),
              ),
              SizedBox(height: 10.0),
              Container(
                height: 0.75,
                width: MediaQuery.of(context).size.width - 30.0,
                color: Color(0xFF434C68).withOpacity(0.4)
              ),
              SizedBox(height: 20.0),
              Padding(
                padding: EdgeInsets.only(right: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Icon(Icons.card_travel, color: Color(0xFF434C68).withOpacity(0.4)),
                        SizedBox(height: 5.0),
                        Text(
                          '19/24',
                          style:TextStyle(
                            fontSize: 20.0,
                            fontWeight:FontWeight.bold
                          )
                        ),
                      ],
                    ),
                    SizedBox(width: 10.0),
                    Column(
                      children: <Widget>[
                        Icon(Icons.card_travel, color: Color(0xFF434C68).withOpacity(0.4)),
                        SizedBox(height: 5.0),
                        Text(
                          '19/24',
                          style:TextStyle(
                            fontSize: 20.0,
                            fontWeight:FontWeight.bold
                          )
                        ),
                      ],
                    ),
                    SizedBox(width: 10.0),
                    Column(
                      children: <Widget>[
                        Icon(Icons.card_travel, color: Color(0xFF434C68).withOpacity(0.4)),
                        SizedBox(height: 5.0),
                        Text(
                          '19/24',
                          style:TextStyle(
                            fontSize: 20.0,
                            fontWeight:FontWeight.bold
                          )
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 20.0,),
              Container(
                height: 0.75,
                width: MediaQuery.of(context).size.width - 30.0,
                color: Color(0xFF434C68).withOpacity(0.4)
              ),
              SizedBox(height: 10.0,),
              Row(
                children: <Widget>[
                  Icon(Icons.refresh, size: 35.0, color: Color(0xFF434C68).withOpacity(0.7)),
                  SizedBox(width: 10.0),
                  Text(
                    'EXCHANGE YOUR VEHICLE',
                    style: TextStyle(
                      color: Color(0xFF434C68).withOpacity(0.7),
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0
                    ),
                  ),
                  SizedBox(width: 10.0),
                  Icon(Icons.arrow_forward, size: 35.0, color: Color(0xFF434C68).withOpacity(0.7)),
                ],
              )
            ],
          )
        ],
      ),
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
          controller: controller,
          indicatorColor: Colors.transparent,
          tabs: <Widget>[
            Tab(icon: Icon(Icons.more, color: Colors.grey, size: 25.0)),
            Tab(icon: Icon(Icons.play_arrow, color: Colors.grey, size: 25.0)),
            Tab(icon: Icon(Icons.navigation, color: Colors.black, size: 25.0)),
          ],
        ),
      ),
    );
  }
}