import 'package:flutter/material.dart';
import 'package:pertemuan7/controller/theme_controller.dart';
import 'package:provider_base_tools/provider_base_tools.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool isDarkModeActive = false;

  void changeTheme(bool value) {
    setState(() {
      isDarkModeActive = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Column(
        children: [
          ListTile(
            leading: Icon(Provider.of<ThemeData>(context).isDarkModeActive
                ? Icons.dark_mode
                : Icons.light_mode),
            title: const Text("Title"),
            trailing: Switch(
              value: Provider.of<ThemeModeData>(context).isDarkModeActive,
              onChanged: (bool value) {
                Provider.of<ThemeModeData>(context, listen: false).changeTheme(
                  value ? ThemeMode.dark: ThemeMode.light
                    );
              },
            ),
            onTap: () {
              Provider.of<ThemeModeData>(context, listen: false).changeTheme(
                Provider.of<ThemeModeData>(context, listen: false).isDarkModeActive
                ?ThemeMode.light
                :ThemeMode.dark,
              );
            },
          )
        ],
      ),
    );
  }
}

extension on ThemeData {
  get isDarkModeActive => null;
}
