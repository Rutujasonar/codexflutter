import 'package:flutter/material.dart';

class Assignment1 extends StatelessWidget {
  const Assignment1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.only(left: 20,right: 20),
          padding: EdgeInsets.only(left: 20,right: 20),
          height: 369,
          width: 441,
          color: Colors.red,
          child: Center(
            child: Container(
              padding: EdgeInsets.only(left: 10,right: 10),
              height: 308,
              width: 378,
              color: Colors.green,
              child: Center(
                child: Container(
                 
                  height: 180,
                  width: 320,
                  child: Image.network("https://akm-img-a-in.tosshub.com/indiatoday/images/story/202109/jeetu_1200x768.jpeg"),

                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}