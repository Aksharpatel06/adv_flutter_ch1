import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/theme_provider.dart';
import 'componects/options.dart';
import 'componects/thememode.dart';

class ChangeTheme extends StatelessWidget {
  const ChangeTheme({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Theme.of(context).colorScheme.primary),
        backgroundColor: Theme.of(context).colorScheme.secondary,
        leading: Icon(CupertinoIcons.back),
        actions: [
          Container(
            decoration: BoxDecoration(
                border: Border.all(
                    width: 2, color: Theme.of(context).colorScheme.primary),
                shape: BoxShape.circle),
            child: Icon(
              CupertinoIcons.add,
              size: 20,
            ),
          ),
          SizedBox(
            width: 15,
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            CircleAvatar(
              radius: 70,
              backgroundColor: Colors.black,
              backgroundImage: AssetImage('asset/img/profile.jpg'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: Text(
                'Testing User',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(fontSize: 25),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 18.0, vertical: 20),
              child: Column(
                children: [
                  // MODE CHANGE
                  mode(context),
                  SizedBox(
                    height: 25,
                  ),

                  //STORY
                  options(context, Icons.apps_sharp,
                      Theme.of(context).colorScheme.onInverseSurface, 'Story'),
                  SizedBox(
                    height: 25,
                  ),

                  //SETTINGS AND PRIACY
                  options(
                      context,
                      CupertinoIcons.settings,
                      Theme.of(context).colorScheme.onTertiary,
                      'Settings and Privacy'),
                  SizedBox(
                    height: 25,
                  ),

                  //HELP CENTER
                  options(
                      context,
                      Icons.help_center_outlined,
                      Theme.of(context).colorScheme.onTertiaryContainer,
                      'Help Center'),
                  SizedBox(
                    height: 25,
                  ),

                  //NOTIFICATION
                  options(context, Icons.notification_add_outlined,
                      Theme.of(context).colorScheme.surface, 'Notification'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}