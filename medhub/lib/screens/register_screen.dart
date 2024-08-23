import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: const Icon(Icons.arrow_back, color: Color(0xFF090F47)),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              const SizedBox(height: 16),
              Text(
                'Create your account',
                style: GoogleFonts.overpass(
                  fontSize: 28,
                  color: const Color(0xff090F47),
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 40),
              const TextField(
                decoration: InputDecoration(
                  hintText: 'Your Name',
                  hintStyle: TextStyle(color: Colors.grey),
                  border: UnderlineInputBorder(),
                ),
              ),
              const SizedBox(height: 24),
              const TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: 'Email',
                  hintStyle: TextStyle(color: Colors.grey),
                  border: UnderlineInputBorder(),
                ),
              ),
              const SizedBox(height: 24),
              const TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Mobile Number',
                  hintStyle: TextStyle(color: Colors.grey),
                  border: UnderlineInputBorder(),
                ),
              ),
              const SizedBox(height: 24),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: TextStyle(color: Colors.grey),
                  border: UnderlineInputBorder(),
                  suffix: Icon(Icons.visibility),
                  suffixStyle: TextStyle(color: Color(0xff0F3759)),
                ),
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff0F3759),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onPressed: () {
                  // Sign in action
                },
                child: Text(
                  'CREATE ACCOUNT',
                  style: GoogleFonts.overpass(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Center(
                child: GestureDetector(
                  onTap: () {
                    // Navigate to sign up page
                  },
                  child: Text(
                    "< Already have an account? Sign in",
                    style: GoogleFonts.overpass(
                      fontSize: 14,
                      color: const Color(0xff090F47),
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
