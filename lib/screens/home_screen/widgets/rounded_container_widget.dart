import 'package:flutter/material.dart';

class RoundedContainerWidget extends StatelessWidget {
  const RoundedContainerWidget({super.key, required this.width, required this.height, required this.image, required this.press});
final double width;
final double height;
final String image;
final Function() press;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height:height ,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20
      ),
      image: DecorationImage(image: AssetImage(image)),
      ),
    );
  }
}