import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EditScreen extends StatefulWidget {
  const EditScreen({super.key});

  @override
  State<EditScreen> createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {

  TextEditingController _titleController = TextEditingController();
  TextEditingController _contentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black38,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16,40,16,0),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              IconButton(
                  onPressed: (){
                Navigator.pop(context);
                  },
                  icon: Container(
                    padding: EdgeInsets.all(2),
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(.3),
                      borderRadius: BorderRadius.circular(10),),
                    child: const Icon(
                      Icons.arrow_back_ios_new,
                      color : Colors.white,
                    ),
                  ))
            ],
          ),
          Expanded(child: ListView(
            children: [
              TextField(
                controller: _titleController,
                style:TextStyle(color: Colors.white,fontSize: 30),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Title',
                  hintStyle: TextStyle(color: Colors.grey,fontSize: 30)),
              ),
              TextField(
                controller: _contentController,
                style:TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'type something here',
                    hintStyle: TextStyle(color: Colors.grey)),
              )
            ],
          ))
        ]
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.pop(context,[
          _titleController.text, _contentController.text
        ]);
      },
      elevation: 10,
      backgroundColor: Colors.grey.shade800,
        child: Icon(Icons.save),
      ),
    );
  }
}
