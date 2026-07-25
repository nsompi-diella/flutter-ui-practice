import 'package:flutter/material.dart';

class SignupButton extends StatefulWidget {
  final bool isloading;
  final VoidCallback onPressed; 
  const SignupButton({super.key,required this.isloading,required this.onPressed});
  @override
  State<StatefulWidget> createState() {
    return _Home();
  }
}

class _Home extends State<SignupButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blueAccent.shade700,
        ),
        onPressed:widget.isloading ?null : widget.onPressed,
        child: widget.isloading
            ? const SizedBox(
                width: 24,
                height: 24,
                child: CircularProgressIndicator(
                  color: Colors.white,
                  strokeWidth: 3,
                ),
              ) : 
         const Text(
          'Signup',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }
}
