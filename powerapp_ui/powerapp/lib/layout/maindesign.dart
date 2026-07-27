import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Maindesign extends StatelessWidget {
  // add navigationshell route for the path of my project
  final StatefulNavigationShell navigationShell;
  const Maindesign({super.key, required this.navigationShell});

  @override
  Widget build(BuildContext context) {
    final title = ['Home', 'Meters', 'Transactions', 'Wallets'];
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

        // automation update title in each main pages
        title: Text(
          title[navigationShell.currentIndex],
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
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
      // add navigationshell in body to represent every pages
      body: navigationShell,
      bottomNavigationBar: BottomNavigationBar(
        // --------------- LOGIQUE PART ----------
        // add currentindex
        currentIndex: navigationShell.currentIndex,
        onTap: (index) {
          navigationShell.goBranch(index);
        },

        // ------------------ DESIGN PART ----------------

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
            label: 'Meters',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart_outlined),
            label: 'Transactions',
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
