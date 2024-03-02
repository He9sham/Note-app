import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note_app/Views/edit_note_view.dart';

class Noteitem extends StatelessWidget {
  const Noteitem({super.key});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return EditNoteView();
          }),
        );
      },
      child: Container(
        padding: const EdgeInsets.only(top: 16, bottom: 16, left: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: const Color(0xffFFCC80),
        ),
        child: Column(
          children: [
            ListTile(
              title: const Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: Text(
                  'Flutter Tips',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 26,
                  ),
                ),
              ),
              subtitle: Text(
                'Build your carrer with Hesham',
                style: TextStyle(
                  color: Colors.black.withOpacity(.6),
                  fontSize: 20,
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  FontAwesomeIcons.trash,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 250),
              child: Padding(
                padding: const EdgeInsets.only(right: 22, top: 20),
                child: Text(
                  "May21,2024",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black.withOpacity(.6),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
