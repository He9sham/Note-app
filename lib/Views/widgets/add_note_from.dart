import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:note_app/Cubits/Add_Note_cubit/add_note_cubit.dart';
import 'package:note_app/Models/note_model.dart';
import 'package:note_app/Views/widgets/Custom_text_field.dart';
import 'package:note_app/Views/widgets/custom_add_buttom_note.dart';
import 'package:note_app/Views/widgets/custom_color_item.dart';

class AddNoteFrom extends StatefulWidget {
  const AddNoteFrom({
    super.key,
  });

  @override
  State<AddNoteFrom> createState() => _AddNoteFromState();
}

class _AddNoteFromState extends State<AddNoteFrom> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          CustomTextField(
            onSave: (data) {
              title = data;
            },
            name: 'Title',
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextField(
            onSave: (data) {
              subtitle = data;
            },
            name: 'content',
            maxlines: 5,
          ),
          const SizedBox(
            height: 40,
          ),
          const CustomlistColor(),
          const SizedBox(
            height: 40,
          ),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return AddNoteButtom(
                isloading: state is AddNoteLoading ? true : false,
                ontap: () {
                  Custom_add_note_ontap(context);
                },
              );
            },
          ),
        ],
      ),
    );
  }

  void Custom_add_note_ontap(BuildContext context) {
    if (formkey.currentState!.validate()) {
      formkey.currentState!.save();
      var formatter = DateFormat('yyyy-MM-dd'); // Define the date format
      String formattedDate =
          formatter.format(DateTime.now()); // Format the current date
      var notemodel = NoteModels(
          title: title!,
          subtitle: subtitle!,
          date: formattedDate,
          color: Colors.blue.value);
      BlocProvider.of<AddNoteCubit>(context).addNote(notemodel);
    } else {
      autovalidateMode = AutovalidateMode.always;
      setState(() {});
    }
  }
}

 