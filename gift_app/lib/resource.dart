import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget title = Text(
  "Welcome To\nGift Generator!",
  style: GoogleFonts.merriweatherSans(
    fontSize: 28,
    fontWeight: FontWeight.w800,
  ),
  textAlign: TextAlign.center,
);

Text signInSubtitle = Text("Sign up to your account",
    style: GoogleFonts.merriweatherSans(
      fontSize: 18,
      fontWeight: FontWeight.w400,
    ));

Text loginSubtitle = Text("Log In to your account",
    style: GoogleFonts.merriweatherSans(
      fontSize: 18,
      fontWeight: FontWeight.w400,
    ));

Text labelEmail = Text("Email",
    style: GoogleFonts.merriweatherSans(
      fontSize: 16,
      fontWeight: FontWeight.w400,
    ));
Text labelPassword = Text("Password",
    style: GoogleFonts.merriweatherSans(
      fontSize: 16,
      fontWeight: FontWeight.w400,
    ));
Text labelUsername = Text("Username",
    style: GoogleFonts.merriweatherSans(
      fontSize: 16,
      fontWeight: FontWeight.w400,
    ));

Text signUpButton = Text("Sign up",
    style: GoogleFonts.merriweatherSans(
      fontSize: 18,
      fontWeight: FontWeight.w700,
    ));

Text loginButton = Text("Log In",
    style: GoogleFonts.merriweatherSans(
      fontSize: 18,
      fontWeight: FontWeight.w700,
    ));

final ButtonStyle buttonStyle = ElevatedButton.styleFrom(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    minimumSize: const Size(0, 50.0),
    backgroundColor: Colors.black);

Widget textField(Text label, bool isPassword,TextEditingController textFieldController) {
  return Padding(
      padding: const EdgeInsets.fromLTRB(65, 20, 65, 0),
      child: SizedBox(
        height: 42,
        child: TextFormField(
          controller: textFieldController,
          obscureText: isPassword,
          decoration: InputDecoration(
            floatingLabelStyle: const TextStyle(color: Colors.black),
            focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(width: 2, color: Colors.black),
            ),
            focusColor: Colors.black,
            enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(width: 2, color: Colors.black),
            ),
            label: label,
          ),
        ),
      ));
}

Text otherWiseForSignup = Text("or already have an account",
    style: GoogleFonts.merriweatherSans(
      fontSize: 14,
      fontWeight: FontWeight.w400,
    ));

Text otherWiseForLogin = Text("or don't have an account",
    style: GoogleFonts.merriweatherSans(
      fontSize: 14,
      fontWeight: FontWeight.w400,
    ));

Text loginOptionTextButton = Text("login",
    style: GoogleFonts.merriweatherSans(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: Colors.blue,
    ));

Text signUpOptionTextButton = Text("Sign up",
    style: GoogleFonts.merriweatherSans(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: Colors.blue,
    ));
