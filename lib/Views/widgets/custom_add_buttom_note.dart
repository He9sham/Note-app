import 'package:flutter/material.dart';
import 'package:note_app/Consts.dart';

class AddNoteButtom extends StatelessWidget {
  const AddNoteButtom({super.key, this.ontap, this.isloading = false});

  final void Function()? ontap;
  final bool isloading;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 19),
      child: GestureDetector(
        onTap: ontap,
        child: Container(
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: kprimarycolor,
          ),
          child: Center(
            child: isloading
                ? const SizedBox(
                    height: 24,
                    width: 24,
                    child: CircularProgressIndicator(
                      color: Colors.black,
                    ),
                  )
                : const Text(
                    'Add',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontFamily: 'Poppins'),
                  ),
          ),
        ),
      ),
    );
  }
}
