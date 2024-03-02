import 'package:flutter/material.dart';
import 'package:note_app/Views/widgets/Custom_text_field.dart';
import 'package:note_app/Views/widgets/custom_add_buttom_note.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            CustomTextField(
              name: 'Title',
              onchanged: (data) {},
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextField(
              name: 'content',
              maxlines: 5,
              onchanged: (data) {},
            ),
            const SizedBox(
              height: 150,
            ),
            const AddNoteButtom(),
            const SizedBox(
              height: 150,
            ),
          ],
        ),
      ),
    );
  }
}
