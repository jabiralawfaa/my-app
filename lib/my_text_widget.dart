import 'package:flutter/material.dart';

class MyTextWidget extends StatelessWidget {
  const MyTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Halo nama saya Jabir, saya sedang belajar Flutter",
      style: const TextStyle(fontSize: 16, color: Colors.black),
    );
  }
}