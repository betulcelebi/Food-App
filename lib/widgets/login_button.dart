import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_app/pages/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginButton extends StatefulWidget {
  const LoginButton({super.key});

  @override
  State<LoginButton> createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push<void>(
          context,
          MaterialPageRoute<void>(
            builder: (BuildContext context) => const HomeScreen(),
          ),
        );
      },
      child: Container(
        alignment: Alignment.center,
        width: 360,
        height: 63,
        margin: EdgeInsets.only(top: 30),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(9),
            border: Border.all(color: Color(0xff314B61))),
        child: Text("Login",
            style: GoogleFonts.inriaSerif(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.w400)),
      ),
    );
  }
}
