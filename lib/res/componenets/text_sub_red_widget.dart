import 'package:architecture_demos/res/color.dart';
import 'package:architecture_demos/res/style/text_style.dart';
import 'package:flutter/material.dart';

class TextSubRedWidget extends StatelessWidget {
  final String text;
  const TextSubRedWidget({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: AppStyle.instance.bodyMedium.copyWith(
          color: AppColors.redColor.withOpacity(0.8),
        ));
  }
}
