import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  // constructor
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Text headingText = Text(
      "Welcome to AKTI",
      style: TextStyle(
        color: Colors.white,
        fontSize: 40,
        fontFamily: 'Arial',
      ),
    );

    Container box = Container(
      width: 200,
      height: 200,
      margin: EdgeInsets.only(left: 100, top: 100),
      padding: EdgeInsets.only(left: 20, top: 20),
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.yellow,
            width: 5,
          ),
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            colors: [Colors.red, Colors.amber, Colors.purple],
            begin: Alignment.topLeft,
            end: Alignment.bottomCenter,
          )),
      child: Text(
        'Dibba',
        style: TextStyle(color: Colors.white),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text(
          'AKTI App',
          style: TextStyle(color: Colors.white, fontSize: 40),
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.logout, color: Colors.white,)),
        ],
      ),
      body: Column(

        children: [

          ElevatedButton(
            style: ElevatedButton.styleFrom(
              // backgroundColor: Colors.green,
              // foregroundColor: Colors.yellow,
              elevation: 30,
            ),

            onPressed: (){
            print('LOGIN clicked');
          },
          child: Text('LOGIN'),

          ),

          TextButton(onPressed: (){}, child: Text("Not Registered Yet? SIGNUP")),
          
          OutlinedButton(onPressed: (){}, child: Text("REGISTER")),

          ElevatedButton.icon(onPressed: (){}, label: Text('Settings'),
            icon: Icon(Icons.settings),
          ),

          Icon(Icons.shopping_cart, color: Colors.blue, size: 50,),
          Icon(Icons.person),
          
          IconButton(onPressed: (){}, icon: Icon(Icons.rss_feed))
        ],

      ),
    );
  }
}
