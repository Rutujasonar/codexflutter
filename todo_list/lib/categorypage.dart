import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_list/category.dart';

import 'package:todo_list/taskpage.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  TextEditingController inputcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final CollectionReference categoryRef=FirebaseFirestore.instance.collection('categories');
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
              stream: categoryRef.snapshots(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return const Center(child: CircularProgressIndicator());
                }

                final List<Category> categories = snapshot.data!.docs
                    .map((doc) => Category.fromSnapshot(doc))
                    .toList();
              return ListView.builder(
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  final category = categories[index];
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
                                      'Edit Category',
                                      style: GoogleFonts.averageSans(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    content: TextField(
                                      controller: inputcontroller,
                                      decoration: InputDecoration(hintText: category.name),
                                    ),
                                    actions: <Widget>[
                                      TextButton(
                                        child: const Text('CANCEL'),
                                        onPressed: () {
                                          Navigator.pop(context);
                                          inputcontroller.clear();
                                        },
                                      ),
                                      TextButton(
                                          child: const Text('SAVE'),
                                          onPressed: () async{
                                            String newCategoryName = inputcontroller.text.trim();
                                            if (newCategoryName.isNotEmpty) {
                                              await categoryRef.doc(category.id).update({'name':newCategoryName,'timestamp': FieldValue.serverTimestamp()});
                                              
                                            }
                                            Navigator.pop(context);
                                            inputcontroller.clear();
                                          }),
                                    ],
                                  );
                                });
                          },
                          icon: Icons.edit_outlined,
                        ),
                        SlidableAction(
                          onPressed: (context) async{
                            await categoryRef.doc(category.id).delete();
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
                                Text(category.name,
                                    style: GoogleFonts.jost(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color:
                                          const Color.fromARGB(255, 15, 15, 16),
                                    )),
                              ],
                            ),
                          ],
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Taskpage(
                                categoryId: category.id,
                                categoryName: category.name,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  );
                },
              );}
            ),
          )
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 249, 249, 249),
        onPressed: () {
          _showBottomSheet(context,categoryRef);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

void _showBottomSheet(BuildContext context,CollectionReference categoryRef) {
  final TextEditingController _controller = TextEditingController();

  showModalBottomSheet(
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40), topRight: Radius.circular(40))),
    context: context,
    builder: (context) {
      return SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 40, right: 50),
          width: 500,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  margin: const EdgeInsets.only(top: 0, left: 55, bottom: 10),
                  child: Text(
                    'Enter Category',
                    style: GoogleFonts.averageSans(
                        fontSize: 17, fontWeight: FontWeight.w400),
                  )),
              Container(
                margin: const EdgeInsets.only(left: 55),
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
              const SizedBox(height: 16.0),
              Container(
                height: 40,
                width: 90,
                margin: EdgeInsets.only(
                    top: 20, left: MediaQuery.of(context).size.width / 2.8),
                child: ElevatedButton(
                    style: ButtonStyle(
                        fixedSize: WidgetStatePropertyAll(const Size(70, 40)),
                        backgroundColor: WidgetStatePropertyAll(
                          const Color.fromRGBO(208, 205, 236, 1),
                        )),
                    onPressed: () async{String categoryName = _controller.text.trim();
                      if (categoryName.isNotEmpty) {
                        await categoryRef.add({
                          'name': categoryName,
                          'timestamp':FieldValue.serverTimestamp()
                        });

                        Navigator.pop(context);
                        _controller.clear();
                      }
                    },
                    child: Text(
                      'Add',
                      style: GoogleFonts.averageSans(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    )),
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