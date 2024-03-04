import 'package:flutter/material.dart';
import 'package:note_app/Consts.dart';

class AddNoteButtom extends StatelessWidget {
  const AddNoteButtom({super.key, this.ontap});

 final  void Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap ,
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: kprimarycolor,
        ),
        child: const Center(
          child: Text(
            'Add',
            style: TextStyle(
                color: Colors.black, fontSize: 17, fontFamily: 'Poppins'),
          ),
        ),
      ),
    );
  }
}
