import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


Widget dark_Theme_Button(BuildContext context) {
  return Container(
    height: 80,
    width: double.infinity,
    alignment: Alignment.center,
    margin: EdgeInsets.symmetric(horizontal: 20),
    decoration: BoxDecoration(
        color: Theme.of(context).secondaryHeaderColor,
        borderRadius: BorderRadius.circular(20)
    ),
    child: Text('Dark Color',style:Theme.of(context).textTheme.titleLarge),
  );
}
