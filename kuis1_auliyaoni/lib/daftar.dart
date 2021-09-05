import 'package:flutter/material.dart';
import 'penyewa.dart';

class Daftar extends StatelessWidget {
  List<String> daftarJudul = [
    'Dolan 1991',
    'One-One (Wan-Wan)',
    'Tower Rangers',
    'Fiesta Besarik',
    'Zombie Zumba',
    'Siksa Kubur'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                      "lib/gambar/image.jpg"), //Image Asset Background
                  fit: BoxFit.cover)),
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.blueAccent,
              title: Text('List Buku'),
              centerTitle: true,
            ),
            backgroundColor: Colors.transparent,
            body: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: daftarJudul.length,
                    itemBuilder: (BuildContext context, int index) {
                      //looping item
                      return Container(
                        margin: EdgeInsets.all(15),
                        padding: EdgeInsets.all(15),
                        height: 150,
                        decoration: BoxDecoration(
                          color: Colors.blue[100],
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              daftarJudul[index],
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.blueGrey,
                              ),
                            ),
                            Row(
                              children: <Widget>[
                                Text(
                                  "Pengarang :",
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  "Auliya Oni Priyandika",
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Text(
                                  "Jumlah Halaman :",
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  "119 Lembar",
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Text(
                                  "Sisa Stok :",
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  "20",
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 122),
                              child: SizedBox(
                                width: 105,
                                child: Builder(
                                  builder: (context) => Center(
                                    child: RaisedButton(
                                      color: Colors.blueAccent,
                                      child: Text(
                                        "Tambah",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 9),
                                      ),
                                      onPressed: () => Navigator.pushNamed(
                                          context, "/penyewa"),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        routes: <String, WidgetBuilder>{
          '/penyewa': (BuildContext context) => new Penyewa(),
        });
  }
}
