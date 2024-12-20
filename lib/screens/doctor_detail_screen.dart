
import 'package:flutter/material.dart';

import '../models/doctor.dart';
import '../widgets/my_custom_text_style.dart';

class DoctorDetailScreen extends StatelessWidget {
  final Doctor doctor;
  const DoctorDetailScreen({super.key, required this.doctor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Doctor Details'),),

      body: ListView(children: [
        CircleAvatar(
          radius: 150,
          backgroundImage: NetworkImage(doctor.imagePath ?? 'https://img.freepik.com/premium-vector/avatar-icon0002_750950-43.jpg?semt=ais_hybrid'),
        ),
        Text('Name ${doctor.name}', style: myCustomTextStyle),
        Text('Spe ${doctor.spe}', style: myCustomTextStyle),
        Text('Mobile ${doctor.mobile}', style: myCustomTextStyle),
        Text('Address ${doctor.clinicAddress}', style: myCustomTextStyle),
        Text('Time ${doctor.clinicTime}', style: myCustomTextStyle),
        Text('Fee ${doctor.fee}', style: myCustomTextStyle),
      ],),
    );
  }
}
