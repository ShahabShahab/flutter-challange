import 'package:flutter/material.dart';

class OnlineSellingSpacer extends StatelessWidget {
  final double? width;
  final double? height;

  const OnlineSellingSpacer({Key? key, this.width, this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 0,
      height: height ?? 0,
    );
  }
}
