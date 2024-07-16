import 'package:flutter/material.dart';

class Assignment7 extends StatelessWidget {
  const Assignment7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile screen scrollable"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 75,
            height: 77,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage("https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTy5RYAuojXDARoaPBmukXLHj44QNn5dU4SzohSvzsobU4jFwh6"), // Replace with your image URL
                fit: BoxFit.cover,
              ),
             
             
              borderRadius: BorderRadius.circular(100),
             
              
            ),

                ),
                Column(
                  children: [
                    Container(
                      child: Text("James Josling"),

                    ),
                    Container(
                      child: Text("Founder JAVA"),
                    ),
                  ],
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              height: 1,
              width: 393,
              color: Colors.black,
            ),
             Container(
              margin: EdgeInsets.only(top: 20),
                height: 405,
                width: 331,
                child: Image.network("https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTy5RYAuojXDARoaPBmukXLHj44QNn5dU4SzohSvzsobU4jFwh6"),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                height:405 ,
                width: 312,
                child: Image.network("https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTy5RYAuojXDARoaPBmukXLHj44QNn5dU4SzohSvzsobU4jFwh6"),
              ),
          ],
        ),
      ),
    );
  }
}