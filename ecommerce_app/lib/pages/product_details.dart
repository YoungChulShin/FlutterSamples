import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final productDetailName;
  final productDetailNewPrice;
  final productDetailOldPrice;
  final productDetailPicture;

  ProductDetails({
    this.productDetailName,
    this.productDetailNewPrice,
    this.productDetailOldPrice,
    this.productDetailPicture
  });

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.red,
        title: Text('Test'),
        actions: <Widget>[
          IconButton(icon:Icon(Icons.search, color: Colors.white), onPressed: (){}),
          IconButton(icon:Icon(Icons.shopping_cart, color: Colors.white), onPressed: (){})
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.productDetailPicture),
              ),
            ),
          )
        ],
      ),
    );
  }
}