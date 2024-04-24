import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/golbal_variable.dart';

CupertinoButton dark_Theme_Button({required final VoidCallback toggle}) {
  return CupertinoButton(
    onPressed: () {
      toggle();
      isdark = true;
    },
    child: Container(
      height: 80,
      width: double.infinity,
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          color: (!isdark)?Colors.redAccent:Colors.amber,
          borderRadius: BorderRadius.circular(20)
      ),
      child: Text('Dark Color',style: TextStyle(fontSize: 22,color:isdark ? Colors.white:Colors.black),),
    ),
  );
}
