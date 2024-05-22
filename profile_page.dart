import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFB3E5FC),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Icon(Icons.arrow_back),
                  ),
                  CircleAvatar(
                    radius: 50.0,
                    //here i'll import the user picture
                    backgroundImage: AssetImage('assets/profile_picture.png'), // Replace with actual asset path
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    //here i'll impoert the user's name
                    'Roua Trabelsi',
                    style: TextStyle(
                      fontSize: 22.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    //here i'll import the user's email
                    'rouatrabelsi01@gmail.com',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'Stay active and take care of your health. You\'ll get a notification if your health state went out of ordinary.',
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'My Stats',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Expanded(
                        child: GridView.count(
                          crossAxisCount: 2,
                          crossAxisSpacing: 10.0,
                          mainAxisSpacing: 10.0,
                          children: [
                            StatCard(
                              icon: Icons.fitness_center,
                              label: 'weight',
                              value: '64.4kg',
                            ),
                            StatCard(
                              icon: Icons.height,
                              label: 'height',
                              value: '1.67m',
                            ),
                            StatCard(
                              icon: Icons.bloodtype,
                              label: 'blood type',
                              value: 'O+',
                            ),
                            StatCard(
                              icon: Icons.cake,
                              label: 'age',
                              value: '23 yo',
                            ),
                            StatCard(
                              icon: Icons.female,
                              label: 'sexe',
                              value: 'female',
                            ),
                            StatCard(
                              icon: Icons.opacity,
                              label: 'sugar level',
                              value: '1g/dl',
                            ),
                            StatCard(
                              icon: Icons.bloodtype_rounded,
                              label: 'blood pressure',
                              value: '13',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class StatCard extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  StatCard({required this.icon, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 40.0,
            ),
            SizedBox(height: 10.0),
            Text(
              value,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5.0),
            Text(
              label,
              style: TextStyle(
                color: Colors.grey[700],
              ),
            ),
          ],
        ),
      ),
    );
  }
}