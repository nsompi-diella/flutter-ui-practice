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
      child:ElevatedButton.icon(
        onPressed: (){}, label:Text('lovinci'),icon:Icon(Icons.email_outlined),)
    );
  }
}
