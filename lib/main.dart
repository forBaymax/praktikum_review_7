import 'package:flutter/material.dart';
import 'package:pertemuan7/controller/main_controller.dart';
import 'package:pertemuan7/controller/theme_controller.dart';
import 'package:pertemuan7/pages/home_page.dart';
import 'package:provider_base_tools/provider_base_tools.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (BuildContext context) => TaskData(),
        ),
        ChangeNotifierProvider(
          create: (BuildContext context) => ThemeModeData(),
        )
      ],
      child: MaterialApp(
        title: 'To Do List',
        themeMode: Provider.of<ThemeModeData>(context,listen: false).themeMode,
        home: TasksScreen(),
      ),
    );
  }
}
