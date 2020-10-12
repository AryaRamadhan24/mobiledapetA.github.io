import 'package:flutter/material.dart';

void main() {
  runApp(MyApp()); //method runApp untuk menjalankan class MyApp
}

class MyApp extends StatelessWidget { //membuat class MyApp yang merupakan turunan dari StatelessWidget
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) { //akan menampikan sesuai dengan widget yang dikembalikan oleh method build
    return MaterialApp( // mengembalikan materialApp
      debugShowCheckedModeBanner: false, //menghilangkan banner debug 
      home: Scaffold( //tampilan awal yang akan ditampilkan pada material app
        appBar: AppBar( //untuk tampilan judul
          title: Text('Nama dan Nomer SDGs 9'),), //umtuk menamai judul
        body: Column( //untuk tampilan body
          mainAxisAlignment: MainAxisAlignment.spaceAround, //membuat ruang diantara children widget yang sama
          crossAxisAlignment: CrossAxisAlignment.start, //mengontrol children yang ada didalamnya dalam bentuk horizontal, menempatkan widget disebelah kiri
          children: <Widget>[ //untuk menampilkan daftar teks
            Text('Qorry Aina Damayanti 182410102010'), //untuk membuat teks
            Text('Muhammad Arya Ramadhan 182410102035'), //untuk membuat teks
            Text('Devy Saraswati 182410102068') //untuk membuat teks
          ],),),
    );
  }
}