import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/Cubits/Add_Note_cubit/add_note_cubit.dart';

class CustomColor extends StatelessWidget {
  const CustomColor({super.key, required this.isActive, required this.color});
  final bool isActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            radius: 36,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 33,
              backgroundColor: color,
            ),
          )
        : CircleAvatar(
            radius: 38,
            backgroundColor: color,
          );
  }
}

class CustomlistColor extends StatefulWidget {
  const CustomlistColor({super.key});

  @override
  State<CustomlistColor> createState() => _CustomlistColorState();
}

class _CustomlistColorState extends State<CustomlistColor> {
  int currntindex = 0;
  List<Color> colors = const [
    Color(0xffEF7674),
    Color(0xffA7C4B5),
    Color(0xff9381FF),
    Color.fromARGB(255, 109, 60, 87),
    Color(0xff2E3532),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 36 * 2,
      child: ListView.builder(
          itemCount: colors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: GestureDetector(
                onTap: () {
                  currntindex = index;
                  BlocProvider.of<AddNoteCubit>(context).color = colors[index];
                  setState(() {});
                },
                child: CustomColor(
                  color: colors[index],
                  isActive: currntindex == index,
                ),
              ),
            );
          }),
    );
  }
}
