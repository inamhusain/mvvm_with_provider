import 'package:architecture_demos/res/componenets/text_button_red.dart';
import 'package:architecture_demos/res/componenets/text_sub_widget.dart';
import 'package:flutter/material.dart';

class RowTextWidget extends StatelessWidget {
  final void Function() onPress;
  final String text;
  final String clickText;
  const RowTextWidget(
      {Key? key,
      required this.onPress,
      required this.text,
      required this.clickText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TextSubWidget(text: text),
        const SizedBox(width: 4),
        TextButtonRed(onPress: onPress, text: clickText)
      ],
    );
  }
}
