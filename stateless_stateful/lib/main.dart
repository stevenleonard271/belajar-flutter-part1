import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int number = 0;
  @override
  void tekanTombol() {
    setState(() {
      number++;
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Aplikasi Counter')),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  number.toString(),
                  style: TextStyle(fontSize: 10.0 + number.toDouble()),
                ),
                RaisedButton(
                  onPressed: tekanTombol,
                  child: Text('Tambah Bilangan'),
                )
              ]),
        ),
      ),
    );
  }
}
