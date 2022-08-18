import 'package:architecture_demos/res/style/text_style.dart';
import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  final String titleText;
  const TitleWidget({Key? key, required this.titleText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      titleText,
      style: AppStyle.instance.h4Bold,
    );
  }
}
