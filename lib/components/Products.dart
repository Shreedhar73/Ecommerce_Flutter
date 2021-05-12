import 'package:flutter/material.dart';
import 'package:ecommerce_flutter/Pages/productDetails.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {

  var productList = [
    {
      "name": "Blazer1",
      "picture": "images/products/blazer1.jpeg",
      "oldPrice": 1000,
      "price": 900,
    },

    {
      "name": "Blazer2",
      "picture": "images/products/blazer2.jpeg",
      "oldPrice": 11000,
      "price": 900,
    },

    {
      "name": "Dress",
      "picture": "images/products/dress1.jpeg",
      "oldPrice": 11000,
      "price": 900,
    },

    {
      "name": "Pant",
      "picture": "images/products/pants1.jpg",
      "oldPrice": 11000,
      "price": 900,
    },
    {
      "name": "Pant2",
      "picture": "images/products/pants2.jpeg",
      "oldPrice": 11000,
      "price": 900,
    },
    {
      "name": "Shoe",
      "picture": "images/products/shoe1.jpg",
      "oldPrice": 11000,
      "price": 900,
    },

  ];


  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: productList.length,
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2),
        itemBuilder: (BuildContext contex, int index) {
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

  final productName;
  final prodPic;
  final prodOldpric;
  final prodPrice;

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
          child: InkWell(
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                  builder: (context) => new ProductDetails(
                    //passing the value of products to the productDetails page
                    product_detail_name: productName,
                    product_detail_newprice: prodPrice,
                    product_detail_oldprice: prodOldpric,
                    product_detail_pic: prodPic,
                  ))),
          child: GridTile(
            footer: Container(
              color: Colors.white70,
              child: ListTile(
                leading: Text(productName,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                title: Text("\$$prodPrice",
                  style: TextStyle(color: Colors.purple,),),
                subtitle: Text("\$$prodOldpric",
                style: TextStyle(color: Colors.purple),),
              ),
            ),
            child: Image.asset(prodPic,
              fit: BoxFit.cover,),
          ),),
      ),),);
  }
}

