import 'package:flutter/material.dart';
import 'package:login_ui/features/signuppage/layout/maindesign_signup.dart';

class Textsignup extends StatelessWidget {
  const Textsignup({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const MaindesignSignup()),
          );
        },
        child: Text(
          'Create account',
          style: TextStyle(color: Colors.blueAccent, fontSize: 15),
        ),
      ),
    );
  }
}
