import 'package:flutter/material.dart';
import 'package:projet/register.dart';
import 'package:projet/loginScreen.dart';
import 'package:projet/creation.dart';
import 'package:flutter/material.dart';
import 'package:projet/register.dart';
import 'package:projet/loginScreen.dart';

class Appartement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _header(context),
              _inputField(context),
              //_forgotPassword(context),
              //  _signIn(context),
            ],
          ),
        ),
      ),
    );
  }
}

_header(context) {
  return Column(
    children: [
      Text(
        "formulaire de creation d'un appartement",
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      ),
      Text("veuillez renseigner les champs suivants"),
    ],
  );
}

_inputField(context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      TextField(
        decoration: InputDecoration(
          hintText: "Num_App",
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none),
          fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
          filled: true,
          prefixIcon: Icon(Icons.numbers),
        ),
      ),
      SizedBox(
        height: 10,
      ),
      TextField(
        decoration: InputDecoration(
          hintText: "adress",
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none),
          fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
          filled: true,
          prefixIcon: Icon(Icons.place),
        ),
        obscureText: true,
      ),
      SizedBox(
        height: 10,
      ),
      TextField(
        decoration: InputDecoration(
          hintText: "prix appartement",
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none),
          fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
          filled: true,
          prefixIcon: Icon(Icons.lock),
        ),
        obscureText: true,
      ),
      SizedBox(
        height: 15,
      ),
      TextField(
        decoration: InputDecoration(
          hintText: "montant a payer",
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide: BorderSide.none),
          fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
          filled: true,
          prefixIcon: Icon(Icons.mediation_rounded),
        ),
        obscureText: true,
      ),
      SizedBox(
        height: 15,
      ),
      TextField(
        decoration: InputDecoration(
          hintText: "rest a payer",
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none),
          fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
          filled: true,
          prefixIcon: Icon(Icons.mediation_rounded),
        ),
        obscureText: true,
      ),
      SizedBox(
        height: 15,
      ),

      ElevatedButton(
        onPressed: () {},
        child: Text(
          "Send",
          style: TextStyle(fontSize: 20),
        ),
        style: ElevatedButton.styleFrom(
          shape: StadiumBorder(),
          padding: EdgeInsets.symmetric(vertical: 16),
        ),
      ),
      //TextButton('vous avez deja un compte? sign in',style: TextStyle(fontSize: 30),);
      /*ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => LoginScreen()));
                },
                child: Text('login',style: TextStyle(color: Colors.amber),),
        ),
        */
    ],
  );
}
/*
_forgotPassword(context) {
  return TextButton(onPressed: () {}, child: Text("forgot password"));
}*/
/*
_signIn(context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text("you have an account"),
      TextButton(onPressed: () {
        Navigator.push(
                      context, MaterialPageRoute(builder: (context) => LoginScreen()));


      }, child: Text("sign in")),
    ],
  );
}*/
