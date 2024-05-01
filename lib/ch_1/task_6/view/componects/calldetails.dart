import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart' as launchar;

CupertinoButton callButton({IconData? iconData, String? name}) {
  return CupertinoButton(
    padding: EdgeInsets.symmetric(vertical: 8),
    onPressed: () {
      if (name == '+91 1234567890') {
        Uri uri = Uri.parse('tel: +91 9727404868');
        launchar.launchUrl(uri);
      } else if (name == 'info@gmail.com') {
        Uri uri = Uri.parse('mailto: aksharpatel030306@gmail.com');
        launchar.launchUrl(uri);
      } else if (name == 'SMS') {
        Uri uri = Uri.parse('sms: +91 9727404868');
        launchar.launchUrl(uri);
      }
    },
    child: Container(
      height: 70,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          SizedBox(
            width: 20,
          ),
          Icon(
            iconData,
            color: Colors.blueAccent,
            size: 30,
          ),
          SizedBox(
            width: 30,
          ),
          Text(
            name!,
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    ),
  );
}
