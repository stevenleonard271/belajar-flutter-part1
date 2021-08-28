import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Latihan Text Field'),
        ),
        body: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.adb),
                  prefixIcon: Icon(Icons.person),
                  prefixText: "Name :",
                  prefixStyle: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
                  labelText: "Nama Lengkap",
                  hintText: "Nama Lengkaplnya Lho...",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),)),
                maxLength: 5,
                controller: textEditingController,
                onChanged: (value) {
                  setState(() {});
                },
              ),
              Text(textEditingController.text),
            ],
          ),
        ),
      ),
    );
  }
}
