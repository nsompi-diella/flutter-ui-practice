import 'package:flutter/material.dart';

class Maindesign extends StatelessWidget {
  const Maindesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        leading: Padding(
          padding: EdgeInsets.all(8.0),
          child: Image.asset(
            'assets/image/official_ecg_logo.jpg',
            fit: BoxFit.contain,
          ),
        ),
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
      bottomNavigationBar: BottomNavigationBar(
        // add type to fixe icon and label
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.grey,
        // put color of a selected icon
        selectedItemColor: Colors.blue.shade900,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_view_outlined),
            label: 'Meter',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart_outlined),
            label: 'Transaction',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet_outlined),
            label: 'Wallets',
          ),
        ],
      ),
    );
  }
}
