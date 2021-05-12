import 'package:ecommerce_flutter/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'myAccount.dart';

class loginPage extends StatefulWidget {
  @override
  _loginPageState createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Ink(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/Insa.jpg'),
                fit: BoxFit.cover,
              )
            ),
            child: Container(
              color: Colors.blueGrey.withOpacity(0.5),
              padding: const EdgeInsets.all(50.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 55.0,),
                  Text(
                    "Shopify",
                    style: TextStyle(
                      color: Colors.white54,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 50.0),
                  Text(
                    "LOGIN",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                    textAlign: TextAlign.center,
                  ),

                  const SizedBox(height: 30.0,),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white70,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: BorderSide(color: Colors.white70),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white70),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      hintText: "email",
                      hintStyle: TextStyle(
                        color: Colors.black38,
                        fontWeight: FontWeight.w300,
                        fontSize: 16.0,
                      )

                    ),
                  ),

                  const SizedBox(height: 20.0),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white70,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6.0),
                        borderSide: BorderSide(color: Colors.white70),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6.0),
                        borderSide: BorderSide(color: Colors.white70),
                      ),
                      hintText: "password",
                      hintStyle: TextStyle(
                        color: Colors.black38,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w300,
                      )
                    ),
                  ),

                  const SizedBox(height: 50.0),
                  RaisedButton(
                      elevation: 0,
                      color: Colors.pinkAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),

                      ),
                      onPressed: () => Navigator.of(context).push(new MaterialPageRoute(
                            builder: (context) => new HomePage())),
                    textColor: Colors.white70,
                    padding: const EdgeInsets.all(16.0),

                  child: Text(
                    "LOGIN",
                    style: TextStyle(fontWeight: FontWeight.w600,
                    fontSize: 18.0,
                    ),
                  ),

                  )


                ],
              ),
            ),
          ),





          SizedBox(height: 20,),
          Center(
            child: Text("FORGOT PASSWORD ?", style: TextStyle(color:Colors.pinkAccent,fontSize: 12 ,fontWeight: FontWeight.w700),),
          ),
          SizedBox(height: 40,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Don't have an Account ? ", style: TextStyle(color:Colors.black,fontSize: 12 ,fontWeight: FontWeight.normal),),
              InkWell(
                onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                    builder: (context) => new myAccount())),
                  child: Text("Sign Up ", style: TextStyle(color:Colors.pinkAccent, fontWeight: FontWeight.w500,fontSize: 12, decoration: TextDecoration.underline ))),

            ],
          )

        ],

      ),


    );
  }
}
