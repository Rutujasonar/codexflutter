import 'package:cloud_firestore/cloud_firestore.dart';

class Tasks {
  final String id;
  final String categoryId;
  final String categoryName;
  final String title;
  final bool isCompleted;
  final DateTime date;

  Tasks({
    required this.id,
    required this.categoryId,
    required this.categoryName,
    required this.title,
    required this.isCompleted,
    required this.date
  });

  factory Tasks.fromSnapshot(DocumentSnapshot snapshot) {
    return Tasks(
      id: snapshot.id,
      categoryId: snapshot['categoryId'],
      categoryName: snapshot['categoryName'],
      title: snapshot['title'],
      isCompleted: snapshot['isCompleted'] ?? false,
      date: (snapshot['date']as Timestamp).toDate()
    );
  }
  Map toJson() {
    return {
      'categoryId': categoryId,
      'categoryName': categoryName,
      'title': title,
      'isCompleted': isCompleted,
      'date':date
    };
  }
}