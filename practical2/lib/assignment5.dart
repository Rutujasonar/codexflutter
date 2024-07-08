import 'package:flutter/material.dart';

class assignment5 extends StatelessWidget {
  const assignment5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      backgroundColor: Color.fromARGB(255, 226, 224, 225),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Row"),
        centerTitle: true, 
        
      ),
      body: Center(
        child:Container(
          height: 422,
          width: 722,
          color: Colors.red,


        child: Center(
          child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 117,
              width: 124,
              color: Color.fromARGB(255, 226, 224, 225),
              
            ),
            Container(
              height: 117,
              width: 124,
              color: Color.fromARGB(255, 226, 224, 225),
             
            ),
             Container(
              height: 117,
              width: 124,
              color: Color.fromARGB(255, 226, 224, 225),
             
             ),
          
          ],
        ),
      ),
      ),
    
    ),
    );
  }
}