import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DetailAppBar extends StatelessWidget {
  const DetailAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      actions: [
        IconButton(
            onPressed: () {},
            icon: Container(
                alignment: Alignment.center,
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Color(0xff80D9D9D9)),
                child: Image.asset("assets/like.png")))
      ],
      leading: IconButton(
          onPressed: () {
            Navigator.pop(context, true);
          },
          icon: Container(
              alignment: Alignment.center,
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Color(0xff80D9D9D9)),
              child: Image.asset("assets/vector.png"))),
    );
  }
}
