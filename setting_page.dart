import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SettingPage extends StatefulWidget {
  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  bool _isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings Page'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              title: Text('Edit Profile'),
              onTap: () {
                // Navigate to edit profile page
              },
            ),
            ListTile(
              title: Text('Emergency contact'),
              onTap: () {
                // Navigate to emergency contact page
              },
            ),
            ListTile(
              title: Text('Set reminders'),
              onTap: () {
                // Navigate to reminders page
              },
            ),
            SwitchListTile(
              title: Text('Dark mode'),
              value: _isDarkMode,
              onChanged: (value) {
                setState(() {
                  _isDarkMode = value;
                });
              },
            ),
            ListTile(
              title: Text('Notification'),
              onTap: () {
                // Navigate to privacy policy page
              },
            ),
            ListTile(
              title: Text('Terms & Conditions'),
              onTap: () {
                // Navigate to terms and conditions page
              },
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.circle),
                  onPressed: () {
                    _launchURL('https://www.youtube.com/');
                  },
                ),
                IconButton(
                  icon: Icon(Icons.circle),
                  onPressed: () {
                    _launchURL('https://www.instagram.com/');
                  },
                ),
                IconButton(
                  icon: Icon(Icons.facebook),
                  onPressed: () {
                    _launchURL('https://www.facebook.com/');
                  },
                ),
                IconButton(
                  icon: Icon(Icons.circle),
                  onPressed: () {
                    _launchURL('https://www.linkedin.com/');
                  },
                ),
              ],
            ),
            Spacer(),
            Center(
              child: TextButton(
                onPressed: () {
                  // Log out functionality
                },
                child: Text('Log Out'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
