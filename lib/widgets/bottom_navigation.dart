import 'package:flutter/material.dart';

class HomeScreenBottom extends StatefulWidget {
  const HomeScreenBottom({
    super.key,
    required int selectedIndex,
  });

  @override
  State<HomeScreenBottom> createState() => _HomeScreenBottomState();
}

class _HomeScreenBottomState extends State<HomeScreenBottom> {
  int selectedIndex = 0;
  onTap(index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: onTap,
      elevation: 0,
      currentIndex: selectedIndex,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      items: [
        BottomNavigationBarItem(
            icon: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 45,
                  height: 45,
                  child: Image.asset("assets/blackcircle.png",
                      color: selectedIndex == 0
                          ? Color.fromARGB(255, 0, 0, 0)
                          : Colors.white),
                ),
                Container(
                  width: 25,
                  height: 25,
                  child: Image.asset("assets/home_light.png",
                      color: selectedIndex == 0
                          ? Color.fromARGB(255, 255, 255, 255)
                          : Color(0xff9B9B9B)),
                )
              ],
            ),
            label: ""),
        BottomNavigationBarItem(
            icon: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 45,
                  height: 45,
                  child: Image.asset("assets/blackcircle.png",
                      color: selectedIndex == 1
                          ? Color.fromARGB(255, 0, 0, 0)
                          : Colors.white),
                ),
                Container(
                  width: 25,
                  height: 25,
                  child: Image.asset("assets/favorite_duotone.png",
                      color: selectedIndex == 1
                          ? Color.fromARGB(255, 255, 255, 255)
                          : Color(0xff9B9B9B)),
                ),
              ],
            ),
            label: ""),
        BottomNavigationBarItem(
            icon: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 45,
                  height: 45,
                  child: Image.asset("assets/blackcircle.png",
                      color: selectedIndex == 2
                          ? Color.fromARGB(255, 0, 0, 0)
                          : Colors.white),
                ),
                Container(
                  width: 25,
                  height: 25,
                  child: Image.asset("assets/fluent_cart.png",
                      color: selectedIndex == 2
                          ? Color.fromARGB(255, 255, 255, 255)
                          : Color(0xff9B9B9B)),
                ),
              ],
            ),
            label: ""),
        BottomNavigationBarItem(
          icon: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 45,
                height: 45,
                child: Image.asset("assets/blackcircle.png",
                    color: selectedIndex == 3
                        ? Color.fromARGB(255, 0, 0, 0)
                        : Colors.white),
              ),
              Container(
                width: 25,
                height: 25,
                child: Image.asset("assets/user_duotone.png",
                    color: selectedIndex == 3
                        ? Color.fromARGB(255, 255, 255, 255)
                        : Color(0xff9B9B9B)),
              ),
            ],
          ),
          label: "",
        ),
      ],
      unselectedLabelStyle: TextStyle(fontSize: 8),
      selectedLabelStyle: TextStyle(fontSize: 8),
      selectedItemColor: Color.fromARGB(255, 255, 255, 255),
      unselectedItemColor: Color(0xff40000000),
    );
  }
}
