import 'package:flutter/material.dart';

class Checkremenber extends StatefulWidget {
  const Checkremenber({super.key});

  @override
  State<StatefulWidget> createState() {
    return _Home();
  }
}

class _Home extends State<Checkremenber> {
  bool ischeck = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          Checkbox(
            value: ischeck,
            onChanged: (value) {
              setState(() {
                ischeck = value ?? false; 
              });
            },
          ),
          Text('Remenber me'),
        ],
      ),
    );
  }
}
