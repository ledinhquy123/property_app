import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomText extends StatelessWidget {
  String? text;
  double? fontSize;
  Color? color;
  FontWeight? fontWeight;
  TextDecoration? textDecoration;
  TextAlign? textAlign;
  TextOverflow? textOverflow;
  int? maxLine;
  CustomText({
    super.key,
    this.text,
    this.fontWeight = FontWeight.w100,
    this.color = Colors.black87,
    this.fontSize = 15,
    this.textDecoration,
    this.textAlign,
    this.maxLine,
    this.textOverflow,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      textAlign: textAlign,
      overflow: textOverflow,
      maxLines: maxLine,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
        decoration: textDecoration,
      ),
    );
  }
}
