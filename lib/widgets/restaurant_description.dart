import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class RestaurantDescription extends StatefulWidget {
  const RestaurantDescription({super.key});

  @override
  State<RestaurantDescription> createState() => _RestaurantDescriptionState();
}

class _RestaurantDescriptionState extends State<RestaurantDescription> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 19,
      margin: EdgeInsets.only(left: 27, top: 9),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("assets/rstar.png"),
                Text(
                  "4.5",
                  style: GoogleFonts.inter(
                      color: Color(0xffB3B3B3),
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 30),
            width: 110,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("assets/duration.png"),
                Text(
                  "25-35 mins",
                  style: GoogleFonts.inter(
                      color: Color(0xffB3B3B3),
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 20),
            width: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("assets/rdot.png"),
                Text(
                  "8 km",
                  style: GoogleFonts.inter(
                      color: Color(0xffB3B3B3),
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
