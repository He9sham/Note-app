import 'package:flutter/material.dart';

class Initialview extends StatelessWidget {
  const Initialview({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      width: 250,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                  width: 20,
                ),
                borderRadius: BorderRadius.circular(16)),
            child: Image.asset(
              'assets/photos/msg1683023380-39546.jpg',
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'There are no Note yet 😢, click + to add ☺️',
            style: TextStyle(fontSize: 20),
          ),
          const SizedBox(
            height: 100,
          )
        ],
      ),
    );
  }
}