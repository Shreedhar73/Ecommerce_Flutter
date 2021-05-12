import 'package:flutter/material.dart';

class myAccount extends StatefulWidget {
  @override
  _myAccountState createState() => _myAccountState();
}

class _myAccountState extends State<myAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.blueGrey,
        title: Text('Shopify'),
        actions: <Widget>[
          new IconButton(
            icon: Icon(Icons.search),
            color: Colors.white,
            onPressed: () {},
          ),
          new IconButton(
            icon: Icon(Icons.shopping_cart),
            color: Colors.white,
            onPressed: () {},
          ),
        ],
      ),

    );
  }
}
