import 'package:flutter/material.dart';

Row slider(
    {double? height1,
    double? width1,
    double? height2,
    double? width2,
    double? height3,
    double? width3}) {
  return Row(
    children: [
      Container(
        height: height1,
        width: width1,
        decoration: BoxDecoration(
            color: Color(0xffFFF2BD), borderRadius: BorderRadius.circular(10)),
      ),
      SizedBox(
        width: 8,
      ),
      Container(
        height: height2,
        width: width2,
        decoration: BoxDecoration(
          color: Color(0xffE3F3FF),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      SizedBox(
        width: 8,
      ),
      Container(
        height: height3,
        width: width3,
        decoration: BoxDecoration(
          color: Color(0xffFFD3BC),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    ],
  );
}
