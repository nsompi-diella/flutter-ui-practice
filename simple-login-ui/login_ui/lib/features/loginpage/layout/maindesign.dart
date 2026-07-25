import 'package:flutter/material.dart';
import 'package:login_ui/core/controller/controller.dart';
import 'package:login_ui/features/loginpage/widgets/formValidation.dart';
import 'package:login_ui/features/loginpage/widgets/submitted_button.dart';
import 'package:login_ui/features/loginpage/widgets/submitted_email_button.dart';
import 'package:login_ui/features/loginpage/widgets/text_barre_google.dart';
import 'package:login_ui/features/loginpage/widgets/textsignup.dart';
import 'package:login_ui/features/loginpage/widgets/title.dart';

class Maindesign extends StatefulWidget {
  const Maindesign({super.key});

  @override
  State<StatefulWidget> createState() {
    return _Home();
  }
}

class _Home extends State<Maindesign> {
  // validate ma form
  final _formKey = GlobalKey<FormState>();
  // recupere mes controller
  final controller = Controller();

  // loading button
  bool isloading = false;

  // add dispose to avoir crash of input
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  // create login action
  Future<void> login() async {
    //  validate form
    if (!_formKey.currentState!.validate()) {
      return;
    }
    // recupere les valeur
    // final email = controller.emailCtrl.text;
    // final password = controller.passwordCtrl.text;
    
  


    // loading button
    setState(() {
      isloading = true;
    });

    // simulate request API
    await Future.delayed(Duration(seconds: 2));

    //  stop loading
    if (!mounted) return;

    // clear input
    controller.emailCtrl.clear();
    controller.passwordCtrl.clear();
    // reset isloading to false
    setState(() {
      isloading = false;
    });

    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            // add the key to validate form
            key: _formKey,
            child: Container(
              margin: EdgeInsets.only(top: 100, left: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TitleWidget(),
                  SizedBox(height: 20),
                  // add controller in my validation form
                  Formvalidation(controller: controller),
                  SizedBox(height: 40),
                  // add the require constructor & login function
                  SubmittedButton(isloading: isloading, onpressed: login),
                  SizedBox(height: 30),
                  TextBarreGoogle(),
                  SizedBox(height: 30),
                  SubmittedEmailButton(),
                  SizedBox(height: 30),
                  Textsignup(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
