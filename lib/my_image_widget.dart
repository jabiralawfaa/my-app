import 'package:flutter/material.dart';

class MyImageWidget extends StatelessWidget {
  const MyImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage('assets/images/branggo.png'),
      width: 200,
    );
  }
}