import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({super.key});

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 290,
          height: 41,
          margin: EdgeInsets.only(top: 16, left: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              border: Border.all(color: Colors.white),
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 209, 209, 209),
                  blurStyle: BlurStyle.outer,
                  blurRadius: 5,
                  spreadRadius: 2,
                )
              ]),
          child: Row(
            children: [
              Container(
                  width: 20,
                  height: 20,
                  margin: EdgeInsets.only(left: 8),
                  child: Image.asset("assets/Search_light.png")),
              Container(
                  margin: EdgeInsets.only(left: 8),
                  child: Text(
                    "Search Your food or Restaurant",
                    style: GoogleFonts.inter(
                        color: Color(0xffCFCFCF),
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                  ))
            ],
          ),
        ),
        Container(
          width: 55,
          height: 41,
          margin: EdgeInsets.only(top: 16, left: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              border: Border.all(color: Colors.white),
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 209, 209, 209),
                  blurStyle: BlurStyle.outer,
                  blurRadius: 5,
                  spreadRadius: 2,
                )
              ]),
          child: Image.asset("assets/Filter.png"),
        ),
      ],
    );
  }
}
