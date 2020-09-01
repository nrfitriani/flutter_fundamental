import 'dart:math';

import 'package:flutter/material.dart';

//Belajar membuat tampilan home dan text widget
/*

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
                    softWrap:
                        false, //memotong text klu sudah melebihi container
                    style: TextStyle(
                      color: Colors.white,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w700,
                      fontSize: 20
                    )))),
      ),
    );
  }
}
*/

/*
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Latihan Row dan Column"),),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: , //menyusun bentuk kolom atau baris widget yang ada didalamnya
          children: <Widget>[
            Text("cobaaa"),
            Text("membuat tulisan"),
            Text("dalam bentuk kolom"),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("halooooo"),
                Text("dunia programming")
              ]
            )
          ],
        ),
      ),
    );  
  }
}
*/

//Container dan Widget
/* void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Container satu"),
        ),
        body: Container(
          color: Colors.blue,
          margin: EdgeInsets.fromLTRB(13, 12, 12, 12),
          padding: EdgeInsets.only(bottom: 10, top: 20),
          child: Container(
            decoration: BoxDecoration(gradient: LinearGradient(colors: <Color> [
              Colors.amber,
              Colors.black 
            ])),
          ),
        ),
      ),
    );
  }
}
*/

/*
//statefull widget
void main () => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int number = 0;
  void tekanTombol (){
  
  setState(() { //mengubah tampilan sesuai dengan keadaan saat ini
  number = number + 1;  
  });

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Statefull Widget Demo"),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
             Text(number.toString(), style: TextStyle(fontSize: 10 + number.toDouble()),),
             RaisedButton(
               child: Text("Hitung maju"),
               onPressed: tekanTombol,)
           ], 
          ),
        ),
      ),
    );
  }
}
*/

//Anonymous method digunakan pada method yang hanya satu kali dipanggil.Begini caranya => () {....}
/* void main () => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String message = "Silahkan tekan tombol";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar (title: Text("Anonymous method"),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
              Text(message),
              RaisedButton(child: Text("Tekan Saya"),
              onPressed: () {
               setState(() {
                 message = "tombol sudah ditekan";
               });
            })
            ]
          ),
        ),
      ),
    );
  }
}
*/

/*
//List View

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> widgets = []; //list kumpulan widget
  int counter = 1 ;

 /* _MyAppState() {
    //constructor //mengatur bagaimana memunculkan isi widget secara otomatis
    for (int i = 0; i< 15; i++) widgets.add(Text("Data ke-" + i.toString(), style: TextStyle(fontSize: 35),));
  }
*/

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Latihan ListView")),
        body: ListView(
          children: <Widget> [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                RaisedButton(child: Text("Tambah Data"), onPressed: () {
                  setState(() {
                    widgets.add(Text("Data ke-" + counter.toString()));
                    counter++;
                  });
                }),
                RaisedButton(child: Text("Hapus Data"), onPressed: () {
                  setState(() {
                    widgets.add(Text("Data ke-" + counter.toString()));
                    counter--;
                  });
                })
              ]
            ),
            Column(
              crossAxisAlignment : CrossAxisAlignment.start,
              children: widgets,
            )
          ]

        ),
      ),
    );
  }
}

*/

//animated container
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = Random();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Animated container"),
        ),
        body: Center(
          child: GestureDetector(
            onTap: () {
              setState(() {
              });
            },
            child: AnimatedContainer(
              color: Color.fromARGB(220, random.nextInt(225),
                  random.nextInt(225), random.nextInt(255)),
              duration: Duration(seconds: 1),
              width: 50.0 + random.nextInt(100),
              height: 50.0 + random.nextInt(101),
            ),
          ),
        ),
      ),
    );
  }
}
