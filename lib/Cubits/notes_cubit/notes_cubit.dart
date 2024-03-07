import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:note_app/Consts.dart';
import 'package:note_app/Models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  
  fetchAllNotes() {
    try {
      var notebox = Hive.box<NoteModels>(knotesbox);
    var viewnote = notebox.values.toList();
      emit(NotesSuccess(viewnote));
    } on Exception catch (e) {
      emit(NotesFaiuler(e.toString()));
    }
  }
}
