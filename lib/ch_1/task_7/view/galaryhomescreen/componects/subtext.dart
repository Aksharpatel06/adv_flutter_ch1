import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

CupertinoButton subheadText() {
  return CupertinoButton(
    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
    onPressed: () {},
    child: const Row(
      children: [
        Text(
          'Albums',
          style: TextStyle(fontSize: 15),
        ),
        Icon(Icons.arrow_drop_down)
      ],
    ),
  );
}
