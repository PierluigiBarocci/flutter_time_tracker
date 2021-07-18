import 'package:flutter/material.dart';
import 'package:flutter_time_tracker/app/home_page.dart';
import 'package:flutter_time_tracker/app/sign_in/sign_in_page.dart';

class LandingPage extends StatefulWidget {
  LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  String? _userId = '';

  void _updateUser(String userId) {
    print('User id: $userId');
    setState(() {
      _userId = userId;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_userId == '') {
      return SignInPage(
        title: 'Time Tracker',
        onSignIn: (user) => _updateUser(user.uid),
      );
    } else {
      return HomePage(
        onSignOut: () => _updateUser(''),
      );
    }
  }
}
