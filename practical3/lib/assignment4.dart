import 'package:flutter/material.dart';

class Assignment4 extends StatelessWidget {
  const Assignment4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Instagram"),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
        ),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                      color: Color.fromARGB(255, 239, 194, 194),
                    ),
                  ),
                  Text("Rutuja"),
                  SizedBox(
                    width: 100,
                  )
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                width: 200,
                height: 200,
                color: Color.fromARGB(255, 8, 8, 8),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.favorite_sharp,
                        color: Color.fromARGB(255, 225, 30, 16),
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.add_comment,
                        color: const Color.fromARGB(255, 7, 7, 7),
                      )),
                      SizedBox(
                        width: 120,
                      )
                ],
              )
            ],
          ),
        ));
  }
}
