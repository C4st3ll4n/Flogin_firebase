import 'package:flutter/material.dart';
import 'package:flutter_container/service/auth/Authentication.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Authentication _authentication = Authentication();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: Container(
          child: ListView(
            children: <Widget>[
              ListTile(
                onTap: () {
                  _authentication.sair();
                },
                title: Text("Sair"),
                leading: Icon(Icons.exit_to_app),
              )
            ],
          ),
        ),
      ),
      body: Container(
        child: Center(
          child: Text("Logado"),
        ),
      ),
    );
  }
}
