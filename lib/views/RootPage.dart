import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_container/service/auth/Authentication.dart';
import 'package:flutter_container/views/HomePage.dart';
import 'package:flutter_container/views/LoginPage.dart';

class RootPage extends StatefulWidget {
  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  final Authentication _authentication = Authentication();

  Stream<FirebaseUser> _currentUser;

  @override
  void initState() {
    _currentUser = _authentication.onAuthStateChange;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<FirebaseUser>(
      stream: _currentUser,
      builder: (BuildContext context, AsyncSnapshot<FirebaseUser> snapshot) {
        return snapshot.hasData ? HomePage():LoginPage();
      },
    );
  }
}
