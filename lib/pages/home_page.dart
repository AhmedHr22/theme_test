import 'package:flutter/material.dart';
import 'package:them_test/widget/profile_widget.dart';

import '../widget/switch_theme_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions:  const [
          SwitchThemeWidget()
        ],
        title: Text(widget.title),
      ),
      body: const ProfileWidget().build(context),

    );
  }
}
