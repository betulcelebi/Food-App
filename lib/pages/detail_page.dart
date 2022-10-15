import 'package:flutter/material.dart';
import 'package:food_app/widgets/detail_app_bar.dart';
import 'package:food_app/widgets/detail_page_container.dart';
import 'package:food_app/widgets/detail_page_image.dart';
import 'package:food_app/widgets/restaurant_chain.dart';
import 'package:food_app/widgets/restaurant_description.dart';
import 'package:food_app/widgets/restaurant_menu.dart';
import 'package:food_app/widgets/restaurant_name.dart';
import 'package:food_app/widgets/view_card_menu.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: PreferredSize(
          child: DetailAppBar(), preferredSize: Size.fromHeight(80.0)),
      body: Column(
        children: [
          DetailPageImage(),
          Stack(
            children: [
              DetailContainer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RestaurantName(),
                  RestaurantDescription(),
                  RestaurantChain(),
                  RestaurantMenu()
                ],
              ),
              Positioned(
                width: 340,
                height: 70,
                bottom: 8,
                left: 30,
                child: ViewCardMenu(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
