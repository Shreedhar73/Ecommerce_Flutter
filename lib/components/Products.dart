import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {

  var productList = [
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "oldPrice":1000,
      "price":900,
    },

    {
      "name": "Blazer",
      "picture": "images/products/blazer2.jpeg",
      "oldPrice":11000,
      "price":900,
    },

    {
      "name": "Dress",
      "picture": "images/products/dress1.jpeg",
      "oldPrice":11000,
      "price":900,
    },

    {
      "name": "Blazer",
      "picture": "images/products/dress2.jpeg",
      "oldPrice":11000,
      "price":900,
    },

  ];
  


  @override
  Widget build(BuildContext context) {

    return GridView.builder(
        itemCount: productList.length,
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2) ,
        itemBuilder: (BuildContext contex, int index){
          return Single_products(
          productName: productList[index]['name'],
          prodPic: productList[index]['picture'],
          prodOldpric: productList[index]['oldPrice'],
          prodPrice: productList[index]['price'],
          );
    });
  }
}

class Single_products extends StatelessWidget {

  final  productName;
  final  prodPic;
  final  prodOldpric;
  final  prodPrice;

  Single_products({
    this.productName,
    this.prodPic,
    this.prodOldpric,
    this.prodPrice,

    });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(tag: productName,
      child: Material(
        child: InkWell(onTap: (){},
        child: GridTile(
          footer: Container(
            color: Colors.white70,
            child: ListTile(
              leading: Text(productName,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
              title: Text("\$$prodPrice",
              style: TextStyle(color: Colors.purple,),),
            ),
          ),
          child: Image.asset(prodPic,
          fit: BoxFit.cover,),
        ),),
      ),),
    );
  }
}

