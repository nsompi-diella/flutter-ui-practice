import 'package:flutter/material.dart';

class Formvalidation extends StatefulWidget {
  const Formvalidation({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Home();
  }
}

class _Home extends State<Formvalidation> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Email Address',
          style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1.5),
        ),
        SizedBox(height: 10),
        SizedBox(
          width: 350,
          child: TextFormField(
            cursorColor: Colors.black,
            decoration: InputDecoration(
              hint: Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  'hello@example.com',
                  style: TextStyle(color: Colors.grey),
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
            ),
          ),
        ),
        SizedBox(height: 30),
        SizedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Password'),

              TextButton(onPressed: () {}, child: Text('Forgot Password?')),
            ],
          ),
        ),
        SizedBox(
          width: 350,
          child: TextFormField(
            cursorColor: Colors.grey,
            decoration: InputDecoration(
              suffixIcon: Icon(Icons.remove_red_eye, color: Colors.grey),
              hint: Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  '***************',
                  style: TextStyle(color: Colors.grey, fontSize: 12),
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
            ),
          ),
        ),
      ],
    );
  }
}
