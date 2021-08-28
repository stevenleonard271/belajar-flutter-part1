import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,
        body: Container(
          margin: EdgeInsets.all(10),
          child: ListView(children: <Widget>[
            buildCard(Icons.account_box, 'Account'),
            buildCard(Icons.settings,'Setting'),
          ]),
        ),
      ),
    );
  }

  Card buildCard(IconData iconData, String text) {
    return Card(
            elevation:5 ,
            child: Row(
              children: <Widget>[
                Container(
                  child: Icon(iconData),
                  margin: EdgeInsets.all(5),
                ),
                Text(text),
              ],
            ),
          );
  }
}
