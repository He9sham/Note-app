import 'package:flutter/material.dart';
import 'package:note_app/Views/widgets/Note_list_view.dart';
import 'package:note_app/Views/widgets/custom_appbar.dart';

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
          CustomAppBar(
            icon: Icons.search,
            titil: 'Notes',
          ),
          Expanded(
            child: NoteListView(),
          )
        ],
      ),
    );
  }
}
