import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_newprice;
  final product_detail_oldprice;
  final product_detail_pic;

  ProductDetails(
  {
    this.product_detail_name,
    this.product_detail_oldprice,
    this.product_detail_newprice,
    this.product_detail_pic,

}
      );

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
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

      body: new ListView(
        children: [
          new Container(
            height: 250.0,
            child: GridTile(
              child: Container(
                color: Colors.white70,
                child: Image.asset(widget.product_detail_pic),
              ),
              footer: new Container(
                color: Colors.white70,
                child: ListTile(
                leading: new Text(widget.product_detail_name,
                style: TextStyle(fontWeight: FontWeight.bold,
                fontSize: 16.0),),
                title: new Row(
                  children: [
                    Expanded(child:
                    Text("OldPrice  \$" +(  widget.product_detail_oldprice).toString(),
                    style: TextStyle(
                      color: Colors.grey,
                      decoration: TextDecoration.lineThrough
                    ),),

                    ),
                    Expanded(child:
                    Text("Price \$" +(widget.product_detail_newprice).toString(),
                    style: TextStyle(fontWeight: FontWeight.bold,
                    color: Colors.black54),))
                  ],
                ),  
              ),
                

              ),
            ),

          ),









          Row(
            children: [
              Expanded(child: MaterialButton(
                onPressed: (){},
                color: Colors.white,
                textColor: Colors.grey,
                child: Row(
                  children: [
                    Expanded(child:
                    new Text("Size"),
                    ),
                    Expanded(child:
                    new Icon(Icons.arrow_drop_down),
                    ),
                  ],
                ),
              ),
              ),

              Expanded(child: MaterialButton(
                onPressed: (){},
                color: Colors.white,
                textColor: Colors.grey,
                child: Row(
                  children: [
                    Expanded(child:
                    new Text("Color"),
                    ),
                    Expanded(child:
                    new Icon(Icons.arrow_drop_down),
                    ),
                  ],
                ),
              ),
              ),


              Expanded(child: MaterialButton(
                onPressed: (){},
                color: Colors.white,
                textColor: Colors.grey,
                child: Row(
                  children: [
                    Expanded(child:
                    new Text("Quantity"),
                    ),
                    Expanded(child:
                    new Icon(Icons.arrow_drop_down),
                    ),
                  ],
                ),
              ),
              ),
            ],

          ),
        ],
      ),
     

    );
  }
}
