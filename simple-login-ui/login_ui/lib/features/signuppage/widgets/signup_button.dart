import 'package:flutter/material.dart';

class SignupButton extends StatefulWidget {
  const SignupButton({super.key});
  @override
  State<StatefulWidget> createState() {
    return _Home();
  }
}


class _Home extends State<SignupButton>{
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: 350,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blueAccent.shade700,
        ),
        onPressed: () {},
        child: Text(
          'Signup',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }
}