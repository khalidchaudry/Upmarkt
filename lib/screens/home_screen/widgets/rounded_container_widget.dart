import 'package:flutter/material.dart';

class RoundedContainerWidget extends StatelessWidget {
  const RoundedContainerWidget({super.key, required this.width, required this.height, required this.image, required this.press, required this.borderRadius});
final double width;
final double height;
final double borderRadius;
final String image;
final Function() press;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: press,
      child: Container(
        width: width,
        height:height ,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(borderRadius),
        image: DecorationImage(image: AssetImage(image)),
        ),
      ),
    );
  }
}