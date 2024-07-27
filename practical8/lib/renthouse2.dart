import 'package:flutter/material.dart';

class category extends StatelessWidget {
  const category({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(onPressed: () {
                  
                }, child:Row(
                  children: [
                    Icon(Icons.search),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Text("search now"),
                    ),
                  ],
                ),
                style: ButtonStyle(
                  fixedSize: MaterialStatePropertyAll(Size(300, 10))
                ), ),
                Container(
                  height: 50.49,
                  width: 50.49,
                  margin: EdgeInsets.only(top: 5),
                  child: Center(
                    child: Icon(Icons.format_list_bulleted_rounded),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    border: Border.all(color: Colors.black,width: 1)
                  ),
                )
              ],
            ),
            Container(margin: EdgeInsets.only(top: 20),
            child: Row(mainAxisAlignment:MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height:113.6 ,
                width: 113.6,
                child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.ac_unit_rounded),
                  Text("Near By",style: TextStyle(
                    fontSize: 14,fontWeight: FontWeight.w400
                  ),)
                ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  boxShadow:[BoxShadow(spreadRadius:2,
                  color: Color.fromARGB(255, 195, 195, 195),
                  blurRadius: 2,
                  offset: Offset(5, 5)
                   )
            ],
                
                color: Colors.white),
              
            ),
            ],
            ),),
            Container(
              margin: EdgeInsets.only(right: 250,top: 10,left: 10),
            )
          ],
        ),
      ),
    );
  }
}