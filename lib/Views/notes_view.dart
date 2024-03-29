import 'package:flutter/material.dart';
import 'package:note_app/Views/widgets/add_note_buttom.dart';
import 'package:note_app/Views/widgets/note_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              // backgroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              context: context,
              builder: (context) {
                return const AddNoteButtomSheet();
              });
        },
        child: const Icon(Icons.add),
      ),
      body: const NoteViewBody(),
    );
  }
}
