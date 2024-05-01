import 'package:flutter/material.dart';

import 'social_account.dart';

Padding socialMedia() {
  return Padding(
    padding: const EdgeInsets.only(top: 8.0),
    child: Container(
      height: 287,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Text(
              'Social Media',
              style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 22,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Divider(),
          Websitevisit(
              'asset/img/social media/github.png', 'Github'),
          Divider(
            indent: 20,
            endIndent: 20,
          ),
          Websitevisit(
              'asset/img/social media/linkedin.png', 'Linkedin'),
          Divider(
            indent: 20,
            endIndent: 20,
          ),
          Websitevisit('asset/img/social media/instragram.png',
              'Instragram'),
        ],
      ),
    ),
  );
}
