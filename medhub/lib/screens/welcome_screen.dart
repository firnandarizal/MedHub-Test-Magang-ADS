import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medhub/screens/login_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(
                image: AssetImage('assets/images/welcome.png'),
              ),
              const SizedBox(
                height: 34,
              ),
              Text(
                'Welcome to MedHub',
                style: GoogleFonts.overpass(
                    fontSize: 32,
                    color: const Color(0xff090F47),
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              Text(
                'Do you want some help with your health to get a better life?',
                style: GoogleFonts.overpass(fontSize: 18),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 34,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff0F3759),
                    minimumSize: const Size(double.infinity, 50)),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/onboarding');
                },
                child: Text(
                  'SIGN UP WITH EMAIL',
                  style: GoogleFonts.overpass(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    minimumSize: const Size(double.infinity, 50)),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/onboarding');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const FaIcon(
                      FontAwesomeIcons.facebook,
                      size: 18,
                      color: Color(0xff0F3759),
                    ),
                    const SizedBox(width: 16),
                    Text(
                      'CONTINUE WITH FACEBOOK',
                      style: GoogleFonts.overpass(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xff0F3759),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    minimumSize: const Size(double.infinity, 50)),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/onboarding');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Image(image: AssetImage('assets/images/google.png')),
                    const SizedBox(width: 16),
                    Text(
                      'CONTINUE WITH GMAIL',
                      style: GoogleFonts.overpass(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xff0F3759),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const LoginScreen();
                  }));
                },
                child: Text(
                  'LOGIN',
                  style: GoogleFonts.overpass(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: const Color(0xff0F3759),
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
