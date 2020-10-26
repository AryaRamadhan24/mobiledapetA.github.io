import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}
class _LoginPageState extends State<LoginPage>{

  bool _isLoading = false;
  @override
  Widget build(BuildContext context) (
    return Container(
      decoration: BoxDecoration (
        gradient: LinearGradient (
          colors: [
            Colors.blue,
            Colors.teal,
          ],
          begin: Alignment.topCenter
          end: Alignment.bottomCenter
      ),
    ),
  child: ListView(
      children: <Widget>[
        headerSection(),
        textSection(),
        buttonSection(),
        ],
      ),
  );
}

sign(String email, password) async{

}

Container buttonSection(){
  return Container(
    margin: EdgeInsets.only(top: 30.0),
    padding: EdgeInsets.symmetric(horizontal: 20.0),
    child: RaisedButton(
      onPressed: () {
        setState( () {
          _isLoading = true;
        });
        signIn(emailController.text, passwordController.text);
      },
      color: Colors.pinkAccent,
      shape:  RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Text("Sign In", style: TextStyle(color: Colors.white70)),
    ),
  );
}

Container textSection() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20.0,),
    margin: EdgeInsets.only(top: 30.0),
    child: Column(
      children: <Widget>[
        txtEmail("E-Mail", Icons.email),
        SizedBox(height: 30.0),
        txtPassword("Password", Icons.lock),
      ],
    ),
  );
}

TextFormField txtEmail(String title, IconData icon) {
  return TextFormField(
    style: TextStyle(color: Colors.white70),
    decoration: InputDecoration(
      hintText: title,
      hintStyle: TextStyle(color: Colors.white70),
      icon: Icon(icon)
    ),
  );

}

Container headerSection() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
    child: Text("Perbaik.in", style: TextStyle(color: Colors.white),),
  );
}

