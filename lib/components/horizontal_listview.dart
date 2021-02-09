import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children:<Widget> [
          Categories(
            imageLocation: 'images/cats/accessories.png',
            imageCaption: 'Accessories',
          ),

          Categories(
            imageLocation: 'images/cats/dress.png',
            imageCaption: 'Dress',
          ),
          Categories(
            imageLocation: 'images/cats/formal.png',
            imageCaption: 'Formal',
          ),

          Categories(
            imageLocation: 'images/cats/tshirt.png',
            imageCaption: 'Tshirt',
          ),
          Categories(
            imageLocation: 'images/cats/informal.png',
            imageCaption: 'Informal',
          ),
          Categories(
            imageLocation: 'images/cats/shoe.png',
            imageCaption: 'Shoes',
          ),
          Categories(
            imageLocation: 'images/cats/jeans.png',
            imageCaption: 'Jeans',
          ),





        ],

      ),

    );
  }
}
class Categories extends StatelessWidget {
  final String imageLocation;
  final String imageCaption;

  Categories({
    this.imageCaption,
    this.imageLocation

});


  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(4.0),
    child: InkWell(
      onTap: (){},
      child: Container(
        width: 90.0,

        child: ListTile(
          title: Image.asset(imageLocation,
          width: 100.0, height: 80.0,
          ),
          subtitle: Container(
            alignment: Alignment.topCenter,
            child: Text(imageCaption, style: new TextStyle(fontSize: 10.5, color: Colors.black, ),),

          ),
          


        ),
      ),
    ),);
  }
}





