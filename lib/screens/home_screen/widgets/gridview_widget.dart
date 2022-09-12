import 'package:flutter/material.dart';


class GridViewWidget extends StatelessWidget {
  const GridViewWidget({super.key, required this.width, required this.height, required this.borderRadius, required this.image, required this.press, required this.itemCount});
final double width;
final double height;
final double borderRadius;
final String image;
final Function() press;
final int itemCount;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: press,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15),
        itemCount: itemCount,
        itemBuilder: (context, index) {
          return  Container(
          width: width,
          height:height ,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(borderRadius),
          image: DecorationImage(image: AssetImage(image)),
          ),
        );
        },
      ),
    );
  }
}