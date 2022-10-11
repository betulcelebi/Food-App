import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_app/widgets/account_text.dart';
import 'package:food_app/widgets/bg_image.dart';
import 'package:food_app/widgets/login_button.dart';
import 'package:food_app/widgets/login_text.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          BgImage(),
          LoginText(),
          LoginButton(),
          AccountText(),
        ],
      ),
    );
  }
}
