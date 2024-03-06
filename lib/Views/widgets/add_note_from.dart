import 'package:flutter/material.dart';
import 'package:note_app/Views/widgets/Custom_text_field.dart';
import 'package:note_app/Views/widgets/custom_add_buttom_note.dart';

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
            height: 150,
          ),
          AddNoteButtom(
            ontap: () {
              if (formkey.currentState!.validate()) {
                formkey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
          const SizedBox(
            height: 150,
          ),
        ],
      ),
    );
  }
}
