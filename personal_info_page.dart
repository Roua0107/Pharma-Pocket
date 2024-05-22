import 'package:flutter/material.dart';
import 'package:flutter_application_1/HOME/home_page.dart';

class PersonalInfoPage extends StatefulWidget {
  @override
  _PersonalInfoPageState createState() => _PersonalInfoPageState();
}

class _PersonalInfoPageState extends State<PersonalInfoPage> {
  String _fullName = '';
  int _age = 0;
  String _phoneNumber = '';
  String _dateOfBirth = '';
  String _insuranceProvider = 'Select one...';
  String _gender = 'Female';
  String _allergies = '';
  String _weight = '';
  String _height = '';
  String _bloodPressure = '';
  String _sugarLevel = '';
  String _bloodType = '';




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50.0),
              Text(
                'Patient Intake Form',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 3),
              Text(
                'Please fill out the form below to continue.',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 12),
              ),
              SizedBox(height: 20.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Full name*',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 111, 205, 248),
                      width: 2.0,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 111, 205, 248),
                      width: 2.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 111, 205, 248),
                      width: 2.0,
                    ),
                  ),
                ),
                onChanged: (value) => setState(() => _fullName = value),
              ),
              SizedBox(height: 20.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Age*',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 111, 205, 248),
                      width: 2.0,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 111, 205, 248),
                      width: 2.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 111, 205, 248),
                      width: 2.0,
                    ),
                  ),
                ),
                keyboardType: TextInputType.number,
                onChanged: (value) => setState(() => _age = int.parse(value)),
              ),
              SizedBox(height: 20.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Phone number*',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 111, 205, 248),
                      width: 2.0,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 111, 205, 248),
                      width: 2.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 111, 205, 248),
                      width: 2.0,
                    ),
                  ),
                ),
                keyboardType: TextInputType.phone,
                onChanged: (value) => setState(() => _phoneNumber = value),
              ),
              SizedBox(height: 20.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Date of birth',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 111, 205, 248),
                      width: 2.0,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 111, 205, 248),
                      width: 2.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 111, 205, 248),
                      width: 2.0,
                    ),
                  ),
                ),
                onChanged: (value) => setState(() => _dateOfBirth = value),
              ),



                SizedBox(height: 20.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Weight*',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 111, 205, 248),
                      width: 2.0,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 111, 205, 248),
                      width: 2.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 111, 205, 248),
                      width: 2.0,
                    ),
                  ),
                ),
                onChanged: (value) => setState(() => _weight = value),
              ),




                SizedBox(height: 20.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Height*',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 111, 205, 248),
                      width: 2.0,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 111, 205, 248),
                      width: 2.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 111, 205, 248),
                      width: 2.0,
                    ),
                  ),
                ),
                onChanged: (value) => setState(() => _height = value),
              ),





                SizedBox(height: 20.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'BloodType*',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 111, 205, 248),
                      width: 2.0,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 111, 205, 248),
                      width: 2.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 111, 205, 248),
                      width: 2.0,
                    ),
                  ),
                ),
                onChanged: (value) => setState(() => _bloodType = value),
              ),





                SizedBox(height: 20.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Blood Pressure*',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 111, 205, 248),
                      width: 2.0,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 111, 205, 248),
                      width: 2.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 111, 205, 248),
                      width: 2.0,
                    ),
                  ),
                ),
                onChanged: (value) => setState(() => _bloodPressure = value),
              ),



              
                SizedBox(height: 20.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Sugar Level*',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 111, 205, 248),
                      width: 2.0,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 111, 205, 248),
                      width: 2.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 111, 205, 248),
                      width: 2.0,
                    ),
                  ),
                ),
                onChanged: (value) => setState(() => _sugarLevel = value),
              ),



              SizedBox(height: 10.0),
              Text(
                '  Insurance Provider',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(height: 3.0),

              DropdownButtonFormField<String>(
                value: _insuranceProvider,
                decoration: InputDecoration(
                  
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 111, 205, 248),
                      width: 2.0,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 111, 205, 248),
                      width: 2.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 111, 205, 248),
                      width: 2.0,
                    ),
                  ),
                ),
                items: ['Select one...', 'Provider A', 'Provider B', 'Provider C']
                    .map((provider) => DropdownMenuItem<String>(
                          value: provider,
                          child: Text(provider),
                        ))
                    .toList(),
                onChanged: (value) => setState(() => _insuranceProvider = value!),
              ),
              SizedBox(height: 10.0),
              Text(
                '  Gender',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(height: 1.0),
              Row(
  children: [
    Expanded(
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            _gender = 'Female';
          });
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
            return _gender == 'Female' ? Color(0xFFB3E5FC): Colors.white;
          }),
          foregroundColor: MaterialStateProperty.resolveWith<Color>((states) {
            return _gender == 'Female' ? Colors.white : Colors.black87;
          }),
        ),
        child: Text('Female'),
      ),
    ),
    SizedBox(width: 20),
    Expanded(
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            _gender = 'Male';
          });
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
            return _gender == 'Male' ?  Color(0xFFB3E5FC) : Colors.white;
          }),
          foregroundColor: MaterialStateProperty.resolveWith<Color>((states) {
            return _gender == 'Male' ? Colors.white : Colors.black87;
          }),
        ),
        child: Text('Male'),
      ),
    ),
    SizedBox(width: 20),
    Expanded(
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            _gender = 'Other';
          });
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
            return _gender == 'Other' ?  Color(0xFFB3E5FC) : Colors.white;
          }),
          foregroundColor: MaterialStateProperty.resolveWith<Color>((states) {
            return _gender == 'Other' ? Colors.white : Colors.black87;
          }),
        ),
        child: Text('Other'),
      ),
    ),
  ],
),
              SizedBox(height: 20.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Enter your allergies ...',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 111, 205, 248),
                      width: 2.0,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 111, 205, 248),
                      width: 2.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 111, 205, 248),
                      width: 2.0,
                    ),
                  ),
                ),
                onChanged: (value) => setState(() => _allergies = value),
                maxLines: 3,
              ),
              SizedBox(height: 50.0),
              Center(
                child: ElevatedButton(
                  onPressed: () {
  if (_fullName.isNotEmpty &&
      _age > 0 &&
      _phoneNumber.isNotEmpty &&
      _bloodType.isNotEmpty &&
      _bloodPressure.isNotEmpty &&
      _sugarLevel.isNotEmpty &&
      _weight.isNotEmpty &&
      _height.isNotEmpty &&
      _insuranceProvider != 'Select one...' &&
      _allergies.isNotEmpty) {
    // All fields are filled, navigate to home page
    Navigator.pushReplacementNamed(context, '/home');
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Account created for $_fullName')),
      );
  } else {
    // Show a dialog or snackbar indicating that all fields are required
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('All Fields Required'),
        content: Text('Please fill out all fields before submitting.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('OK'),
          ),
        ],
      ),
    );
  }
},

                  style: ElevatedButton.styleFrom(
                    
                    foregroundColor: Colors.white,
                    backgroundColor: Color.fromARGB(255, 111, 205, 248), // Button color
                    minimumSize: Size(double.infinity, 50), // Full width button
                  ),
                  child: Text(
                    'Submit Form',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
