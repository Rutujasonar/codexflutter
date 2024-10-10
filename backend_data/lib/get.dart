import 'package:flutter/material.dart';

class backendGet extends StatefulWidget {
  const backendGet({super.key});

  @override
  State<backendGet> createState() => _backendGetState();
}

class _backendGetState extends State<backendGet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: myData.length,
        itemBuilder: (context,index) {
            return ListTile(
              onTap: () {
                Navigator.push(
                  context,
                    MaterialPageRoute(builder:(context) => screen2(info: myData[index]),
                    
                   )
                );
                        },
              title: Text("${myData[index]["id"]}. ${myData[index]["username"]}"),
            );
        },
      ),
    );
  }
}