import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginText extends StatefulWidget {
  const LoginText({super.key});

  @override
  State<LoginText> createState() => _LoginTextState();
}

class _LoginTextState extends State<LoginText> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      width: 300,
      height: 201,
      margin: EdgeInsets.only(top: 25, right: 50),
      child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit.", style: TextStyle(color: Colors.white, fontSize: 39, ), textAlign: TextAlign.start,),
    );
  }
}