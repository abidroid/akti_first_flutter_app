
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class TfDemoScreen extends StatefulWidget {
  const TfDemoScreen({super.key});

  @override
  State<TfDemoScreen> createState() => _TfDemoScreenState();
}

class _TfDemoScreenState extends State<TfDemoScreen> {

  TextEditingController countryController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Input Demo'),
      ),
      body: Padding(

        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            spacing: 20.0,

            children: [

              Container(

                padding: const EdgeInsets.symmetric(horizontal: 20),
                width: double.infinity,
                //height: 40,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(16),

                ),
                child: TextField(
                  controller: countryController,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Country'
                  ),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  fillColor: Colors.orange,
                  filled: true,
                  hintText: 'Username',
                  labelText: 'User',
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16.0)
                  ),
                  
                  
                ),
              ),


              TextField(
                keyboardType: TextInputType.number,
                maxLength: 11,
                decoration: InputDecoration(
                  hintText: 'Mobile',
                  prefixIcon: Icon(Icons.phone),
                  border: OutlineInputBorder(),
                ),
              ),

              TextField(
                maxLines: 6,
                decoration: InputDecoration(
                  hintText: 'Comments',
                  prefixIcon: Icon(Icons.pending),
                  border: OutlineInputBorder(),
                ),
              ),
              TextField(
                obscureText: true,
                obscuringCharacter: "#",
                decoration: InputDecoration(
                  hintText: 'Password',
                  border: OutlineInputBorder(),

                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.visibility)) ,
                ),
              ),

              ElevatedButton(onPressed: (){


                String countryName = countryController.text;
                Fluttertoast.showToast(msg: countryName);

              }, child: const Text('Submit')),

            ],
          ),
        ),
      ),
    );
  }
}
