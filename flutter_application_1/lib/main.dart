import 'package:flutter/material.dart';

//main adalah fungsi yang pertama kali dijalankan
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //Material App : sebuah widget berisi data yang diperlukan oleh aplikasi design
      home: Scaffold(
        appBar: AppBar(
          title: Text('Aplikasi Hello World'),
        ),
        body: Center(child: Text('Hello Bryan')),
      ),
    );
  }
}
