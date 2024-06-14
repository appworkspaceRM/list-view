import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Hello World!'),
          ),
          body: ListView(
            children: [
              Container(
                height: 400,
                color: Colors.blue,
              ),
              Container(
                height: 400,
                color: Colors.amber,
              ),
            ],
          )),
    );
  }
}
