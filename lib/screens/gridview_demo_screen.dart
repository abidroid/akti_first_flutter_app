import 'package:flutter/material.dart';

import '../models/doctor.dart';

class GridviewDemoScreen extends StatelessWidget {
  const GridviewDemoScreen({super.key});

  @override
  Widget build(BuildContext context) {

    List<Doctor> doctorsList = [
      Doctor(name: 'Ali', spe: 'ENT'),
      Doctor(name: 'Bilal', spe: 'Cardiologist', mobile: '0332993939393'),
      Doctor(name: 'Hina', spe: 'General Physician'),
      Doctor(name: 'Abid', spe: 'Orthopedic'),
      Doctor(name: 'Salman', spe: 'Dentist', mobile: '0332993939393'),
      Doctor(name: 'Gia', spe: 'Anesthesia'),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('GridView Demo'),
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 300,
            crossAxisSpacing: 5,
          mainAxisSpacing: 5,
          mainAxisExtent: 200,
        ),
        children: [
          Container(color: Colors.red,),
          Container(color: Colors.green,),
          Container(color: Colors.blue,),
          Container(color: Colors.cyan,),
          Container(color: Colors.red,),
          Container(color: Colors.green,),
          Container(color: Colors.brown,),
          Container(color: Colors.cyan,),
          Container(color: Colors.red,),
          Container(color: Colors.green,),
          Container(color: Colors.blue,),
          Container(color: Colors.cyan,),
          Container(color: Colors.red,),
          Container(color: Colors.yellow,),
          Container(color: Colors.brown,),
          Container(color: Colors.pink,),
          Container(color: Colors.brown,),
          Container(color: Colors.cyan,),
          Container(color: Colors.red,),
          Container(color: Colors.green,),
          Container(color: Colors.blue,),
          Container(color: Colors.cyan,),
          Container(color: Colors.red,),
          Container(color: Colors.yellow,),
          Container(color: Colors.brown,),
          Container(color: Colors.pink,),
        ],
      ),
    );
  }
}
