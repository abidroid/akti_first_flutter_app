import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  // constructor
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Text headingText = Text(
      "Welcome to confusion",
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

        border: Border.all(color: Colors.yellow, width: 5,),
        borderRadius: BorderRadius.circular(20),

        gradient: LinearGradient(colors: [
          Colors.red, Colors.amber, Colors.purple],

          begin: Alignment.topLeft,
          end: Alignment.bottomCenter,
        )

      ),

      child: Text('Dibba', style: TextStyle(color: Colors.white),),
    );

    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text(
          'AKTI App',
          style: TextStyle(color: Colors.white, fontSize: 40),
        ),
      ),
      body: box,
    );
  }
}
