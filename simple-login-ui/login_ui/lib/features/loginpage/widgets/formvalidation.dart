import 'package:flutter/material.dart';
import 'package:login_ui/core/controller/controller.dart';
import 'package:login_ui/core/validation/validationform.dart';

class Formvalidation extends StatefulWidget {
  final Controller controller; 
  const Formvalidation({super.key,required this.controller});

  @override
  State<StatefulWidget> createState() {
    return _Home();
  }
}

class _Home extends State<Formvalidation> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Email Address', style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(height: 10),
        SizedBox(
          width: 350,
          child: TextFormField(
            controller: widget.controller.emailCtrl,
            validator: Validationform.email,
            cursorColor: Colors.black,
            decoration: InputDecoration(
              hint: Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  'hello@example.com',
                  style: TextStyle(color: Colors.grey, fontSize: 13),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(color: Colors.black),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(color: Colors.grey.shade400),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(color: Colors.grey.shade400),
              ),
            ),
          ),
        ),
        SizedBox(height: 30),
        SizedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Password',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),

              TextButton(
                onPressed: () {},
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(color: Colors.blueAccent.shade700),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 350,
          child: TextFormField(
            controller: widget.controller.passwordCtrl,
            validator: Validationform.password,
            cursorColor: Colors.grey,
            decoration: InputDecoration(
              suffixIcon: IconButton(
                onPressed: () {},
                icon: Icon(Icons.remove_red_eye, color: Colors.grey),
              ),
              hint: Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  '***************',
                  style: TextStyle(color: Colors.grey, fontSize: 13),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(color: Colors.black),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(color: Colors.grey.shade400),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(color: Colors.grey.shade400),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
