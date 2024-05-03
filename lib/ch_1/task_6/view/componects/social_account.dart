import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart' as launchar;

Widget Websitevisit(String? image,String? name) {
  return CupertinoButton(
    onPressed: () {
      if (name == 'Github') {
        Uri uri = Uri.parse('https://github.com/Aksharpatel06');
        launchar.launchUrl(uri,mode: launchar.LaunchMode.inAppBrowserView);
      } else if (name == 'Linkedin') {
        Uri uri = Uri.parse('https://www.linkedin.com/in/akshar-patel-073b0a295/');
        launchar.launchUrl(uri,mode: launchar.LaunchMode.inAppBrowserView);
      } else if (name == 'Instragram') {
        Uri uri = Uri.parse('https://www.instagram.com/patel_akshar_03/');
        launchar.launchUrl(uri,mode: launchar.LaunchMode.inAppBrowserView);
      }
    },
    padding: EdgeInsets.symmetric(vertical: 12),
    child: Row(
      children: [
        SizedBox(
          width: 20,
        ),
        SizedBox(width: 35,child: Image.asset(image!,fit: BoxFit.cover,)),
        SizedBox(
          width: 30,
        ),
        Text(
          name!,
          style: TextStyle(fontSize: 18),
        ),
      ],
    ),
  );
}
