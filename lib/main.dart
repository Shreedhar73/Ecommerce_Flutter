import 'package:ecommerce_flutter/Pages/loginPage.dart';
import 'package:ecommerce_flutter/Pages/myAccount.dart';
import 'package:ecommerce_flutter/Pages/myOrders.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:ecommerce_flutter/components/horizontal_listview.dart';
import 'package:ecommerce_flutter/components/Products.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override

  Widget build(BuildContext context) {

    Widget imageCarousel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/PP.jpg'),
          AssetImage('images/2.jpg'),
          AssetImage('images/X2.jpg'),
          AssetImage('images/Insa.jpg'),
          AssetImage('images/c1.jpg'),

          AssetImage('images/4.jpg'),
          AssetImage('images/5.jpg'),
          AssetImage('images/m1.jpeg'),
          AssetImage('images/m2.jpg'),
        ],
        autoplay: false,
        // animationCurve: Curves.fastOutSlowIn,
        // animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        dotColor: Colors.black,
        indicatorBgPadding: 2.0,


      ),

    );
    Widget category = new Container(
      height: 50.0,
      child: new Row(),
    );


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
      drawer: new Drawer(


        child: new ListView(




          children: <Widget>[




            //header
            new UserAccountsDrawerHeader(
                accountName: Text('Shreedhar Pandeya',
                style : TextStyle(
                  color: Colors.white,
                ), ),
                accountEmail: Text('fa113n700@gmail.com'),
            currentAccountPicture: GestureDetector(
              child: new CircleAvatar(
                backgroundColor: Colors.grey,
                backgroundImage: AssetImage('images/2.jpg'),
             //   child: Image(image:AssetImage('images/4.jpg')),
              ),
            ),

            decoration: new BoxDecoration(
              color: Colors.blueGrey,
            ),


            ),



            //body
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Home Page'),
                leading: Icon(Icons.home, color: Colors.purple,),
              ),
            ),
            InkWell(
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                  builder: (context) => new myAccount())),
              child: ListTile(
                title: Text('My account'),
                leading: Icon(Icons.person, color: Colors.purple,),
              ),
            ),
            InkWell(
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                  builder: (context) => new myOrders())),
              child: ListTile(
                title: Text('My orders'),
                leading: Icon(Icons.shopping_bag_sharp, color: Colors.purple,),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Categories'),
                leading: Icon(Icons.category, color: Colors.purple,),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Favourites'),
                leading: Icon(Icons.favorite, color: Colors.purple,),
              ),
            ),

            Divider(),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings, color: Colors.purple,),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('About'),
                leading: Icon(Icons.help_rounded, color: Colors.purple,),
              ),
            ),

            InkWell(
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(builder: (context) => new loginPage())),
                child: ListTile(
                  title: Text('LogOut'),
                  leading: Icon(Icons.login_outlined, color: Colors.purple,),
                )
              ,
            ),



          ],
        ),
      ),

      body: ListView(
        children: [

          imageCarousel,
          new Padding(padding: const EdgeInsets.all(19.0),
          child: new Text('Categories',
          style: TextStyle(color: Colors.blueGrey,
          fontSize: 16.0,),),
          ),
          //Horizontal List View
          HorizontalList(),

          //Divider(),


          new Padding(padding: const EdgeInsets.all(19.0),
            child: new Text('Recent Products',
              style: TextStyle(color: Colors.blueGrey,
                fontSize: 16.0,),),
          ),

          //grid view
          Container(
            height: 300.0,
              child: Products(),
          )


        ],

      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        backgroundColor: Colors.blueGrey,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home,
            color: Colors.redAccent,
            ),
            title: new Text('Home',
            style: TextStyle(color: Colors.pinkAccent,),),


          ),

          BottomNavigationBarItem(icon: new Icon(Icons.mail,
          color: Colors.pinkAccent,),
            title: new Text('Email'
            ,style: TextStyle(color: Colors.pinkAccent,),),
          )
        ],
      )

    );
  }

}
