import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Medicines Discovery',
      home: MedicinesDiscoveryPage(),
    );
  }
}

class MedicinesDiscoveryPage extends StatefulWidget {
  @override
  _MedicinesDiscoveryPageState createState() => _MedicinesDiscoveryPageState();
}

class _MedicinesDiscoveryPageState extends State<MedicinesDiscoveryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 236, 193),
        elevation: 0,
        toolbarHeight: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Medicines discovery',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'Know your medicines and be safe!',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 16.0),
            Expanded(
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 16.0,
                  mainAxisSpacing: 16.0,
                ),
                children: [
                  _buildMedicineItem(
                    image: 'assets/images/profil.png',
                    title: 'Medicine 1',
                  ),
                  _buildMedicineItem(
                    image: 'assets/images/outils-de-reparation.png',
                    title: 'Medicine 2',
                  ),
                  _buildMedicineItem(
                    image: 'assets/images/balayage.png',
                    title: 'Medicine 3',
                  ),
                  _buildMedicineItem(
                    image: 'assets/images/horloge.png',
                    title: 'Medicine 4',
                  ),
                  _buildMedicineItem(
                    image: 'assets/images/chercher.png',
                    title: 'Medicine 5',
                  ),
                  _buildMedicineItem(
                    image: 'assets/images/medicament.png',
                    title: 'Medicine 6',
                  ),
        
                ],
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Navigate to search page
              },
              child: Text('Next'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black, // Use backgroundColor instead of primary
                foregroundColor: Colors.white, // Use foregroundColor instead of onPrimary
                minimumSize: Size.fromHeight(50.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            TextButton(
              onPressed: () {
                // Skip the discovery page
              },
              child: Text('Skip'),
              style: TextButton.styleFrom(
                foregroundColor: Colors.black, // Use foregroundColor instead of primary
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMedicineItem({
    required String image,
    required String title,
  }) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.asset(
            image,
            width: 80.0,
            height: 80.0,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: 8.0),
        Text(
          title,
          style: TextStyle(
            fontSize: 12.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
