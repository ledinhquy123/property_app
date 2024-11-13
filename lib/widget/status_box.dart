import 'package:flutter/material.dart';

import 'custom_text.dart';

class StatusBox extends StatelessWidget {
  String? title;
  Color? color;
  StatusBox({super.key, this.title, this.color});

  @override
  Widget build(BuildContext context) {
    final kWidth = MediaQuery.of(context).size.width;
    return Container(
      width: kWidth * 0.28,
      decoration: BoxDecoration(
        color: color?.withOpacity(0.2),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Center(
          child: CustomText(
            text: title,
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: color,
          ),
        ),
      ),
    );
  }
}
