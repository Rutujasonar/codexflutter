import 'package:flutter/material.dart';

class Assignment3 extends StatelessWidget {
  const Assignment3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text("Row"),
        centerTitle: true, 
    ),
     body: SizedBox(
      height: double.infinity,
       child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.limeAccent,
       
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.limeAccent,
              ),
            ],
           ),
     ),
     );
  }
}