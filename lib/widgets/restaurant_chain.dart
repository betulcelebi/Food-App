import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

import '../model/restaurant_chain_model.dart';

class RestaurantChain extends StatefulWidget {
  const RestaurantChain({super.key});

  @override
  State<RestaurantChain> createState() => _RestaurantChainState();
}

class _RestaurantChainState extends State<RestaurantChain> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 27, top: 34),
      width: double.infinity,
      height: 30,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: chainList.length,
        itemBuilder: (context, index) {
          return Container(
            alignment: Alignment.center,
            width: 80,
            margin: EdgeInsets.symmetric(
              horizontal: 4,
            ),
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: chainList[index].isSelected == true
                    ? Colors.black
                    : Colors.white,
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(3)),
            child: Text(
              chainList[index].foodType,
              style: GoogleFonts.inter(
                color: chainList[index].isSelected == true
                    ? Colors.white
                    : Colors.black, fontSize: 13, fontWeight: FontWeight.w400
              ),
            ),
          );
        },
      ),
    );
  }
}
