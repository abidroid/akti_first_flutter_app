import 'package:flutter/material.dart';

class DemoScreen extends StatelessWidget {
  const DemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text(
          'Demo',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Banner(
          message: '50% off',
          location: BannerLocation.topStart,
          color: Colors.red,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16.0),
            child: GestureDetector(
              onTap: (){

              },
              child: Image.asset(
                'pictures/iphone.jpg',
                width: 200,
                height: 200,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
