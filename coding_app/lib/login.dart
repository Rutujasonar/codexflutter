import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(children: [
          Container(
            height: 315,
            width: 394,
            decoration: BoxDecoration(
              color: Color.fromRGBO(44, 55, 149, 0.67),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(157.5)
              )
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 40,top: 10),
                )
              ],
            ),
          )
        ],),
      ),
    );
  }
}