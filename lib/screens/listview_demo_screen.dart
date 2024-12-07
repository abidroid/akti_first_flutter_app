
import 'package:flutter/material.dart';

import '../models/doctor.dart';

class ListviewDemoScreen extends StatelessWidget {
  const ListviewDemoScreen({super.key});

  @override
  Widget build(BuildContext context) {

    // Hard coded
    List<String> friendsList = [
      'Ali',
      'Bilal',
      'Khan',
      'Raza',
      'Hina',
      'Zia',
      'Ali',
      'Bilal',
      'Khan',
      'Raza',
      'Hina',
      'Zia',
      'Ali',
      'Bilal',
      'Khan',
      'Raza',
      'Hina',
      'Zia',
    ];

    List<Doctor> doctorsList = [
      Doctor(name: 'Ali', spe: 'ENT'),
      Doctor(name: 'Bilal', spe: 'Cardiologist', mobile: '0332993939393'),
      Doctor(name: 'Hina', spe: 'General Physician'),
      Doctor(name: 'Abid', spe: 'Orthopedic'),
      Doctor(name: 'Salman', spe: 'Dentist', mobile: '0332993939393'),
      Doctor(name: 'Gia', spe: 'Anesthesia'),
    ];
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Friends List'),),

      body: ListView.builder(
          itemCount: doctorsList.length,

          itemBuilder: (BuildContext context, int index){
            return Card(

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(doctorsList[index].name, style: TextStyle(fontSize: 30),),
                      Text(doctorsList[index].spe, style: TextStyle(fontSize: 30),),
                      Text(doctorsList[index].mobile ?? '', style: TextStyle(fontSize: 30),),

                    ],
                  ),
                ));
          }),
    );
  }
}

/*
Card(

              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(friendsList[0], style: TextStyle(fontSize: 30),),
              )),
 */