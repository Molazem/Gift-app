import 'package:flutter/material.dart';
import 'package:gift_app/login_page.dart';
import 'all_controllers_we_need.dart';
import 'resource.dart';

class MySignupPage extends StatefulWidget {
  const MySignupPage({super.key});

  @override
  State<MySignupPage> createState() => _MySignupPageState();
}

class _MySignupPageState extends State<MySignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(67.0, 60, 66.07, 19),
          child: Image(
            height: 200,
            image: AssetImage('assets/images/mi.png'),
          ),
        ),
        title,
        signInSubtitle,
        textField(labelEmail, false, signupEmailTextFieldController),
        textField(labelPassword, true, signupPasswordTextFieldController),
        textField(labelUsername, false, signupUsernameTextFieldController),
        Container(
          foregroundDecoration:
              BoxDecoration(borderRadius: BorderRadius.circular(50)),
          width: double.infinity,
          margin: const EdgeInsets.fromLTRB(65, 20, 65, 10),
          child: ElevatedButton(
            onPressed: () {
              print(signupEmailTextFieldController.text);
              print(signupPasswordTextFieldController.text);
              print(signupUsernameTextFieldController.text);
              print((isValidEmail(signupEmailTextFieldController.text) &&
                  isValidPassword(signupPasswordTextFieldController.text) &&
                  isValidUsername(signupUsernameTextFieldController.text)));
            },
            style: buttonStyle,
            child: signUpButton,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            otherWiseForSignup,
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MyLoginPage()));
                },
                child: loginOptionTextButton)
          ],
        )
      ]),
    ));
  }
}
