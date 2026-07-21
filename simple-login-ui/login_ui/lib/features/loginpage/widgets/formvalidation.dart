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
    return Column(children: [
          Text('Username'), 
          SizedBox(height:10,),
          TextFormField(
            decoration:InputDecoration(
              hint: Padding(padding: EdgeInsets.only(left:10),child:Text('hello@example.com '),),
              focusedBorder: OutlineInputBorder(
                borderRadius:BorderRadius.circular(15),
                borderSide: BorderSide(color:Colors.black)
              )
            ),
          )
      ],
    );
  }
}
