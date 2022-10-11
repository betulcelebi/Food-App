import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountText extends StatefulWidget {
  const AccountText({super.key});

  @override
  State<AccountText> createState() => _AccountTextState();
}

class _AccountTextState extends State<AccountText> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(top: 37),
          width: 159,
          height: 18,
          child: Text("Don’t have an account? ", style: TextStyle(fontSize: 14, color: Color(0xff375268)))),
        Container(
          width: 105,
          height: 18,
          child: Text("Create account", style: GoogleFonts.inter(fontSize: 14, color: Color.fromARGB(255, 255, 255, 255)))),
      ],
    );
  }
}