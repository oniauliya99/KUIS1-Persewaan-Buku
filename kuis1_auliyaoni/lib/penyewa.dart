import 'package:flutter/material.dart';
import 'package:kuis1_auliyaoni/main.dart';
import 'input.dart';
import 'detail.dart';
import 'daftar.dart';

class Penyewa extends StatefulWidget {
  List<String> listJudul = [];
  List<String> listNama = [];
  List<String> listAlamat = [];
  List<String> listTgl = [];
  List<String> listUmur = [];

  Penyewa(
      {Key key,
      this.listJudul,
      this.listNama,
      this.listAlamat,
      this.listTgl,
      this.listUmur})
      : super(key: key);
  @override
  _PenyewaState createState() => _PenyewaState(
      listJudul: listJudul,
      listNama: listNama,
      listAlamat: listAlamat,
      listTgl: listTgl,
      listUmur: listUmur);
}

class _PenyewaState extends State<Penyewa> {
  final namaLengkap = TextEditingController();

  final alamat = TextEditingController();

  final judul = TextEditingController();

  final tanggal = TextEditingController();

  final umur = TextEditingController();

  String nama = "", alt = "", jdl = "", tgl = "", age = "";

  _PenyewaState(
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

  List<String> list = List<String>();
  List<String> listalt = List<String>();
  List<String> listjdl = List<String>();
  List<String> listtgl = List<String>();
  List<String> listumr = List<String>();

  void insertlah() {
    setState(() {
      nama = namaLengkap.text;
      alt = alamat.text;
      jdl = judul.text;
      tgl = tanggal.text;
      age = umur.text;
      list.add(nama);
      listalt.add(alt);
      listjdl.add(jdl);
      listtgl.add(tgl);
      listumr.add(age.toString());
    });
  }

  Item objek =
      new Item(); //objek untuk menampung nilai variable ketika di passing ke halaman detail
  List<String> listItem = [];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Form Input Data Penyewa"),
        backgroundColor: Colors.blue[900],
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: SafeArea(
          child: Column(children: <Widget>[
            InputNama(namaLengkap: namaLengkap),
            InputAlamat(alamat: alamat),
            InputJudul(judul: judul),
            InputTgl(tanggal: tanggal),
            InputUmur(umur: umur),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 20),
                  width: 100,
                  child: RaisedButton(
                    color: Colors.blueAccent,
                    onPressed: () {
                      jdl = judul.text;
                      nama = namaLengkap.text;
                      alt = alamat.text;
                      tgl = tanggal.text;
                      age = umur.text;
                      listItem.add(jdl);
                      list.add(nama);
                      listalt.add(alt);
                      listtgl.add(tgl);
                      listumr.add(age);
                      objek.setItem(listItem);
                      objek.setNama(list);
                      objek.setAlamat(listalt);
                      objek.setTgl(listtgl);
                      objek.setUmur(listumr);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => Detail(
                                    judul: listItem,
                                    nama: list,
                                    alamat: listalt,
                                    tgl: listtgl,
                                    umur: listumr,
                                  )));
                    },
                    child: Text(
                      'OK',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  width: 100,
                  child: RaisedButton(
                    color: Colors.blueAccent,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => Detail(
                                  judul: listJudul,
                                  nama: listNama,
                                  alamat: listAlamat,
                                  tgl: listTgl,
                                  umur: listUmur)));
                    },
                    child: Text(
                      'History',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  width: 100,
                  child: RaisedButton(
                    color: Colors.blueAccent,
                    onPressed: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (_) => Daftar()));
                    },
                    child: Text(
                      'Cancel',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ]),
        ),
      ),
    ));
  }
}

class Item {
  List<String> item;
  List<String> list;
  List<String> listalt;
  List<String> listtgl;
  List<String> listumr;

  void setItem(List<String> item) {
    this.item = item;
  }

  List<String> getItem() {
    return this.item;
  }

  void setNama(List<String> list) {
    this.list = list;
  }

  void setAlamat(List<String> listalt) {
    this.listalt = listalt;
  }

  void setTgl(List<String> listtgl) {
    this.listtgl = listtgl;
  }

  void setUmur(List<String> listumr) {
    this.listumr = listumr;
  }
}
