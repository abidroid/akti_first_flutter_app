import 'package:flutter/material.dart';

class StatefulDemoScreen extends StatefulWidget {
  const StatefulDemoScreen({super.key});

  @override
  State<StatefulDemoScreen> createState() => _StatefulDemoScreenState();
}

class _StatefulDemoScreenState extends State<StatefulDemoScreen> {
  // initial State/Data
  String message = 'Hello World';
  Color bgColor = Colors.cyan;

  String currentColor = 'Cyan';

  bool wifiState = true;

  @override
  Widget build(BuildContext context) {
    print('Build executed');
    return Scaffold(
      backgroundColor: bgColor, // hard coded
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Stf Demo $currentColor'),
      ),
      body: Column(
        children: [
          Text(message),
          ElevatedButton(
            onPressed: () {
              message = 'Arfa Karim Tech Incubation';
              setState(() {});
            },
            child: const Text('Change Text'),
          ),
          ElevatedButton(
              onPressed: () {
                bgColor = Colors.red;
                currentColor = 'Red';
                setState(() {});
              },
              child: const Text('Red')),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  bgColor = Colors.green;
                  currentColor = 'Green';
                });
              },
              child: const Text('Green')),
          ElevatedButton(onPressed: () {}, child: const Text('Blue')),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  bgColor = Colors.white;
                  currentColor = 'White';
                });
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Clear'),
                  Icon(Icons.clear),
                ],
              )),
          Icon(wifiState ? Icons.wifi : Icons.wifi_off, size: 50),
          Switch(
              value: wifiState,
              onChanged: (isOn) {
                setState(() {
                  wifiState = isOn;
                });
              }),
        ],
      ),
    );
  }
}
