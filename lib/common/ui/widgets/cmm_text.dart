
import 'package:churchlab/common/common.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CmmText extends StatelessWidget {

  String title;
  Color? color = Colors.blueGrey[900];
  double? letterSpacing = .5;
  TextAlign align;
  double? fontSize = 16;
  bool isBool;
  TextDecoration textDecoration;

  CmmText({
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
      maxLines: 2,
      textAlign: align,
      style: FontFamily().contentFont(
        color: color,
        letterSpacing: letterSpacing,
        size: fontSize,
        fontType: isBool ? FontWeight.bold : FontWeight.normal,
        textDecoration: textDecoration
      )
    );
  }
}