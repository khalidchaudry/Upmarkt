import 'package:flutter/material.dart';

class ViewAllWidget extends StatelessWidget {
  const ViewAllWidget({super.key, required this.text, required this.press});
final String text;
final Function() press; 
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
      Text(text,style: const TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontFamily: 'Inter'),),
      const Spacer(),
      InkWell(
        onTap: press
          
        ,
        child: const Text('View All',style:  TextStyle(color: Colors.blue,fontWeight: FontWeight.w400,fontFamily: 'Inter'))),
       
        const Icon(Icons.arrow_forward_ios_outlined,size: 15,),
    ],);
  }
}