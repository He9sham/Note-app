import 'package:flutter/material.dart';
import 'package:note_app/Views/widgets/Custom_text_field.dart';
import 'package:note_app/Views/widgets/custom_appbar.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          const CustomAppBar(
            titil: 'Edit Note',
            icon: Icons.check,
          ),
          const SizedBox(
            height: 25,
          ),
          CustomTextField(
            name: 'title',
            onchanged: (data) {},
          ),
          const SizedBox(
            height: 15,
          ),
          CustomTextField(
            name: 'content',
            onchanged: (data) {},
            maxlines: 5,
          )
        ],
      ),
    );
  }
}
