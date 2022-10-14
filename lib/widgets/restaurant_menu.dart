import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_app/model/restaurant_menu_model.dart';

class RestaurantMenu extends StatefulWidget {
  const RestaurantMenu({super.key});

  @override
  State<RestaurantMenu> createState() => _RestaurantMenuState();
}

class _RestaurantMenuState extends State<RestaurantMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
    margin: EdgeInsets.only(top: 25, left: 27, right: 10),
      width: 350,
      height: 350,
      child: ListView.builder(
        padding: EdgeInsets.all(2),
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: menuItems.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(10),
            width: 360,
            height: 96,
            decoration: BoxDecoration(color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [BoxShadow(color: Colors.grey.shade200,offset: Offset(1, 1), blurRadius: 5, spreadRadius: 5, )],
              ),
          );
        },
      ),
    );
  }
}
