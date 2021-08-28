import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = Random();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: Scaffold(
        appBar: AppBar(
            title: Center(child: Text('Latihan Animated Container')),
            backgroundColor: Colors.amber),
        body: Center(
            child: GestureDetector(
              onDoubleTap: (){
                setState(() {
                  
                });
              },
          child: AnimatedContainer(
            color: Color.fromARGB(255, random.nextInt(256), random.nextInt(256),
                random.nextInt(256)),
            duration: Duration(
              seconds: 1,
            ),
            width: 50.0 + random.nextInt(101),
            height: 50.0 + random.nextInt(101),
          ),
        )),
      ),
    );
  }
}
