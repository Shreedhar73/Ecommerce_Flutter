import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

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
    );
    Widget titleSection = new Container();


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
              onTap: (){},
              child: ListTile(
                title: Text('My account'),
                leading: Icon(Icons.person, color: Colors.purple,),
              ),
            ),
            InkWell(
              onTap: (){},
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



          ],
        ),
      ),

      body: Column(
        children: [
          titleSection,

        ],

      ),

    );
  }

}
