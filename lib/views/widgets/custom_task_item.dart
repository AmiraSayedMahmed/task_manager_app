import 'package:flutter/material.dart';
import 'package:task_manager/views/edit_view.dart';

class TaskItem  extends StatelessWidget {
  const TaskItem ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => EditNotes()));
      },
      child: Container(
        padding: const EdgeInsets.only(top: 24 , bottom: 24 , left: 16 ),
        decoration: BoxDecoration(
          color: const Color(0xffFFCCB0),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: const Text(
                "Flutter Tips",
                style: TextStyle(color: Colors.black, fontSize: 26),
              ),
              subtitle: Text(
                "Build your career",
                style:
                TextStyle(fontSize: 18, color: Colors.black.withOpacity(0.4)),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.delete,
                  size: 24,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16, top: 16),
              child: Text("May 21 , 2022 ", style: TextStyle(fontSize:16 , color: Colors.black.withOpacity(0.4))),
            )
          ],
        ),
      ),
    );
  }
}
