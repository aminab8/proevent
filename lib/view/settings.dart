
import 'package:flutter_settings_ui/flutter_settings_ui.dart';
import 'package:flutter/material.dart';
import 'package:proevent/view/setting_password.dart';

    class SettingsPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        backgroundColor: Colors.blue,
      ),
      body: SettingsList(
        sections: [
          SettingsSection(
            title: Text('Common'),
            tiles: <SettingsTile>[
              SettingsTile.navigation(
                leading: Icon(Icons.language),
                title: Text('Language'),
                value: Text('English'),
              ),
              SettingsTile.switchTile(
                onToggle: (value) {},
                initialValue: true,
                leading: Icon(Icons.format_paint),
                title: Text('Enable custom theme'),
              ),
            ],
          ),
          SettingsSection(
            title: Text('Account'),
            tiles: <SettingsTile>[
              SettingsTile.navigation(
                leading: Icon(Icons.email),
                title: Text('Email'),
              ),
              SettingsTile.navigation(
                leading: Icon(Icons.lock),
                title: Text('Password'),
                onPressed: (BuildContext context) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PasswordSettingsPage()),
                  );
                },
              ),
              SettingsTile(
                leading: Icon(Icons.exit_to_app),
                title: Text('Sign Out'),

              ),
            ],
          ),
        ],
      ),
    );
  }
}