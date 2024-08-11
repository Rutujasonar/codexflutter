import 'package:flutter/material.dart';
import 'package:practical11/screen2.dart';

class screen1 extends StatefulWidget {
  const screen1({super.key});

  @override
  State<screen1> createState() => _screen1State();
}

class _screen1State extends State<screen1> {
final TextEditingController _namecontroller=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("From Demo"),
      ),
      body: Column(
        children: [
          TextField(
            controller:_namecontroller,
            cursorColor: Colors.red,
            decoration: InputDecoration(
              hintText: "Name"
            ),
          ),
          SizedBox(height: 20,),
          ElevatedButton(onPressed: () {
           Navigator.push(context, MaterialPageRoute(builder: (context) => screen2(name:_namecontroller.text ),));
          }, child:Text("Submit") )
        ],
      ),
    );
  }
}