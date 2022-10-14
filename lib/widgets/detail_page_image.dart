import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailPageImage extends StatefulWidget {
  const DetailPageImage({super.key});

  @override
  State<DetailPageImage> createState() => _DetailPageImageState();
}

class _DetailPageImageState extends State<DetailPageImage> {
  @override
  Widget build(BuildContext context) {
    return Image.asset("assets/detail_bg.png");
  }
}
