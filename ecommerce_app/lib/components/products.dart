import 'package:flutter/material.dart';
import 'package:ecommerce_app/pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {

  var productList = [
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "oldPrice": 120,
      "price": 85
    },
    {
      "name": "Red dress",
      "picture": "images/products/dress1.jpeg",
      "oldPrice": 100,
      "price": 50
    }
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: productList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), 
      itemBuilder: (BuildContext context, int index){
        return SingleProduct(
          productName: productList[index]['name'],
          productPicture: productList[index]['picture'],
          productOldPrice: productList[index]['oldPrice'],
          productPrice: productList[index]['price']
        );
      });
  }
}

class SingleProduct extends StatelessWidget {

  final productName;
  final productPicture;
  final productOldPrice;
  final productPrice;

  SingleProduct({
    this.productName, 
    this.productPicture, 
    this.productOldPrice, 
    this.productPrice
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Hero(
          tag: productName,
          child: Material(
            child: InkWell(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProductDetails(
                productDetailName: productName,
                productDetailNewPrice: productPrice,
                productDetailOldPrice: productOldPrice,
                productDetailPicture: productPicture,
              ))),
              child: GridTile(
                footer: Container(
                  color: Colors.white70,
                  child: ListTile(
                    leading: Text(productName, style: TextStyle(fontWeight: FontWeight.bold),),
                    title: Text('\$$productPrice', style: TextStyle(color: Colors.red, fontWeight: FontWeight.w800)),
                    subtitle: Text('\$$productOldPrice', 
                      style: TextStyle(
                        color: Colors.black54, 
                        fontWeight: FontWeight.w800,
                        decoration: TextDecoration.lineThrough)),
                  ),
                ),
                child: Image.asset(productPicture, fit: BoxFit.cover),
              ),
            ),
          ),
        ),
      )
    );
  }
}