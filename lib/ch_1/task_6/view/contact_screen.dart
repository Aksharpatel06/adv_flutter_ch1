import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'componects/calldetails.dart';
import 'componects/social_media.dart';
import 'componects/sub_title.dart';
import 'componects/title.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [

                //HEAD TITLE
                title(),

                //SUB TITLE
                subTitle(),

                //CALL,EMAIL,SMS MOBILE
                callButton(
                    iconData: CupertinoIcons.device_phone_portrait,
                    name: '+91 1234567890'),
                callButton(
                    iconData: CupertinoIcons.mail, name: 'info@gmail.com'),
                callButton(
                    iconData: CupertinoIcons.ellipsis_circle, name: 'SMS'),

                //SOCIAL MEDIA ACCOUNTS
                socialMedia(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
