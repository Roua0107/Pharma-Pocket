import 'package:flutter/material.dart';
import 'LOGIN/interface_page.dart';
import 'LOGIN/personal_info_page.dart';
import 'LOGIN/create_account_page.dart';
import 'LOGIN/personal_info_page.dart';
import 'Home/home_page.dart';
import 'Home/reminder_page.dart';
import 'Home/SEARCH/search_page.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(
       primaryColor: Color.fromARGB(255, 111, 205, 248), // Set primary color here
  ),
      routes: {
        '/personalInfo': (context) => PersonalInfoPage(), // Define the route for PersonalInfoPage
        '/home': (context) =>HomePage(), // Define the route for MyHomePage
        '/reminder': (context) =>ReminderPage(),
        '/search': (context) => SearchPage(),

      },
      home: InterfacePage(),// Set InterfacePage as the initial route
      
    );
  }
}

