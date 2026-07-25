import 'package:flutter/material.dart';
import 'package:login_ui/core/controller/controller.dart';
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
  bool isloading = false;
  final _formKey = GlobalKey<FormState>();
  final controller = Controller();

  // create function signup
  Future<void> signup() async {
    // validation formkey
    if (!_formKey.currentState!.validate()) {
      return;
    }

    // recupere les valeur
    // final username = controller.usernameCtrl.text;
    // final email = controller.emailCtrl.text;
    // final password = controller.passwordCtrl.text;

    setState(() {
      isloading = true;
    });

    // simulate duration
    await Future.delayed(Duration(seconds: 2));

    // vider input

    controller.usernameCtrl.clear();
    controller.emailCtrl.clear();
    controller.passwordCtrl.clear();

    // couper le isloading
    if (!mounted) return;

    // mettre le isloading a false
    setState(() {
      isloading = false;
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Container(
              margin: EdgeInsets.only(top: 15, left: 40, right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TitleSignup(),
                  SizedBox(height: 20),
                  Signupform(controller: controller),
                  SizedBox(height: 15),
                  Checkremenber(),
                  SizedBox(height: 15),
                  SignupButton(isloading: isloading, onPressed: signup),
                  SizedBox(height: 15),
                  TextBarreGoogle(),
                  SizedBox(height: 30),
                  SubmittedEmailButton(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
