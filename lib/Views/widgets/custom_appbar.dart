import 'package:flutter/material.dart';
import 'package:note_app/Views/widgets/custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.titil, required this.icon, this.ontap});
  final String titil;
  final IconData icon;
  final void Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          titil,
          style: const TextStyle(fontSize: 25),
        ),
        const Spacer(),
        CustomSearchIcon(
          ontap:ontap,
          icon: icon,)
      ],
    );
  }
}
