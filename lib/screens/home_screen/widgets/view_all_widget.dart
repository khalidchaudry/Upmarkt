import 'package:flutter/material.dart';

class ViewAllWidget extends StatelessWidget {
  const ViewAllWidget({super.key, required this.text, required this.press});
final String text;
final Function() press; 
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Text(text,style: const TextStyle(fontSize: 12,fontWeight: FontWeight.w400,fontFamily: 'Inter'),),
      const Spacer(),
      TextButton.icon(onPressed: press, icon:const  Icon(Icons.forward_10), label: const Text('View All',style:  TextStyle(fontSize: 12,fontWeight: FontWeight.w400,fontFamily: 'Inter'))),
    ],);
  }
}