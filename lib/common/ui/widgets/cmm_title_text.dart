
import 'package:churchlab/common/common.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CmmTitleText extends StatelessWidget {

  String title;
  TextAlign align;
  Color? color = Colors.white;
  double? letterSpacing = .5;
  double? fontSize = 22;
  bool isBool;
  TextDecoration textDecoration;

  CmmTitleText({
    super.key,
    required this.title,
    required this.isBool,
    this.color,
    this.fontSize,
    this.align = TextAlign.center,
    this.letterSpacing,
    this.textDecoration = TextDecoration.none
    });

  @override
  Widget build(BuildContext context) {

    return Text(
      title,
      maxLines: 3,
      textAlign: align,
      style: FontFamily().titleFont(
        color: color,
        letterSpacing: letterSpacing,
        size: fontSize,
        fontType: isBool ? FontWeight.bold : FontWeight.normal,
        textDecoration: textDecoration
      )
    );
  }
}