import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RestaurantContainer extends StatefulWidget {
  final String imageurl;
  final String restaurantname;
  final String staricon;
  final String ratetext;
  final String carbontime;
  final String carbontimetext;
  final String doticon;
  final String distancetext;
  final Color newcontainercolor;
  final String newtext;
  const RestaurantContainer(
      {super.key,
      required this.imageurl,
      required this.restaurantname,
      required this.staricon,
      required this.ratetext,
      required this.carbontime,
      required this.carbontimetext,
      required this.doticon,
      required this.distancetext,
      required this.newcontainercolor,
      required this.newtext});

  @override
  State<RestaurantContainer> createState() => _RestaurantContainerState();
}

class _RestaurantContainerState extends State<RestaurantContainer> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(0),
      margin: EdgeInsets.only(
        top: 15,
        left: 20,
        right: 20,
      ),
      width: 320,
      height: 97,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        //border: Border.all(color: Colors.white),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 189, 188, 188).withOpacity(0.5),
            blurRadius: 15,
            spreadRadius: 0.1,
            offset: Offset(0, 5),
          )
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            width: 97,
            height: 97,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(255, 141, 141, 141)),
            child: Image.asset(widget.imageurl),
          ),
          Container(
            margin: EdgeInsets.only(left: 13, top: 7),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.restaurantname,
                    style: GoogleFonts.inter(
                        fontSize: 14, fontWeight: FontWeight.w600)),
                Container(
                  margin: EdgeInsets.only(top: 5),
                  child: Row(children: [
                    Image.asset(widget.staricon),
                    Text(
                      widget.ratetext,
                      style: TextStyle(color: Color(0xffB3B3B3), fontSize: 13),
                    )
                  ]),
                ),
                Row(
                  children: [
                    TextButton.icon(
                      onPressed: () {},
                      icon: Image.asset(widget.carbontime),
                      label: Text(
                        widget.carbontimetext,
                        style: GoogleFonts.inter(
                            fontSize: 13,
                            color: Color(0xffB3B3B3),
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    TextButton.icon(
                      onPressed: () {},
                      icon: Image.asset(widget.doticon),
                      label: Text(
                        widget.distancetext,
                        style: GoogleFonts.inter(
                            fontSize: 13,
                            color: Color(0xffB3B3B3),
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(left: 10),
            width: 55,
            height: 30,
            decoration: BoxDecoration(
                color: widget.newcontainercolor,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(14),
                    bottomLeft: Radius.circular(14))),
            child: Text(
              widget.newtext,
              style: GoogleFonts.inter(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }
}
