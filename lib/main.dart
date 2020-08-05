import 'package:flutter/material.dart';

//void main() => runApp(MyApp());

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //tampilan dasar aplikasi
        appBar: AppBar(
          title: Text("Aplikasi Hello World"),
        ),
        body: Center(
            child: Container(
                color: Colors.lightGreen,
                width: 150,
                height: 50,
                child: Text(
                  "Saya sedang belajar membuat aplikasi, saya sangat suka flutter ",
                  maxLines: 2,
                  overflow: TextOverflow.clip, //memotong text
                  softWrap: false, //memotong text klu sudah melebihi container
                  style: TextStyle(color: Colors.white, fontStyle: FontStyle.italic, fontWeight: FontWeight.w700, )
                ))),
      ),
    );
  }
}
