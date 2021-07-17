import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
        elevation: 2.0,
      ),
      body: _buildContent(),
    );
  }

  Widget _buildContent() {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            color: Colors.orange,
            child: SizedBox(
              height: 100.0,
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          Container(
            color: Colors.red,
            child: SizedBox(
              height: 100.0,
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          Container(
            color: Colors.purple,
            child: SizedBox(
              height: 100.0,
            ),
          ),
        ],
      ),
    );
  }
}
