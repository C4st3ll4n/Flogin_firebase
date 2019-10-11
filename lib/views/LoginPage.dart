import 'package:flutter/material.dart';
import 'package:flutter_container/components/TextIconButton.dart';
import 'package:flutter_container/service/auth/Authentication.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Authentication _authentication = Authentication();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ButtonTextIcon(
              texto: "Login com Google",
              icon: Icons.g_translate,
              color: Colors.redAccent,
              callback: () => _authentication.signWithGoogle(),
            ),
            ButtonTextIcon(
              texto: "Login com Facebook",
              color: Colors.indigoAccent,
              icon: Icons.account_circle,
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.cyanAccent,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.indigo,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.amber,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
