import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class ViewCardMenu extends StatefulWidget {
  const ViewCardMenu({super.key});

  @override
  State<ViewCardMenu> createState() => _ViewCardMenuState();
}

class _ViewCardMenuState extends State<ViewCardMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340,
      height: 70,
      decoration: BoxDecoration(
          color: Color(0xff010E16), borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.only(left: 25),
            child: Text(
              "View Cart",
              style: GoogleFonts.inter(
                  color: Colors.white,
                  fontSize: 19.39,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 25),
            child: Text(
              "\$ 7",
              style: GoogleFonts.inter(
                  color: Colors.white,
                  fontSize: 19.39,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }
}
