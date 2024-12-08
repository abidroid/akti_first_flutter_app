import 'package:akti_first_flutter_app/screens/gridview_demo_screen.dart';
import 'package:akti_first_flutter_app/screens/listview_demo_screen.dart';
import 'package:akti_first_flutter_app/screens/second_screen.dart';
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
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text(
          'AKTI App',
          style: TextStyle(color: Colors.white, fontSize: 40),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.logout,
                color: Colors.white,
              )),
        ],
      ),
      body: ListView(
        children: [

          Image.asset('pictures/profile_screen.png', width: 400, height: 200,),
          SizedBox(height: 20,),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              // backgroundColor: Colors.green,
              // foregroundColor: Colors.yellow,
              elevation: 30,
            ),
            onPressed: () {
              print('LOGIN clicked');
            },
            child: Text('LOGIN'),
          ),
          TextButton(
              onPressed: () {}, child: Text("Not Registered Yet? SIGNUP")),
          OutlinedButton(onPressed: () {}, child: Text("REGISTER")),
          ElevatedButton.icon(
            onPressed: () {},
            label: Text('Settings'),
            icon: Icon(Icons.settings),
          ),
          Icon(
            Icons.shopping_cart,
            color: Colors.blue,
            size: 50,
          ),
          Icon(Icons.person),
          IconButton(onPressed: () {}, icon: Icon(Icons.rss_feed)),
          ElevatedButton(
              onPressed: () {
                // Navigator
                // MaterialPageRoute

                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return SecondScreen();
                }));
              },
              child: const Text("Go to 2nd Screen")),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return ListviewDemoScreen();
                }));
              },
              child: const Text("Show Doctors List")),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return GridviewDemoScreen();
                }));
              },
              child: const Text("Show Doctors Grid")),
          CircleAvatar(
            radius: 100,
            backgroundColor: Colors.orange,
            backgroundImage: AssetImage(
              'pictures/profile_screen.png',
            ),
          ),
          Image.network(
            'https://avatars.githubusercontent.com/u/17814795?v=4',
            width: 200,
            height: 200,
          ),
          Image(
            image: NetworkImage(
                'https://avatars.githubusercontent.com/u/17814795?v=4'),
          )
        ],
      ),
    );
  }
}
