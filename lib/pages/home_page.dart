import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_app/widgets/bottom_navigation.dart';

import '../widgets/appbar.dart';
import '../widgets/banner.dart';
import '../widgets/home_category_list.dart';
import '../widgets/home_category_text.dart';
import '../widgets/home_restaurant_text.dart';
import '../widgets/restaurant_container.dart';
import '../widgets/search_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int customselectedindex=0;
  List<String> imagepath = [
    "assets/burgerking.png",
    "assets/pizzania.png",
    "assets/pankcake.png"
  ];
  List<String> rstrntname = ["Burger King", "Pizzania", "Pancake"];
  List<String> starimage = [
    "assets/star.png",
    "assets/star.png",
    "assets/star.png"
  ];
  List<String> ratetxt = ["4.5", "3.7", "4.6"];
  List<String> crbnicon = [
    "assets/carbon_time.png",
    "assets/carbon_time.png",
    "assets/carbon_time.png"
  ];
  List<String> crbntext = ["25-35 mins", "20-25 mins", "15-20 mins"];
  List<String> dotimage = [
    "assets/dot.png",
    "assets/dot.png",
    "assets/dot.png"
  ];
  List<String> dstncetext = ["8 km", "7 km", "6 km"];
  List<Color> newcolor = [
    Color.fromARGB(255, 0, 0, 0),
    Color(0xffFFFFFF),
    Color.fromARGB(255, 0, 0, 0),
  ];
  List<String> newstring = ["New", "", "New"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          AppBarWidget(),
          SearchBar(),
          BannerWidget(),
          HomeCategoryText(),
          HomeCategoryList(),
          HomeRestaurantText(),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(0),
              shrinkWrap: true,
              itemCount: imagepath.length,
              itemBuilder: (context, index) {
                return RestaurantContainer(
                  imageurl: imagepath[index],
                  restaurantname: rstrntname[index],
                  staricon: starimage[index],
                  ratetext: ratetxt[index],
                  carbontime: crbnicon[index],
                  carbontimetext: crbntext[index],
                  doticon: dotimage[index],
                  distancetext: dstncetext[index],
                  newcontainercolor: newcolor[index],
                  newtext: newstring[index],
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: HomeScreenBottom(selectedIndex: customselectedindex),
    );
  }
}