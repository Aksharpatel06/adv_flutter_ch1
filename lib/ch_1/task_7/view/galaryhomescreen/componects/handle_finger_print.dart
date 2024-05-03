import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../provider/fringerprintClass.dart';
import '../../galleryhidescreen/gallery_hide_screen.dart';

Future<void> handleFingerprint(BuildContext context) async {
  final fringerProvider = Provider.of<FringerProvider>(context, listen: false);
  await fringerProvider.checkFringerprint();
  if (fringerProvider.reponse) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const GalleryHideScreen(),
      ),
    );
  }
}