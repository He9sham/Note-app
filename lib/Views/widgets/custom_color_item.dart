import 'package:flutter/material.dart';

class CustomColor extends StatelessWidget {
  const CustomColor({super.key});
  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 36,
      backgroundColor: Colors.blue,
    );
  }
}

class CustomlistColor extends StatelessWidget {
  const CustomlistColor({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 36 * 2,
      child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 6),
              child: CustomColor(),
            );
          }),
    );
  }
}
