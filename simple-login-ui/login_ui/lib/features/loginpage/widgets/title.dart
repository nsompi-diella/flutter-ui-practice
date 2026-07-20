import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Login',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 10),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Welcome back to the app',
              style: TextStyle(color: Colors.grey, fontSize: 15),
            ),
          ),
        ],
      ),
    );
  }
}
