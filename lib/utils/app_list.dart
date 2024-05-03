import 'package:adv_flutter_ch1/ch_1/task_1/view/theme_screen.dart';
import 'package:adv_flutter_ch1/ch_1/task_2/view/horizontal_stepper.dart';
import 'package:adv_flutter_ch1/ch_1/task_2/view/stepper_screen.dart';
import 'package:adv_flutter_ch1/ch_1/task_4/changetheme/view/change_theme.dart';
import 'package:adv_flutter_ch1/ch_1/task_4/counter/view/counter_screen.dart';
import 'package:adv_flutter_ch1/ch_1/task_5/view/intro_template_screen.dart';
import 'package:adv_flutter_ch1/ch_1/task_6/view/contact_screen.dart';
import 'package:adv_flutter_ch1/ch_1/task_7/view/galaryhomescreen/galary_home_screen.dart';

import '../ch_1/mainScreen/modal/app_modal.dart';

List appList = [
  AppModel(title: '1.1 Switch Dark Theme to Light Theme', widget: const ThemeScreen()),
  AppModel(title: '1.2.1 Create Registration Page using Stepper Widget', widget: const StepperScreen()),
  AppModel(title: '1.2.2 Create Registration Page using Horizontal Stepper Widget', widget: const HorizontalStepperScreen()),
  AppModel(title: '1.4.1 Provider & Change Theme using Provider', widget: const ChangeTheme()),
  AppModel(title: '1.4.2 Counter App using Provider', widget: const CounterScreen()),
  AppModel(title: '1.5 One Time Intro Screen in Flutter', widget: const IntroTemplateScreen()),
  AppModel(title: '1.6 Contact Us Page With Interaction', widget: const ContactScreen()),
  AppModel(title: '1.7 Photo Gallery With Biometric Authentication', widget: const GalaryHomeScreen()),
];