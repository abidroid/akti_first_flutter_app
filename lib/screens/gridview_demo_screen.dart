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
      body: GridView.builder(
        itemCount: doctorsList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2) ,
          itemBuilder: (BuildContext context, int index){
            return Card(
                color: Colors.yellow,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(doctorsList[index].name),
                    Text(doctorsList[index].spe),
                    Text(doctorsList[index].mobile ?? "NA"),

                  ],
                ));
          })
    );
  }
}
