import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/golbal_variable.dart';
import 'componets/dark_theme_button.dart';
import 'componets/light_theme_button.dart';
import 'componets/theme_chages_text.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    void toggle() {
      setState(() {});
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: (isdark) ? ThemeMode.dark : ThemeMode.light,
      theme: ThemeData(
          colorScheme: ColorScheme.light(
              onSecondary: Colors.red, tertiaryContainer: Colors.red)),
      darkTheme: ThemeData(
          colorScheme: ColorScheme.dark(
        onSecondary: Colors.blue,
      )),
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 150),
          child: Container(
            height: 500,
            width: 350,
            alignment: Alignment.center,
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  //THEME TEXT
                  theme_Chage_Text(),

                  //LIGHT THEME TEXT BUTTON
                  light_Theme_Button(toggle: toggle),

                  //DARK THEME TEXT BUTTON
                  dark_Theme_Button(toggle: toggle),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

}
