import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class BannerWidget extends StatefulWidget {
  const BannerWidget({super.key});

  @override
  State<BannerWidget> createState() => _BannerWidgetState();
}

class _BannerWidgetState extends State<BannerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 370,
      height: 158,
      margin: EdgeInsets.only(top: 16),
      child: Stack(
        children: [
          Image.asset(
            "assets/unsplash.png",
            fit: BoxFit.fill,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 15, left: 24),
                child: Text(
                  "Get Special Discount",
                  style: GoogleFonts.inter(
                      color: Color(0xff9B9B9B),
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 16, left: 24),
                child: Text(
                  "up to 75%",
                  style: GoogleFonts.inriaSerif(
                      color: Color(0xffF5F5F5),
                      fontSize: 35,
                      fontWeight: FontWeight.w700),
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: 116,
                height: 25,
                margin: EdgeInsets.only(top: 25, left: 24),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6)),
                child: Text(
                  "Claim Voucher",
                  style: GoogleFonts.inter(
                      fontSize: 12,
                      color: Color(0xff010E16),
                      fontWeight: FontWeight.w500),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
