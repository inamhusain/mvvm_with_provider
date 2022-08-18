import 'package:flutter/material.dart';

class LogoImage extends StatelessWidget {
  const LogoImage({
    Key? key,
    required this.height,
  }) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height * .20,
      child: Image.asset(
        "assets/splash.png",
        fit: BoxFit.cover,
      ),
    );
  }
}
