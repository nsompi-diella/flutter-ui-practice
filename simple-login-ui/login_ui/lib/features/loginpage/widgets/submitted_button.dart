import 'package:flutter/material.dart';

class SubmittedButton extends StatefulWidget {
  final bool isloading;
  final VoidCallback onpressed;
  const SubmittedButton({
    super.key,
    required this.isloading,
    required this.onpressed,
  });

  @override
  State<SubmittedButton> createState() {
    return _Home();
  }
}

class _Home extends State<SubmittedButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blueAccent.shade700,
        ),
        onPressed: widget.isloading ? null : widget.onpressed,
        child: widget.isloading
            ? const SizedBox(
                width: 24,
                height: 24,
                child: CircularProgressIndicator(
                  color: Colors.white,
                  strokeWidth: 3,
                ),
              )
            : const Text(
                'Login',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
      ),
    );
  }
}
