import 'package:flutter/material.dart';
import 'package:note_app/Consts.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  CustomTextField({
    super.key,
    required this.name,
    this.maxlines = 1,
    this.onSave,
  });
  String? name;

  final int maxlines;
  final void Function(String?)? onSave;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSave,
      validator: (data) {
        if (data?.isEmpty ?? true) {
          return 'the title is required';
        }
        return null;
      },
      maxLines: maxlines,
      cursorColor: kprimarycolor,
      decoration: InputDecoration(
        border: bulidborder(),
        focusedBorder: bulidborder(kprimarycolor),
        enabledBorder: bulidborder(),
        hintText: name,
      ),
    );
  }

  OutlineInputBorder bulidborder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color: color ?? Colors.white),
    );
  }
}
