import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'componects/galleryimg.dart';
import 'componects/handle_finger_print.dart';
import 'componects/subtext.dart';

class GalaryHomeScreen extends StatelessWidget {
  const GalaryHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text('Gallery'),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(
                child: Text('FringerPrint'),
                onTap: () {
                  handleFingerprint(context);
                },
              ),
            ],
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            //SUB HEAD POP MENU TEXT
            subheadText(),

            //MULTI GALLERY CATEGORIES IMAGES
            galleryImges(),
          ],
        ),
      ),
    );
  }
}