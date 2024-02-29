import 'package:flutter/material.dart';
import 'package:note_app/Views/widgets/note_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NoteViewBody(),
    );
  }
}
