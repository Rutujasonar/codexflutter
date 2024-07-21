import 'package:flutter/material.dart';

class Listview extends StatelessWidget {
  const Listview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemBuilder: (context, index) {
        return Container(
          height: 100,
          width: 100,
          color: Colors.red,
          margin: EdgeInsets.all(20),
        );
      },

      ),
    );
  }
}