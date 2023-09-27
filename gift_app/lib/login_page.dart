import 'package:flutter/material.dart';
import 'resource.dart';
import 'all_controllers_we_need.dart';

class MyLoginPage extends StatefulWidget {
  const MyLoginPage({super.key});

  @override
  State<MyLoginPage> createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {
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
        loginSubtitle,
        textField(labelEmail, false, loginEmailTextFieldController),
        textField(labelPassword, true, loginPasswordTextFieldController),
        Container(
          foregroundDecoration:
              BoxDecoration(borderRadius: BorderRadius.circular(50)),
          width: double.infinity,
          margin: const EdgeInsets.fromLTRB(65, 20, 65, 10),
          child: ElevatedButton(
            onPressed: () {
              print(loginEmailTextFieldController.text);
              print(loginPasswordTextFieldController.text);
              print((isValidEmail(loginEmailTextFieldController.text) &&
                  isValidPassword(loginPasswordTextFieldController.text)));
            },
            style: buttonStyle,
            child: loginButton,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            otherWiseForLogin,
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: signUpOptionTextButton)
          ],
        )
      ]),
    ));
  }
}