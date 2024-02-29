import 'package:flutter/material.dart';
import 'package:note_app/Views/widgets/custom_appbar.dart';
import 'package:note_app/Views/widgets/note_item.dart';

class NoteViewBody extends StatelessWidget {
  const NoteViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          CustomAppBar(),
          SizedBox(
            height: 17,
          ),
          Noteitem(),
        ],
      ),
    );
  }
}
