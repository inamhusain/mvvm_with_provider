import 'package:architecture_demos/res/color.dart';
import 'package:architecture_demos/res/style/text_style.dart';
import 'package:flutter/material.dart';

class WhiteBorderButton extends StatelessWidget {
  const WhiteBorderButton({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width * 0.26,
      height: height * 0.055,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.whiteColor, width: 2.0),
        borderRadius: BorderRadius.circular(20),
        color: Colors.transparent,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Icon(
            Icons.add,
            color: AppColors.whiteColor,
            size: 25,
          ),
          Text(
            "My list",
            style: AppStyle.instance.bodyXLarge,
          ),
        ],
      ),
    );
  }
}
