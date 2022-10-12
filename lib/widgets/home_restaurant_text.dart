import 'package:flutter/cupertino.dart';

import 'package:google_fonts/google_fonts.dart';

class HomeRestaurantText extends StatefulWidget {
  const HomeRestaurantText({super.key});

  @override
  State<HomeRestaurantText> createState() => _HomeRestaurantTextState();
}

class _HomeRestaurantTextState extends State<HomeRestaurantText> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340,
      height: 21,
      margin: EdgeInsets.only(top: 35),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Restaurant ",
            style: GoogleFonts.inter(
                color: Color(0xff010E16),
                fontSize: 17,
                fontWeight: FontWeight.w600),
          ),
          GestureDetector(
            onTap: () {},
            child: Text("Show all",
                style: GoogleFonts.inter(
                    color: Color(0xff459FCA),
                    fontSize: 12,
                    fontWeight: FontWeight.w400)),
          )
        ],
      ),
    );
  }
}
