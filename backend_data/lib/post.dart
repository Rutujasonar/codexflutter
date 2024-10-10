import 'package:flutter/material.dart';

class backendPost extends StatefulWidget {
  const backendPost({super.key});

  @override
  State<backendPost> createState() => _backendPostState();
}

class _backendPostState extends State<backendPost> {
  Map data = ();
  Future<void> sendData()async{
    debugPrint("button pressed");
    final url = uri.parse("https://todo-node-api-3.onrender.com/todo/add");
    final headers = {'content-Type': 'application/json'};
     "title": "flutter task",
     "description": "flutter task on the api bindings"
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}