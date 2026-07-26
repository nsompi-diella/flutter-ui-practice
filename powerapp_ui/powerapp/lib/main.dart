import 'package:flutter/material.dart';
import 'package:powerapp/layout/maindesign.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Maindesign(),
      debugShowCheckedModeBanner: false,
    );
  }
}
