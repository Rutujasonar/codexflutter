import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:todo_list/task.dart';

class Taskpage extends StatelessWidget {
  final String categoryName;
  final String categoryId;
  
   Taskpage({super.key,required this.categoryId,required this.categoryName});

  final TextEditingController _textFieldController = TextEditingController();

  final TextEditingController _dateController = TextEditingController();

  DateTime? selectedDate;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selectedDate)
      // setState(() {
      selectedDate = picked;
    _dateController.text = DateFormat('yyyy-MM-dd').format(picked!);
    // Set selected date to text field
    //});
  }

  @override
  Widget build(BuildContext context) {
    final CollectionReference taskRef = FirebaseFirestore.instance.collection('tasks');
    return Scaffold(
      backgroundColor: Color(0xff121212),
      appBar: AppBar(
        backgroundColor: Color(0xff121212),
        title: Text("TODO", style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.only(top: 20, left: 20),
        child: Column(children: [
          Container(
            width: 500,
            height: 200,
            child: StreamBuilder<QuerySnapshot>(
              stream: taskRef.where('categoryId',isEqualTo: categoryId).snapshots(),
              builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return Center(child: CircularProgressIndicator(),);
              }  
              final List<Tasks> tasks = snapshot.data!.docs.map((doc) =>Tasks.fromSnapshot(doc)).toList();
              return ListView.builder(
                itemCount: tasks.length,
                itemBuilder: (context, index) {
                  final task = tasks[index];
                  return Container(
                    height: 60,
                    margin: const EdgeInsets.all(20),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Slidable(
                      endActionPane:
                          ActionPane(motion: DrawerMotion(), children: [
                        SlidableAction(
                          onPressed: (context) {
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    title: Text(
                                      'Edit Task',
                                      style: GoogleFonts.averageSans(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    content: TextField(
                                      controller: _textFieldController,
                                      decoration: InputDecoration(hintText: task.title),
                                    ),
                                    actions: <Widget>[
                                      TextButton(
                                        child: const Text('CANCEL'),
                                        onPressed: () {
                                          Navigator.pop(context);
                                          _textFieldController.clear();
                                        },
                                      ),
                                      TextButton(
                                          child: const Text('SAVE'),
                                          onPressed: () async{
                                            String newCategoryName=_textFieldController.text.trim();
                                            if (newCategoryName.isNotEmpty) {
                                              await taskRef.doc(task.id).update({
                                                'title':newCategoryName,
                                                'timestamp':FieldValue.serverTimestamp()
                                              });
                                            }
                                            Navigator.pop(context);
                                            _textFieldController.clear();
                                          }),
                                    ],
                                  );
                                });
                          },
                          icon: Icons.edit_outlined,
                        ),
                        SlidableAction(
                          onPressed: (context) async{
                            await taskRef.doc(task.id).delete();
                          },
                          icon: Icons.delete_outline_rounded,
                        ),
                      ]),
                      child: ListTile(
                        title: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(task.title,
                                    style: GoogleFonts.jost(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color:
                                          const Color.fromARGB(255, 15, 15, 16),
                                    )),
                                Text(
                                  DateFormat('dd-MM-yyyy').format(task.date),
                                  style: GoogleFonts.jost(
                                      fontSize: 13, fontWeight: FontWeight.w400),
                                ),
                                Checkbox(
                                  value: task.isCompleted,
                                  onChanged: (newValue) async{
                                   await taskRef.doc(task.id).update({
                                    'isCompleted': newValue,
                                   });
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
              }
            ),
          )
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 249, 249, 249),
        onPressed: () {
          _showBottomSheet(context,taskRef);
        },
        child: const Icon(Icons.add),
      ),
    );
  }


void _showBottomSheet(BuildContext context,CollectionReference taskRef) {
  final TextEditingController _controller = TextEditingController();
  

  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent,
    builder: (context) {
      return SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 40),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 55),
                child: Text(
                  "Enter Task",
                  style: GoogleFonts.averageSans(
                      fontSize: 17, fontWeight: FontWeight.w400),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 55, vertical: 5),
                child: TextField(
                  controller: _controller,
                  decoration: const InputDecoration(
                      filled: true,
                      fillColor: Color.fromRGBO(208, 205, 236, 1),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.zero,
                          borderSide: BorderSide.none)),
                ),
              ),
              Container(
                  margin: const EdgeInsets.symmetric(horizontal: 55, vertical: 5),
                  child: Text(
                    "Enter Date",
                    style: GoogleFonts.averageSans(
                        fontWeight: FontWeight.w400, fontSize: 17),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 55),
                  // padding: EdgeInsets.all(50),
                  child: TextField(
                    controller: _dateController,
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(
                          RegExp(r'\d')) // Only allow digits
                    ],
                    decoration: InputDecoration(
                        // labelText: '(DD/MM/YYYY)',
                        filled: true,
                        fillColor: const Color.fromRGBO(208, 205, 236, 1),
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.zero,
                          borderSide: BorderSide.none,
                        ),
                        suffixIcon: IconButton(
                            onPressed: () {
                              _selectDate(context);
                            },
                            icon: const Icon(Icons.calendar_today_outlined))),
                  ),
                ),
              Center(
                child: Container(
                  margin: const EdgeInsets.only(top: 30),
                  child: ElevatedButton(
                    onPressed: () async{
                      String taskTitle = _controller.text.trim();
                      String taskDate = _dateController.text.trim();
                      if (taskTitle.isNotEmpty && taskDate.isNotEmpty) {
                        await taskRef.add({
                          'categoryId':categoryId,
                          'categoryName': categoryName,
                          'title':taskTitle,
                          'date':Timestamp.fromDate(DateTime.parse(taskDate)),
                          'isCompleted':false,
                          'timestamp': FieldValue.serverTimestamp()
                        });
                      }
                      Navigator.pop(context);
                      _controller.clear();
                      _dateController.clear();
                    },
                    child: Text(
                      "Add",
                      style: GoogleFonts.averageSans(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.w400),
                    ),
                    style: const ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                            Color.fromRGBO(208, 205, 236, 1)),
                        fixedSize: WidgetStatePropertyAll(Size(100, 40))),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      );
    },
  );
}
}