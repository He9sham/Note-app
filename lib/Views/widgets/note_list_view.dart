import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/Cubits/notes_cubit/notes_cubit.dart';
import 'package:note_app/Models/note_model.dart';
import 'package:note_app/Views/widgets/note_item.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({
    super.key,
  });

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
            : SizedBox(
                height: 250,
                width: 250,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                            width: 20,
                          ),
                          borderRadius: BorderRadius.circular(16)),
                      child: Image.asset(
                        'assets/photos/msg1683023380-39546.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'There are no Note yet 😢, click + to add ☺️',
                      style: TextStyle(fontSize: 20),
                    ),
                    const SizedBox(
                      height: 100,
                    )
                  ],
                ),
              );
      },
    );
  }
}
