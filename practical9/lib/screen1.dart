import 'package:flutter/material.dart';

class Box extends StatefulWidget {
  const Box({super.key});

  @override
  State<Box> createState() => _BoxState();
}

class _BoxState extends State<Box> {
  bool boxcolor=false;

  void Changecolor(){
    setState(() {
      if (boxcolor) {
        boxcolor=false;
      } else {
        boxcolor=true;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Box color"),
      ),
      body: Center(
         child: InkWell(
           child: Container(
            height: 100,
            width: 100,
            color: boxcolor?Colors.amber:Colors.deepOrangeAccent,
           ),
           onTap: () {
             Changecolor();
           },
         ),
      ),
    );
  }
}