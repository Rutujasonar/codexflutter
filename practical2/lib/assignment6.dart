import 'package:flutter/material.dart';

class assignment6 extends StatelessWidget {
  const assignment6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 226, 224, 225),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Row"),
        centerTitle: true, 
        
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [
            Container(
              height: 330,
              width: 480,
              color: Colors.red,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
              height: 88,
              width: 101,
              color: Color.fromARGB(255, 226, 224, 225),
              
            ),
            Container(
              height: 88,
              width: 101,
              color: Color.fromARGB(255, 226, 224, 225),
             
            ),
             Container(
              height: 88,
              width: 101,
              color: Color.fromARGB(255, 226, 224, 225),
             
             ),
                  ],
                ),
              ),
            ),
            Container(
              height: 330,
              width: 480,
              color: Colors.red,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
              height: 88,
              width: 101,
              color: Color.fromARGB(255, 226, 224, 225),
              
            ),
            Container(
              height: 88,
              width: 101,
              color: Color.fromARGB(255, 226, 224, 225),
             
            ),
             Container(
              height: 88,
              width: 101,
              color: Color.fromARGB(255, 226, 224, 225),
             
             ),
                  ],
                ),
              ),
            ),

          ],

        ),
        
       
    ),
     );
  }
}