import 'package:flutter/material.dart';

import '../unit.dart';
import 'custom_text.dart';

class ButtonAccount extends StatelessWidget {
  String? title;
  VoidCallback? onPress;
  IconData? icon;
  ButtonAccount({this.title, this.onPress, this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 2,
              offset: Offset(0, 1), // changes position of shadow
            ),
          ],
          borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0, top: 5, bottom: 5, right: 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  icon,
                  color: sColor,
                ),
                SizedBox(
                  width: 6,
                ),
                CustomText(
                  text: title,
                  fontWeight: FontWeight.bold,
                  color: sColor,
                ),
              ],
            ),
            IconButton(onPressed: onPress, icon: Icon(Icons.chevron_right))
          ],
        ),
      ),
    );
  }
}
