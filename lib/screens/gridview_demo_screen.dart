import 'package:flutter/material.dart';

import '../models/doctor.dart';
import 'doctor_detail_screen.dart';

class GridviewDemoScreen extends StatelessWidget {
  const GridviewDemoScreen({super.key});

  @override
  Widget build(BuildContext context) {

    List<Doctor> doctorsList = [
      Doctor(name: 'Abu Bakar', spe: 'Flutter Specialist', clinicAddress: 'AKTI',),
      Doctor(name: 'Ali', spe: 'ENT', clinicAddress: 'KMC Dabgari'),
      Doctor(name: 'Bilal', spe: 'Cardiologist', mobile: '0332993939393'),
      Doctor(
        name: 'Hina',
        spe: 'General Physician',
        clinicAddress: 'CMH',
        clinicTime: '5pm - 8pm',
        fee: 5000,
      ),
      Doctor(name: 'Abid', spe: 'Orthopedic', imagePath: 'https://avatars.githubusercontent.com/u/17814795?v=4'),
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
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
          crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ) ,
          itemBuilder: (BuildContext context, int index){
            return InkWell(
              onTap: (){


                Doctor doctor = doctorsList[index];

                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return DoctorDetailScreen(doctor: doctor,);
                }));
              },
              child: Card(
                  color: Colors.yellow,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: NetworkImage(doctorsList[index].imagePath ?? 'https://img.freepik.com/premium-vector/avatar-icon0002_750950-43.jpg?semt=ais_hybrid'),
                      ),
                      Text(doctorsList[index].name),
                      Text(doctorsList[index].spe),
                      Text(doctorsList[index].mobile ?? "NA"),

                    ],
                  )),
            );
          })
    );
  }
}
