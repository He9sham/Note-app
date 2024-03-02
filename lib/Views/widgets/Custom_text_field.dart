import 'package:flutter/material.dart';
import 'package:note_app/Consts.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  CustomTextField({
    Key? key,
    required this.name,
    required this.onchanged,
     this.maxlines = 1
  }) : super(key: key);
  String? name;
  Function(String)? onchanged;
  final int maxlines;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxlines,
      cursorColor: kprimarycolor,
      onChanged: onchanged,
      decoration: InputDecoration(
        border: BulidBorder(),
        focusedBorder: BulidBorder(kprimarycolor),
        enabledBorder: BulidBorder(),
        hintText: name,
      ),
    );
  }

  OutlineInputBorder BulidBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color: color ?? Colors.white),
    );
  }
}
