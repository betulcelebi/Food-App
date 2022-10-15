import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeCategoryText extends StatefulWidget {
  const HomeCategoryText({super.key});

  @override
  State<HomeCategoryText> createState() => _HomeCategoryTextState();
}

class _HomeCategoryTextState extends State<HomeCategoryText> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340,
      height: 21,
      margin: EdgeInsets.only(top: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Categories",
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
