import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'penyewa.dart';
import 'daftar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  DateTime selectedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image:
                    AssetImage("lib/gambar/image.jpg"), //Image Asset Background
                fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            child: SafeArea(
              child: Column(
                children: <Widget>[
                  Container(
                    height: 150,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Container(
                          child: Text(
                            "Welcome Admin",
                            style: TextStyle(
                              fontFamily: 'Nunito',
                              color: Colors.white,
                              fontStyle: FontStyle.italic,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.vertical(
                                bottom: Radius.circular(55),
                                top: Radius.circular(55)),
                          ),
                          child: Text(
                            selectedDate.toString(),
                            style: TextStyle(
                              fontFamily: 'Calibri',
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    child: Text(
                      "Persewaan Buku",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Sans-Serif',
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 50),
                    child: Column(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      "lib/gambar/images.png"), //Image Asset Background
                                  fit: BoxFit.cover)),
                          height: 250,
                          width: 300,
                          margin: EdgeInsets.only(top: 20, left: 5, right: 5),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 50),
                    child: SizedBox(
                      width: 205,
                      child: Builder(
                        builder: (context) => Center(
                          child: RaisedButton(
                            color: Colors.blueAccent,
                            child: Text(
                              "Tambah Data Penyewa",
                              style: TextStyle(color: Colors.white),
                            ),
                            onPressed: () =>
                                Navigator.pushNamed(context, "/daftar"),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      routes: <String, WidgetBuilder>{
        '/penyewa': (BuildContext context) => new Penyewa(),
        '/daftar': (BuildContext context) => new Daftar(),
      },
    );
  }
}
