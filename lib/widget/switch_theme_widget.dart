import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:them_test/providers/theme_provider.dart';


class SwitchThemeWidget extends StatefulWidget {
  const SwitchThemeWidget({super.key});

  @override
  State<SwitchThemeWidget> createState() => _SwitchThemeWidgetState();
}

class _SwitchThemeWidgetState extends State<SwitchThemeWidget> {
  @override
  Widget build(BuildContext context) {
    bool on= context.watch<ThemeProvider>().isDark;
    return Switch.adaptive(
        value: on,
        onChanged: (value) {
                context.read<ThemeProvider>().toggleTheme(value);
              // print(context.watch<ThemeProvider>().themeMode);
        },
    );
  }
}
