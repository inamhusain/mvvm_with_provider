import 'package:architecture_demos/res/componenets/text_sub_red_widget.dart';
import 'package:flutter/material.dart';

class TextButtonRed extends StatelessWidget {
  final void Function()? onPress;
  final String text;
  const TextButtonRed({Key? key, this.onPress, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPress,
        child: TextSubRedWidget(
          text: text,
        ));
  }
}
