import 'package:flutter/material.dart';
import 'penyewa.dart';

class Detail extends StatefulWidget {
  Detail({Key key, this.judul, this.nama, this.alamat, this.tgl, this.umur})
      : super(key: key);

  List<String> judul = [];
  List<String> nama = [];
  List<String> alamat = [];
  List<String> tgl = [];
  List<String> umur = [];
  @override
  _DetailState createState() => _DetailState(
      listJudul: judul,
      listNama: nama,
      listAlamat: alamat,
      listTgl: tgl,
      listUmur: umur);
}

class _DetailState extends State<Detail> {
  _DetailState(
      {Key key,
      this.listJudul,
      this.listNama,
      this.listAlamat,
      this.listTgl,
      this.listUmur});
  List<String> listJudul = [];
  List<String> listNama = [];
  List<String> listAlamat = [];
  List<String> listTgl = [];
  List<String> listUmur = [];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('lib/gambar/ui.jpg'), //Image Asset Background
                fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            margin: EdgeInsets.only(top: 190, left: 100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Text(
                    'Riwayat Peminjaman',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: listJudul.length,
                    itemBuilder: (context, int index) {
                      return Container(
                        margin: EdgeInsets.only(top: 25, right: 70),
                        padding: EdgeInsets.all(15),
                        // height: 300,
                        width: 300,
                        decoration: BoxDecoration(
                          color: Colors.blue[100],
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Column(
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Judul     :   ' + listJudul[index],
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.blueGrey,
                              ),
                            ),
                            Text(
                              'Nama     :  ' + listNama[index],
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.blueGrey,
                              ),
                            ),
                            Text(
                              'Alamat     :  ' + listAlamat[index],
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.blueGrey,
                              ),
                            ),
                            Text(
                              'Tanggal Kembali   :' + listTgl[index],
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.blueGrey,
                              ),
                            ),
                            Text(
                              'Umur Penyewa   :' + listUmur[index],
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.blueGrey,
                              ),
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
                                        "Go Back!",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 9),
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (_) => Penyewa(
                                                      listJudul: listJudul,
                                                      listNama: listNama,
                                                      listAlamat: listAlamat,
                                                      listTgl: listTgl,
                                                      listUmur: listUmur)));
                                        });
                                      },
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
