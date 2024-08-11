import 'package:flutter/material.dart';

class portfolio extends StatefulWidget {
  const portfolio({super.key});

  @override
  State<portfolio> createState() => _portfolioState();
}

class _portfolioState extends State<portfolio> {
  bool boxcolor = true;
  int count = 0;

  Widget mytext(){
  if (count>=1) {
    return Center(child: Text("Portfolio"),);
  }else{
  return Container();
  }
  }
  
Widget mycontainer(){
  if (count >=1){
    return Center(child: Text("Portfolio"),);
  }else {
    return Container();
  }
}

Widget myskill(){
  print("myskill");
  if
}


}
  @override
  Widget build(BuildContext context) {
   print("build method called")
    return Scaffold(
            appBar: AppBar(
              title: Text("ststeful"),
            ),
            body: Column(
              children: [
                mytext(),mycontainer(),myskill(),
              ],
            ),
            floatingActionButton: FloatingActionButton(onPressed: () {
              count++;
              setState
            },
            backgroundColor: boxcolor ? Colors.red : Colors.blue,
            child: Icon(Icons.add),
            ),
    );
  }
}