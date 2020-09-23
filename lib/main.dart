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
/*void main() => runApp(MyApp());

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

*/

//Flexible Layout
/*void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Flexible Layout")),
        body: Column(
          children: <Widget>[
          Flexible(
            child: Row(children: <Widget>[
              Flexible(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.all(5),
                  color: Colors.indigoAccent
                ),
              ),
              Flexible(
                flex: 2,
                child: Container(
                  margin: EdgeInsets.all(5),
                  color: Colors.lightBlue
                ),
              ),
              Flexible(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.all(5),
                  color: Colors.lime
                ),
              )
            ],)
          ),  
          
          Flexible(
            flex: 2,
            child: Container (
              margin: EdgeInsets.all(5),
              color: Colors.blueAccent,
              ),
            ),
          
          Flexible(
            flex: 1,
            child: Container (
              margin: EdgeInsets.all(5),
              color: Colors.greenAccent,
              ),
            ),
          
          ]
        ),
      ),
    );
  }
}
*/

//Stack and Align Widget
/*void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Stack an d Align Widget"),
        ),
        body: Stack(
          children: <Widget>[
            Column(children: <Widget>[
              Flexible(
                flex: 1,
                child: Row(
                  children: <Widget>[
                    Flexible(flex: 1, child: Container(color: Colors.blue)),
                    Flexible(flex: 1, child: Container(color: Colors.white12))
                  ],
                ),
              ),
              Flexible(
                flex: 1,
                child: Row(
                  children: <Widget>[
                    Flexible(flex: 1, child: Container(color: Colors.white12)),
                    Flexible(flex: 1, child: Container(color: Colors.blue))
                  ],
                ),
              ),
            ]),
            ListView(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.all(12),
                        child: Text(
                          "Langkah awal suksesmu",
                          style: TextStyle(fontSize: 23),
                        )),
                    Container(
                        margin: EdgeInsets.all(12),
                        child: Text(
                          "Langkah awal suksesmu",
                          style: TextStyle(fontSize: 23),
                        )),
                    Container(
                        margin: EdgeInsets.all(12),
                        child: Text(
                          "Langkah awal suksesmu",
                          style: TextStyle(fontSize: 23),
                        )),
                    Container(
                        margin: EdgeInsets.all(12),
                        child: Text(
                          "Langkah awal suksesmu",
                          style: TextStyle(fontSize: 23),
                        )),
                    Container(
                        margin: EdgeInsets.all(12),
                        child: Text(
                          "Langkah awal suksesmu",
                          style: TextStyle(fontSize: 23),
                        )),
                    Container(
                        margin: EdgeInsets.all(12),
                        child: Text(
                          "Langkah awal suksesmu",
                          style: TextStyle(fontSize: 23),
                        )),
                    Container(
                        margin: EdgeInsets.all(12),
                        child: Text(
                          "Langkah awal suksesmu",
                          style: TextStyle(fontSize: 23),
                        )),
                    Container(
                        margin: EdgeInsets.all(12),
                        child: Text(
                          "Langkah awal suksesmu",
                          style: TextStyle(fontSize: 23),
                        )),
                    Container(
                        margin: EdgeInsets.all(12),
                        child: Text(
                          "Langkah awal suksesmu",
                          style: TextStyle(fontSize: 23),
                        )),
                    Container(
                        margin: EdgeInsets.all(12),
                        child: Text(
                          "Langkah awal suksesmu",
                          style: TextStyle(fontSize: 23),
                        )),
                    Container(
                        margin: EdgeInsets.all(12),
                        child: Text(
                          "Langkah awal suksesmu",
                          style: TextStyle(fontSize: 23),
                        )),
                    Container(
                        margin: EdgeInsets.all(12),
                        child: Text(
                          "Langkah awal suksesmu",
                          style: TextStyle(fontSize: 23),
                        )),
                    Container(
                        margin: EdgeInsets.all(12),
                        child: Text(
                          "Langkah awal suksesmu",
                          style: TextStyle(fontSize: 23),
                        )),
                    Container(
                        margin: EdgeInsets.all(12),
                        child: Text(
                          "Langkah awal suksesmu",
                          style: TextStyle(fontSize: 23),
                        )),
                    Container(
                        margin: EdgeInsets.all(12),
                        child: Text(
                          "Langkah awal suksesmu",
                          style: TextStyle(fontSize: 23),
                        )),
                  ],
                )
              ],
            ),
            Align(
              alignment: Alignment(0, 0.75),
              child: RaisedButton(
              
              child: Text("Click me"),
              color: Colors.blueGrey,
              onPressed: () {},
               
            ))
          ],
        ),
      ),
    );
  }
}
*/

