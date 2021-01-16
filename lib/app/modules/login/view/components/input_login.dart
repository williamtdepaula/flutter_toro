import 'package:flutter/material.dart';

class InputLogin extends StatelessWidget {
  final String title;
  final bool isPassword;

  InputLogin({this.title = '', this.isPassword = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            this.title,
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'DINPro',
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Color(0xFFFAFAFA),
            ),
            obscureText: isPassword,
          ),
        ],
      ),
    );
  }
}
