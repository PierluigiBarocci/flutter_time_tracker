import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_time_tracker/app/sign_in/sign_in_page.dart';

class LandingPage extends StatefulWidget {
  LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  User? _user;

  void _updateUser(User user) {
    print('User id: ${user.uid}');
    setState(() {
      _user = user;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_user == null) {
      return SignInPage(
        title: 'Time Tracker',
        onSignIn: _updateUser,
      );
    } else {
      return Container();
    }
  }
}
