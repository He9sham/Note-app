import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:note_app/Consts.dart';
import 'package:note_app/Models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  addNote(NoteModels note) async {
    emit(AddNoteLoading());
    try {
      var notebox = Hive.box<NoteModels>(knotesbox);
      await notebox.add(note);
      emit(AddNoteSuccess());
    } on Exception catch (e) {
      emit(AddNoteFailuer(e.toString()));
    }
  }
}
