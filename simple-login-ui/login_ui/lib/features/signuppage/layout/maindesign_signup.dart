import 'package:flutter/material.dart';
import 'package:login_ui/features/loginpage/widgets/submitted_email_button.dart';
import 'package:login_ui/features/loginpage/widgets/text_barre_google.dart';
import 'package:login_ui/features/signuppage/widgets/signupform.dart';

class MaindesignSignup extends StatefulWidget {
  const MaindesignSignup({super.key});

  @override
  State<StatefulWidget> createState() {
    return _Home();
  }
}

class _Home extends State<MaindesignSignup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(top: 100, left: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Signupform(),
                SizedBox(height: 30),
                TextBarreGoogle(),
                SizedBox(height: 30),
                SubmittedEmailButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
