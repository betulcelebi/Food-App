import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_app/model/restaurant_menu_model.dart';
import 'package:google_fonts/google_fonts.dart';

class RestaurantMenu extends StatefulWidget {
  const RestaurantMenu({super.key});

  @override
  State<RestaurantMenu> createState() => _RestaurantMenuState();
}

class _RestaurantMenuState extends State<RestaurantMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 25, left: 20, right: 10),
      width: 370,
      height: 350,
      child: ListView.builder(
        padding: EdgeInsets.all(2),
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: menuItems.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(10),
            width: 370,
            height: 96,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade200,
                  offset: Offset(1, 1),
                  blurRadius: 5,
                  spreadRadius: 2,
                )
              ],
            ),
            child: Row(
              children: [
                Image.asset(menuItems[index].images),
                Container(
                  margin: EdgeInsets.only(left: 12, top: 6),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 220,
                        height: 16,
                        //color: Colors.red,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              menuItems[index].foodNames,
                              style: GoogleFonts.inter(
                                  fontSize: 13.5,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff010E16)),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Row(
                                children: [
                                  Image.asset(menuItems[index].foodStar),
                                  Container(
                                      margin: EdgeInsets.only(left: 4),
                                      child: Text(
                                        menuItems[index].foodRate,
                                        style: GoogleFonts.inter(
                                            color: Color(0xffB3B3B3),
                                            fontWeight: FontWeight.w500),
                                      )),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 5),
                              // color: Colors.black,
                              width: 155,
                              height: 32,
                              child: Text(
                                menuItems[index].foodDescription,
                                style: GoogleFonts.inter(
                                    color: Color(0xff9B9B9B),
                                    fontSize: 11.63,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 3, top: 15),
                              width: 65,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(right: 3),
                                    alignment: Alignment.center,
                                    padding: EdgeInsets.all(0),
                                    width: 22,
                                    height: 22,
                                    decoration: BoxDecoration(
                                      color:
                                          menuItems[index].buttonSelectedLeft ==
                                                  false
                                              ? Colors.white
                                              : Colors.black,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.shade200,
                                          offset: Offset(1, 1),
                                          blurRadius: 5,
                                          spreadRadius: 2,
                                        )
                                      ],
                                    ),
                                    child: Image.asset(
                                      menuItems[index].buttonIconLeft,
                                    ),
                                  ),
                                  Text(
                                    menuItems[index].buttonText,
                                    style: GoogleFonts.inter(
                                        fontSize: 18.36,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 3),
                                    alignment: Alignment.center,
                                    width: 22,
                                    height: 22,
                                    decoration: BoxDecoration(
                                      color: menuItems[index]
                                                  .buttonSelectedRight ==
                                              false
                                          ? Colors.white
                                          : Colors.black,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.shade200,
                                          offset: Offset(1, 1),
                                          blurRadius: 5,
                                          spreadRadius: 2,
                                        ),
                                      ],
                                    ),
                                    child: Image.asset(
                                      menuItems[index].buttonIconRight,
                                      color: menuItems[index]
                                                  .buttonSelectedRight ==
                                              true
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        //color: Colors.green,
                        width: 26,
                        height: 20,
                        margin: EdgeInsets.only(top: 10),
                        child: Text(
                          menuItems[index].foodPrice,
                          style: GoogleFonts.inter(
                              color: Color(0xff010E16),
                              fontSize: 16.48,
                              fontWeight: FontWeight.w700),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
