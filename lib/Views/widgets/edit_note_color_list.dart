
 import 'package:flutter/material.dart';
import 'package:note_app/Consts.dart';
import 'package:note_app/Models/note_model.dart';
import 'package:note_app/Views/widgets/custom_color_item.dart';

class EditNoteColorList extends StatefulWidget {
  const EditNoteColorList({super.key, required this.note});
  final NoteModels note;

  @override
  State<EditNoteColorList> createState() => _EditNoteColorListState();
}

class _EditNoteColorListState extends State<EditNoteColorList> {
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 36 * 2,
      child: ListView.builder(
          itemCount: kcolors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: GestureDetector(
                onTap: () {
                  widget.note.color = kcolors[index].value;
                  currentindex = index;
                  setState(() {});
                },
                child: CustomColor(
                  color: kcolors[index],
                  isActive: currentindex == index,
                ),
              ),
            );
          }),
    );
  }
}
