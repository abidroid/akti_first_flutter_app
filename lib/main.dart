import 'package:akti_first_flutter_app/screens/demo_screen.dart';
import 'package:akti_first_flutter_app/screens/first_screen.dart';
import 'package:akti_first_flutter_app/screens/gridview_demo_screen.dart';
import 'package:akti_first_flutter_app/screens/listview_demo_screen.dart';
import 'package:akti_first_flutter_app/screens/stateful_demo_screen.dart';
import 'package:akti_first_flutter_app/screens/tf_demo_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      home: const TfDemoScreen(),
    );
  }
}
