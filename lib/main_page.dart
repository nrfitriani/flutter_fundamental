import 'package:flutter/material.dart';
import 'package:flutter_fundamental/second_page.dart';
class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Main Page"),),
      body: Center(
        child: RaisedButton(
        child: Text("Go To Second"),
        onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder: (context) {
            return SecondPage();
          }));
        },
      )),
    );
  }
}