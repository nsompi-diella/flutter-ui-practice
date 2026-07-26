import 'package:flutter/material.dart';

class Maindesign extends StatelessWidget {
  const Maindesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        leading: Padding(padding: EdgeInsets.all(8.0),child:
        Image.asset('assets/image/official_ecg_logo.jpg',fit:BoxFit.contain,),),
        // title of the page
        title: Text('Home', style: TextStyle(color: Colors.white)),
        actions: [
          IconButton(
            iconSize: 25,
            onPressed: () {},
            icon: Icon(Icons.notifications_outlined, color: Colors.white),
          ),
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                backgroundColor: Colors.white,
                foregroundColor: Colors.blue.shade900,
              ),
              onPressed: () {},
              label: Text('Get Help'),
              icon: Icon(Icons.info_outline),
            ),
          ),
        ],
      ),
    );
  }
}
