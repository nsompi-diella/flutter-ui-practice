import 'package:flutter/material.dart';

class TextSignup extends StatelessWidget {
  const TextSignup({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Expanded(child: Divider(thickness: 1, color: Colors.grey)),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Text(
            'or sign in with',
            style: TextStyle(color: Colors.grey, fontSize: 14),
          ),
        ),
        Expanded(child: Divider(thickness: 1, color: Colors.grey)),
      ],
    );
  }
}
