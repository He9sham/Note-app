import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note_app/Models/note_model.dart';
import 'package:note_app/Views/edit_note_view.dart';

class Noteitem extends StatelessWidget {
  const Noteitem({super.key, required this.notes});

  final NoteModels notes;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return const EditNoteView();
          }),
        );
      },
      child: Container(
        padding: const EdgeInsets.only(top: 16, bottom: 16, left: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: const Color(0xffFFCC80),
        ),
        child: Column(
          children: [
            ListTile(
              title: Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Text(
                  notes.title,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 26,
                  ),
                ),
              ),
              subtitle: Text(
                notes.subtitle,
                style: TextStyle(
                  color: Colors.black.withOpacity(.6),
                  fontSize: 20,
                ),
              ),
              trailing: IconButton(
                onPressed: () {
                  notes.delete();
                },
                icon: const Icon(
                  FontAwesomeIcons.trash,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 250),
              child: Padding(
                padding: const EdgeInsets.only(right: 22, top: 20),
                child: Text(
                  notes.date,
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.black.withOpacity(.6),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
