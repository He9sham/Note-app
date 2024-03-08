import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/Cubits/notes_cubit/notes_cubit.dart';
import 'package:note_app/Models/note_model.dart';
import 'package:note_app/Views/widgets/note_item.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModels> notes = BlocProvider.of<NotesCubit>(context).notes!;
        return notes.isNotEmpty
            ? Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: ListView.builder(
                    itemCount: notes.length,
                    padding: EdgeInsets.zero,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: Noteitem(
                          notes: notes[index],
                        ),
                      );
                    }),
              )
            : const Center(
                child: Text(
                  'There are no notes yet. Click on the “+” sign to add',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              );
      },
    );
  }
}
