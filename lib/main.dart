import 'package:adv_flutter_ch1/ch_1/mainScreen/main_screen.dart';
import 'package:adv_flutter_ch1/ch_1/task_4/changetheme/provider/theme_provider.dart';
import 'package:adv_flutter_ch1/ch_1/task_4/counter/provider/counter_provider.dart';
import 'package:adv_flutter_ch1/ch_1/task_5/provider/intro_provider.dart';
import 'package:adv_flutter_ch1/ch_1/task_7/provider/fringerprintClass.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'ch_1/task_7/view/galaryhomescreen/galary_home_screen.dart';
import 'utils/theme_data.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => CounterProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => ThemeProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => IntroProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => FringerProvider(),
        ),
      ],
      child: MyApp(),
    ),
  );
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       themeMode: Provider.of<ThemeProvider>(context, listen: true).isDark
//           ? ThemeMode.dark
//           : ThemeMode.light,
//       theme: GlobalTheme.lighttheme,
//       darkTheme: GlobalTheme.darktheme,
//       home: Provider.of<IntroProvider>(context, listen: true).iscliked ? Home_screen() :IntroTemplateScreen(),
//     );
//   }
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        themeMode: Provider.of<ThemeProvider>(context, listen: true).isDark
          ? ThemeMode.dark
          : ThemeMode.light,
      theme: GlobalTheme.lighttheme,
      darkTheme: GlobalTheme.darktheme,
      home: MainScreen(),
    );
  }
}
