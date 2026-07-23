import 'package:flutter/material.dart';

class Textsignup extends StatelessWidget {
  const Textsignup({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: TextButton(
        onPressed: () {},
        child: Text(
          'Create account',
          style: TextStyle(color: Colors.blueAccent, fontSize: 15),
        ),
      ),
    );
  }
}
