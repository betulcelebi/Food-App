import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class RestaurantName extends StatefulWidget {
  const RestaurantName({super.key});

  @override
  State<RestaurantName> createState() => _RestaurantNameState();
}

class _RestaurantNameState extends State<RestaurantName> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 111,
      height: 23,
      margin: EdgeInsets.only(top: 18, left: 27),
      child: Text(
        "Burger King",
        style: GoogleFonts.inter(
            color: Color(0xff010E16),
            fontSize: 19,
            fontWeight: FontWeight.w600),
      ),
    );
  }
}
