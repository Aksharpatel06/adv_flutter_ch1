import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/theme_provider.dart';

Row mode(BuildContext context) {
  return Row(
    children: [
      Icon(
        Icons.light_mode_outlined,
        color: Theme.of(context).colorScheme.surface,
      ),
      SizedBox(
        width: 25,
      ),
      Text(
        Provider.of<ThemeProvider>(context,listen: true).isDark?'Light Mode':'Dark Mode',
        style: Theme.of(context)
            .textTheme
            .titleMedium!
            .copyWith(fontSize: 22),
      ),
      Spacer(),
      Switch(
        value: Provider.of<ThemeProvider>(context,listen: true).isDark,
        onChanged: (value) {
          Provider.of<ThemeProvider>(context,listen: false).changeTheme(value);
        },
      ),
    ],
  );
}
