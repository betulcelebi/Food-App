import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BgImage extends StatefulWidget {
  const BgImage({super.key});

  @override
  State<BgImage> createState() => _BgImageState();
}

class _BgImageState extends State<BgImage> {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/bgimage.png"
    );
  }
}