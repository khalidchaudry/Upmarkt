import 'package:flutter/material.dart';

class BrandWidget extends StatelessWidget {
  const BrandWidget({super.key, required this.image, required this.press});
final String image;
final Function() press;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: press,
      child: CircleAvatar(
        radius: 50,
        backgroundImage: AssetImage(image),
      ),
    );
  }
}