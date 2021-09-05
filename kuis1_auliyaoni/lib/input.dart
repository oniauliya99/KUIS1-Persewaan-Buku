import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputUmur extends StatelessWidget {
  const InputUmur({
    Key key,
    @required this.umur,
  }) : super(key: key);

  final TextEditingController umur;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: TextFormField(
        controller: umur,
        inputFormatters: [WhitelistingTextInputFormatter(RegExp("[0-9]"))],
        decoration: InputDecoration(
          hintText: "Umur",
          contentPadding:
              EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(32.0)),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.lightBlueAccent, width: 1.0),
            borderRadius: BorderRadius.all(Radius.circular(32.0)),
          ),
        ),
        keyboardType: TextInputType.number,
      ),
    );
  }
}

class InputTgl extends StatelessWidget {
  const InputTgl({
    Key key,
    @required this.tanggal,
  }) : super(key: key);

  final TextEditingController tanggal;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: TextFormField(
        controller: tanggal,
        decoration: InputDecoration(
          hintText: "Tanggal Kembali",
          contentPadding:
              EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(32.0)),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.lightBlueAccent, width: 1.0),
            borderRadius: BorderRadius.all(Radius.circular(32.0)),
          ),
        ),
        keyboardType: TextInputType.name,
      ),
    );
  }
}

class InputJudul extends StatelessWidget {
  const InputJudul({
    Key key,
    @required this.judul,
  }) : super(key: key);

  final TextEditingController judul;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: TextFormField(
        controller: judul,
        decoration: InputDecoration(
          hintText: "Judul Buku",
          contentPadding:
              EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(32.0)),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.lightBlueAccent, width: 1.0),
            borderRadius: BorderRadius.all(Radius.circular(32.0)),
          ),
        ),
        keyboardType: TextInputType.name,
      ),
    );
  }
}

class InputAlamat extends StatelessWidget {
  const InputAlamat({
    Key key,
    @required this.alamat,
  }) : super(key: key);

  final TextEditingController alamat;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: TextFormField(
          controller: alamat,
          decoration: InputDecoration(
            hintText: "Alamat Penyewa",
            contentPadding:
                EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(32.0)),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.lightBlueAccent, width: 1.0),
              borderRadius: BorderRadius.all(Radius.circular(32.0)),
            ),
          ),
          keyboardType: TextInputType.multiline,
          minLines: 1, //Normal textInputField will be displayed
          maxLines: 5),
    );
  }
}

class InputNama extends StatelessWidget {
  const InputNama({
    Key key,
    @required this.namaLengkap,
  }) : super(key: key);

  final TextEditingController namaLengkap;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: namaLengkap,
      decoration: InputDecoration(
        hintText: "Nama Penyewa",
        contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(32.0)),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.lightBlueAccent, width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(32.0)),
        ),
      ),
      keyboardType: TextInputType.text,
    );
  }
}
