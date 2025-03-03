import 'package:flutter/material.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Registration',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xffB81736),
                Color(0xFF500000),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Form(
                child: Column(
                  children: [
                    _buildTextField(labelText: 'Name'),
                    SizedBox(height: 16.0),
                    _buildTextField(labelText: 'Last name'),
                    SizedBox(height: 16.0),
                    _buildTextField(labelText: 'Phone'),
                    SizedBox(height: 16.0),
                    _buildTextField(labelText: 'Location'),
                    SizedBox(height: 16.0),
                    _buildTextField(labelText: 'Category'),
                    SizedBox(height: 16.0),
                    _buildTextField(labelText: 'Price'),
                    SizedBox(height: 16.0),
                    _buildTextField(labelText: 'Description'),
                    SizedBox(height: 16.0),
                    _buildButton(text: 'Send'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildTextField({required String labelText}) {
  return TextFormField(
    decoration: InputDecoration(
      filled: true,
      labelText: labelText,
      fillColor: Color(0xffffffff),
      labelStyle: TextStyle(
        fontSize: 14.0,
        color: Color(0xff000000),
        fontWeight: FontWeight.normal,
      ),
      contentPadding: EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 16,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
        borderSide: BorderSide(
          width: 0,
          color: Colors.grey,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
        borderSide: BorderSide(
          width: 1,
          color: Colors.red,
        ),
      ),
    ),
  );
}

Widget _buildButton({required String text}) {
  return Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: [
          Color(0xffB81736),
          Color(0xFF500000),
        ],
      ),
      borderRadius: BorderRadius.circular(16),
    ),
    child: ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.white,
        minimumSize: const Size(double.infinity, 48),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
      ),
      child: Text(text),
    ),
  );
}
