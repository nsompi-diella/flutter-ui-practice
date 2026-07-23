import 'package:flutter/material.dart';

class TextBarreGoogle extends StatelessWidget {
  const TextBarreGoogle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Flexible(flex: 2, child: Divider()),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Text(
            "or sign in with",
            style: TextStyle(color: Colors.grey, fontSize: 13),
          ),
        ),
        Flexible(flex: 2, child: Divider()),
        SizedBox(width: 20),
      ],
    );
  }
}
