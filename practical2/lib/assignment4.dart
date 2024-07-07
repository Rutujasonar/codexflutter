import 'package:flutter/material.dart';

class Assignment4 extends StatelessWidget {
  const Assignment4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 188, 23, 28),
        title: Text("Row"),
        centerTitle: true, 
    ), body: SizedBox(
      height: double.infinity,
       child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                height: 100,
                width: 100,
                color: Color.fromARGB(255, 174, 12, 76),
       
              ),
              Container(
                height: 100,
                width: 100,
                color: Color.fromARGB(255, 251, 111, 181),
              ),
            ],
           ),
     ),
    );
  }
}