//image widget
/*void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Latihan Image"),),
        body: Center(
          child: Container(
            width: 200,
            height: 200,
            padding: EdgeInsets.all(3),
            child: Image(image: AssetImage("images/cotooo.jpg")),
          )
        ),
      ),
    );
  }
}
*/

//Spacers Widget
/*void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar : AppBar(title: Text("Spacers widget"),),
        body: Center(
          child: Row(
            children: <Widget> [
              Spacer(flex: 1),
              Container( width: 80, height: 80, color: Colors.pink),
              Spacer(flex: 2),
              Container( width: 80, height: 80, color: Colors.blue),
              Spacer(flex: 1),
              Container( width: 80, height: 80, color: Colors.pink),
            ]
          ),
        )

      ),
      
    );
  }
}
*/


/*
//Draggable,DragTarget,Sized box, Material
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color color1 = Colors.redAccent;
  Color color2 = Colors.teal;
  bool isAccepted = false;
  Color targetColor;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Dragable"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Draggable<Color>( //yg mau di drag
                    data: color1,
                    child: SizedBox(
                      width: 40,
                      height: 40,
                      child: Material(
                          color: color1, shape: StadiumBorder(), elevation: 5),
                    ),
                    childWhenDragging: SizedBox( //yg terjadi pada tempat awal widget, saat  widget di drag
                        width: 50,
                        height: 50,
                        child: Material(
                          color: Colors.black26,
                          shape: StadiumBorder(),
                        )),
                  feedback: SizedBox( //yg terjadi pada widget yg di drag saat dia di drag
                        width: 50,
                        height: 50,
                        child: Material(
                          color: color1.withOpacity(0.5),
                          shape: StadiumBorder(),
                          elevation: 3,
                        )),
                  ),
                  
                  Draggable<Color>( //yg mau di drag
                    data: color2,
                    child: SizedBox(
                      width: 40,
                      height: 40,
                      child: Material(
                          color: color2, shape: StadiumBorder(), elevation: 5),
                    ),
                    childWhenDragging: SizedBox( //yg terjadi pada tempat awal widget, saat  widget di drag
                        width: 50,
                        height: 50,
                        child: Material(
                          color: Colors.black26,
                          shape: StadiumBorder(),
                        )),
                  feedback: SizedBox( //yg terjadi pada widget yg di drag saat dia di drag
                        width: 50,
                        height: 50,
                        child: Material(
                          color: color2.withOpacity(0.5),
                          shape: StadiumBorder(),
                          elevation: 3,
                        )),
                  ),
                ]),
          DragTarget<Color> ( //tujuan widget akan dibawa
            onWillAccept: (value) => true, //jika ada data masuk terima saja
            onAccept: (value) => (isAccepted = true),// lalu diberitahu klu sdh menerima
            builder: (context, candidates, rejected){
            return (isAccepted) ?  SizedBox( //jika diterima, maka lakukan ini // ini adalah boolean true
                        width: 100,
                        height: 100,
                        child: Material(
                          color: color1,
                          shape: StadiumBorder(),
                          elevation: 3,
                        )): //note untuk boolean true
              SizedBox(// jika tidak diterima //boolean false
                        width: 100,
                        height: 100,
                        child: Material(
                          color: Colors.blue,
                          shape: StadiumBorder(),
                          elevation: 3,
                        ));//untuk boolean false
            },
          )
          ],
        ), 
      ),
    );
  }
}

*/
/*
//F16_Multipage
import 'package:flutter_fundamental/login_page.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
      
    );
  }
}
*/

//f17_appbar example
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.adb, color: Colors.white),
          title: Text("AppBar Example", style: TextStyle(color: Colors.white),),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.settings), onPressed: () {}),
            IconButton(icon: Icon(Icons.exit_to_app), onPressed: () {}),
          ],
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Color(0xf0096ff), Color(0xff6610f2)],
            begin: FractionalOffset.topLeft,
            end: FractionalOffset.bottomRight

          )
        ),
        )
      ),
      
    ),
    );
  } 
}