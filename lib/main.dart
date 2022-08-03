import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:googleauth/auth.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MaterialApp(home: GoogleAuth(),));
}

class GoogleAuth extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Firebase.initializeApp();
    return Scaffold(
      body: Center(
        child: MaterialButton(
          onPressed: () async {
            User? user = await Auth.iniciarSesion(
              context: context);
            print(user?.displayName);

           


          },
          color: Colors.blue,
          child: Icon(FontAwesomeIcons.google),
          textColor: Colors.white,
        )

      )
    );
  }
}

