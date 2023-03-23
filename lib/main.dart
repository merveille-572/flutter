import 'package:flutter/material.dart';

import 'package:projet/loginScreen.dart';
import 'package:projet/register.dart';
import 'package:projet/locataire.dart';
import 'package:projet/creation.dart';
import 'package:projet/Appartement.dart';

void main() {
  runApp(loginUIApp());
}

class loginUIApp extends StatelessWidget {
  //Color _primaryColor = HexColor('#DC54FE');

  //Color _accentColor = HexColor('#8A02AE');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter login UI',
      debugShowCheckedModeBanner: false,
      home: LoginDemo(),
    );
  }
}

class LoginDemo extends StatefulWidget {
  @override
  _LoginDemoState createState() => _LoginDemoState();
}

class _LoginDemoState extends State<LoginDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Center(
        child: Column(
          
          children: <Widget>[
            Container(
              
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },
                
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => creation()));
              },
              child: Text(
                'click',
                style: TextStyle(color: Colors.green, fontSize: 30),
              ),
            ),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => locataire()));
              },
              icon: Icon(Icons.abc_sharp),
              label: Text('apuie'),
            ),
            SizedBox(
              height: 25,
            ),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Appartement()));
              },
              icon: Icon(Icons.abc_sharp),
              label: Text('Appartement'),
            ),
            SizedBox(
              height: 25,
            ),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => register()));
              },
              icon: Icon(Icons.abc_sharp),
              label: Text('register'),
            ),
            SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    );
  }
}
