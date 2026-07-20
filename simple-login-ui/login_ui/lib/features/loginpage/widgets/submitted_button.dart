import 'package:flutter/material.dart';

class SubmittedButton extends StatefulWidget {
  const SubmittedButton({super.key});

  @override
  State<SubmittedButton> createState() {
    // TODO: implement createState
    return _Home();
  }
}

class _Home extends State<SubmittedButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:350,
      height:50,
      child:ElevatedButton(
        style:ElevatedButton.styleFrom(
          backgroundColor:Colors.blueAccent
        ),
        onPressed: (){}, child:Text('Login',style:TextStyle(fontWeight:FontWeight.bold),)),
    );
  }
}
