import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeCategoryList extends StatefulWidget {
  const HomeCategoryList({super.key});

  @override
  State<HomeCategoryList> createState() => _HomeCategoryListState();
}

class _HomeCategoryListState extends State<HomeCategoryList> {
  List<String> categoryimage = [
    "assets/Ellipse 1.png",
    "assets/Ellipse 2.png",
    "assets/Ellipse 3.png",
    "assets/Ellipse 4.png",
    "assets/Ellipse 5.png",
  ];
  List<String> categorytext = [
    "Pizza",
    "Pan-cake",
    "Sandwich",
    "Ice-Cream",
    "Noodle",
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, top: 17),
      child: SizedBox(
        width: double.infinity,
        height: 150,
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: categoryimage.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Image.asset(categoryimage[index]),
                Text(
                  categorytext[index],
                  style: GoogleFonts.inter(
                      color: Color(0xff010E16),
                      fontSize: 12,
                      fontWeight: FontWeight.w400),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
