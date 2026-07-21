import 'package:flutter/material.dart';
import 'package:login_ui/features/loginpage/widgets/formValidation.dart';
import 'package:login_ui/features/loginpage/widgets/submitted_button.dart';
import 'package:login_ui/features/loginpage/widgets/submitted_email_button.dart';
import 'package:login_ui/features/loginpage/widgets/text_signup.dart';
import 'package:login_ui/features/loginpage/widgets/title.dart';

class Maindesign extends StatefulWidget {
  const Maindesign({super.key});

  @override
  State<StatefulWidget> createState() {
    return _Home();
  }
}

class _Home extends State<Maindesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(top: 150, left: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TitleWidget(),
                SizedBox(height: 20),
                Formvalidation(),
                SizedBox(height: 40),
                SubmittedButton(),
                SizedBox(height: 30),
                TextSignup(),
                SizedBox(height:30,),
                SubmittedEmailButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
