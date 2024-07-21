import 'package:flutter/material.dart';

class Mycontainer extends StatelessWidget {
final String imgurl;
  const Mycontainer({super.key,required this.imgurl});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      height: 200,
      width: 200,
      child: Image.asset(imgurl,fit: BoxFit.cover,),
    );
  }
}