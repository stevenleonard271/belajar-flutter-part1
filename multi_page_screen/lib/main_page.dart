import 'package:flutter/material.dart';
import 'package:multi_page_screen/second_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MAIN PAGE'),
      ),
      body: Center(
          child: RaisedButton(
        child: Text('Go to Second Page'),
        onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
            return SecondPage();
          }));
        },
      )),
    );
  }
}
