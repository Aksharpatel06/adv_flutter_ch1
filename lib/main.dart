import 'package:adv_flutter_ch1/ch_1/task_2/view/stepper_screen.dart';
import 'package:adv_flutter_ch1/utils/theme_data.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: GlobalTheme.lighttheme,
      darkTheme: GlobalTheme.darktheme,
      home: const StepperScreen(),
    );
  }
}
