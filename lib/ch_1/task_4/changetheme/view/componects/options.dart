import 'package:flutter/material.dart';

Row options(
    BuildContext context, IconData iconData, Color color, String text) {
  return Row(
    children: [
      Icon(
        iconData,
        color: color,
      ),
      SizedBox(
        width: 25,
      ),
      Text(
        text,
        style:
        Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 22),
      ),
    ],
  );
}