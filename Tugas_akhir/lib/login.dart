import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:login/pengaduan.dart';

class LoginPage extends StatefulWidget {
  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/bg.jpg'),
                    fit: BoxFit.cover)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Perbaik.an', style:TextStyle(fontFamily: 'Quicksand',color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      ImageIcon(
                        AssetImage('assets/images/icon.png'),
                        size: 140,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Login', style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 50),
                      ),
                      Flexible(
                        child: TextField(
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            labelText: 'Email',
                            labelStyle: TextStyle(color: Colors.white),
                            hintText: 'your username@gmail.com',
                            hintStyle: TextStyle(color: Colors.white),
                            enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                            focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                            border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 50),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Row(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(left: 50),),
                      Flexible(
                        child: TextField(
                          obscureText: true,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            labelText: 'Password',
                            labelStyle: TextStyle(color: Colors.white),
                            hintText: 'Enter your password',
                            hintStyle: TextStyle(color: Colors.white),
                            enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                            focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                            border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 50),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                  width: screenSize.width,
                  child: Text(
                    'Lupa password?',
                    style:TextStyle(color: Colors.white),
                    textAlign: TextAlign.right,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                ),
                Container(
                  width: screenSize.width * 0.4,
                  height: screenSize.width * 0.12,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: FlatButton(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      color: Colors.white,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context)=>PengaduanPage()),);
                      },
                      child: Text('Login', style: TextStyle(color: Color(0xFF311B92),fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                ),
                Padding(
                  padding: EdgeInsets.symmetric( horizontal: 50),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Belum Punya aku?', style: TextStyle(color: Colors.white, fontSize: 15)),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric( horizontal: 50),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(' Buat akun>', style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ],
            ),
          )
      ),
    );
  }
}
