import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarWidget extends StatefulWidget {
  const AppBarWidget({super.key});

  @override
  State<AppBarWidget> createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: EdgeInsets.only(top: 40, left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Hi Noha!",
                  style: GoogleFonts.inter(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 19.39)),
              SizedBox(
                width: 190,
                height: 20,
                child: Container(
                  margin: EdgeInsets.only(top: 4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset("assets/ep_location.png"),
                      Text(
                        "Location, Main City-Napgur",
                        style: GoogleFonts.inter(
                            color: Color(0xffB3B3B3),
                            fontSize: 11.63,
                            fontWeight: FontWeight.w600),
                      ),
                      Image.asset("assets/bi_chevron-down.png")
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: 10, top: 35),
          child: Stack(
            children: [
              Positioned(
                  child: IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        "assets/Bell_fill.png",
                        scale: 1,
                      ))),
              Positioned(
                  top: 5,
                  right: 8,
                  child: Container(
                    alignment: Alignment.center,
                    width: 18,
                    height: 18,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Color(0xffDC0000)),
                    child: Text(
                      "5",
                      style: TextStyle(fontSize: 13.5, color: Colors.white),
                    ),
                  )),
            ],
          ),
        ),
      ],
    );
  }
}
