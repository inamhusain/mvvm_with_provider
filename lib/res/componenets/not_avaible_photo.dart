// ignore_for_file: unnecessary_const

import 'package:architecture_demos/res/color.dart';
import 'package:flutter/material.dart';

class NotAvaiblePhoto extends StatelessWidget {
  final double height;
  final double width;

  const NotAvaiblePhoto({Key? key, required this.height, required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: const BoxDecoration(
          shape: BoxShape.circle, color: AppColors.redColor),
      child: const Center(child: const Text("N/A")),
    );
  }
}
