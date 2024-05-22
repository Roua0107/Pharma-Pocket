import 'package:flutter/material.dart';
import 'package:flutter_application_1/HOME/medicine_discovery_page.dart';
import 'package:flutter_application_1/LOGIN/login_page.dart';
import 'package:flutter_application_1/SETTINGS/setting_page.dart';
import 'package:flutter_application_1/HOME/reminder_page.dart';
import 'package:flutter_application_1/HOME/meds_page.dart';
import 'package:flutter_application_1/HOME/profile_page.dart';
import 'package:flutter_application_1/HOME/SEARCH/search_page.dart';
import 'package:flutter_application_1/SETTINGS/emergency_page.dart';
import 'package:flutter_application_1/HOME/health_journal_page.dart';
import 'package:flutter_application_1/HOME/medicine_discovery_page.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          shrinkWrap: true,
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          children: [
            _buildGridItem(context, 'Settings', Icons.settings, SettingPage()),
            _buildGridItem(context, 'Reminder', Icons.alarm, ReminderPage()),
            _buildGridItem(context, 'Meds', Icons.medical_services, MedsPage()),
            _buildGridItem(context, 'Profile', Icons.person, ProfilePage()),
            _buildGridItem(context, 'Search', Icons.search, SearchPage()),
            _buildGridItem(context, 'Emergency', Icons.local_hospital, EmergencyPage()),
            _buildGridItem(context, 'Health Journal', Icons.book, HealthJournalPage()),
            _buildGridItem(context, 'Medicine disconvery', Icons.logout, MedicinesDiscoveryPage()),
            // Add more items here if needed
          ],
        ),
      ),
    );
  }

  Widget _buildGridItem(BuildContext context, String title, IconData icon, Widget destinationPage) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => destinationPage),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, color: Colors.white, size: 40),
              SizedBox(height: 10),
              Text(
                title,
                style: TextStyle(color: Colors.white, fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
