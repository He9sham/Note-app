import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/Consts.dart';
import 'package:note_app/Models/note_model.dart';
import 'package:note_app/Views/notes_view.dart';

void main() async {
  await Hive.initFlutter();

  Hive.openBox(knotesbox);
  Hive.registerAdapter(NoteModelsAdapter());
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
      home: const NotesView(),
    );
  }
}
