import 'package:adv_flutter_ch1/ch_1/task_2/view/stepper_screen.dart';
import 'package:adv_flutter_ch1/ch_1/task_4/changetheme/provider/theme_provider.dart';
import 'package:adv_flutter_ch1/ch_1/task_4/changetheme/view/change_theme.dart';
import 'package:adv_flutter_ch1/ch_1/task_4/counter/provider/counter_provider.dart';
import 'package:adv_flutter_ch1/ch_1/task_4/counter/view/counter_screen.dart';
import 'package:adv_flutter_ch1/utils/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => CounterProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => ThemeProvider(),
        )
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: Provider.of<ThemeProvider>(context,listen: true).isDark ? ThemeMode.dark :ThemeMode.light,
      theme: GlobalTheme.lighttheme,
      darkTheme: GlobalTheme.darktheme,
      home: CounterScreen(),
    );
  }
}
