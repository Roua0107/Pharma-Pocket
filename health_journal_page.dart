import 'package:flutter/material.dart';

class HealthJournalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFB3E5FC), // Background color
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0.0),
          child: SingleChildScrollView( // Ensure the page is scrollable
            child: Stack(
              children: [
                // Add your image here with transparency
                Opacity(
                  opacity: 0.9, // Adjust the opacity value (0.0 to 1.0)
                  child: Image.asset(
                    'assets/images/mmm.jpeg',
                    width: double.infinity,
                    height: 900.0, // You can adjust the height as needed
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 200, // Adjust position as needed
                  left: 10, // Adjust position as needed
                  right: 10, // Adjust position as needed
                  child: Container(
                    padding: EdgeInsets.all(50.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 20.0,
                          offset: Offset(0, 5),
                        ),
                      ],
                    ),



                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        // Add your form fields here
                        SizedBox(height: 10.0),
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Field 1',
                          ),
                        ),
                        SizedBox(height: 16.0),
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Field 2',
                          ),
                        ),
                        SizedBox(height: 16.0),
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Field 3',
                          ),
                        ),
                        SizedBox(height: 16.0),
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Field 4',
                          ),
                        ),
                        SizedBox(height: 16.0),
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Field 5',
                          ),
                        ),
                        SizedBox(height: 100.0),
                        ElevatedButton(
                          onPressed: () {
                            // Handle form submission
                          },
                          child: Text('Submit'),
                        ),
                        SizedBox(height: 60.0),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
