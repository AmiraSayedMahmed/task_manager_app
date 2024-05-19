import 'package:flutter/material.dart';
import 'package:task_manager/views/widgets/add_note_bottom_sheet.dart';
import 'package:task_manager/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
     showModalBottomSheet(
       shape: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
    context: context, builder: (context){
     return const AddNoteToBottomSheet();
});
        },
        child: const Icon(Icons.add),
      ),
      body: const NotesViewBody()
    );
  }
}
