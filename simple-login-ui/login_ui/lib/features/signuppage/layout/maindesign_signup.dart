import 'package:flutter/material.dart';
import 'package:login_ui/features/loginpage/widgets/submitted_email_button.dart';
import 'package:login_ui/features/loginpage/widgets/text_barre_google.dart';
import 'package:login_ui/features/signuppage/widgets/checkremenber.dart';
import 'package:login_ui/features/signuppage/widgets/signup_button.dart';
import 'package:login_ui/features/signuppage/widgets/signupform.dart';
import 'package:login_ui/features/signuppage/widgets/title_signup.dart';

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
            margin: EdgeInsets.only(top: 100, left: 40, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TitleSignup(),
                SizedBox(height: 20),
                Signupform(),
                SizedBox(height: 15),
                Checkremenber(),
                SizedBox(height: 15),
                SignupButton(),
                SizedBox(height: 15),
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
