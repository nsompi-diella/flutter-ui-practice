import 'package:flutter/material.dart';

class SubmittedEmailButton extends StatefulWidget {
  const SubmittedEmailButton({super.key});

  @override
  State<SubmittedEmailButton> createState() {
    return _Home();
  }
}

class _Home extends State<SubmittedEmailButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFFE5E7EB),
          foregroundColor: Colors.grey.shade700,
        ),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'asset/image/Theme=Light, Show text=No, Shape=Pill, Platform=iOS@2x.png',
              width: 25,
            ),
            SizedBox(width: 20),
            Text('Continue with Google'),
          ],
        ),
      ),
    );
  }
}
