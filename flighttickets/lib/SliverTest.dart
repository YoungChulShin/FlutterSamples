import 'package:flutter/material.dart';

class SliverTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget> [
            SliverAppBar(
              expandedHeight: 200.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Text(
                  '2019.04.21(일)',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              backgroundColor: Colors.white,
              elevation: 0.0,
            ),
            new SliverPadding(
              padding: new EdgeInsets.all(16.0),
              sliver: new SliverList(
                delegate: new SliverChildListDelegate([
                  Container(
                    decoration: BoxDecoration(color: Colors.white),
                    child: Center(
                      child: Text('1개 도전 완료', style: TextStyle(fontSize: 30)),
                    ),
                  )
                ]),
              ),
            ),
          ];
        },
        body: Container(
          decoration: BoxDecoration(color: Colors.white),
          child: Text('Test')
        )
      ),
    );
  }
}
