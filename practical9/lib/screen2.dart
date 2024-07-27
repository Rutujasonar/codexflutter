import 'package:flutter/material.dart';

class number extends StatefulWidget {
  const number({super.key});

  @override
  State<number> createState() => _numberState();
}

class _numberState extends State<number> {
  int counter=0;

  void Increment(){
    setState(() {
      counter++;
    });
  }
  void reset(){
    setState(() {
      counter=0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (
        title: Text("Increment"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(onPressed: () {
              Increment();
            }, child: Icon(Icons.add),),
            Text("$counter"),
            ElevatedButton(onPressed: () {
              reset();
            }, child: Icon(Icons.restart_alt)),
          ],
        ),
      ),
    );
  }
}