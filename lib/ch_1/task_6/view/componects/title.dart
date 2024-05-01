import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Row title() {
  return Row(
    children: [
      Icon(
        CupertinoIcons.back,
        color: Colors.blueAccent,
        size: 30,
      ),
      SizedBox(
        width: 25,
      ),
      Text(
        'Contact Us',
        style: TextStyle(
          color: Colors.blueAccent,
          fontSize: 27,
          fontWeight: FontWeight.w700,
        ),
      )
    ],
  );
}
