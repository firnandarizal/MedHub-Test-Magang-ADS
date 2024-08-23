import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';
import 'package:medhub/screens/login_success.dart';

class VerifyCodeScreen extends StatelessWidget {
  const VerifyCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_back, color: Color(0xFF090F47)),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            const SizedBox(height: 8),
            Text(
              'Enter the verify code',
              style: GoogleFonts.overpass(
                fontSize: 24,
                color: const Color(0xff090F47),
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'We just sent you a verification code via phone\n+62 821 39 488 953',
              style: GoogleFonts.overpass(
                fontSize: 16,
                color: Colors.grey[600],
              ),
            ),
            const SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildVerificationCodeBox(),
                _buildVerificationCodeBox(),
                _buildVerificationCodeBox(),
                _buildVerificationCodeBox(),
              ],
            ),
            const SizedBox(height: 32),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff0F3759),
                  padding: const EdgeInsets.symmetric(horizontal: 100),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onPressed: () {
                  // Submit code action

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginSuccess()));
                },
                child: Text(
                  'SUBMIT CODE',
                  style: GoogleFonts.overpass(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Center(
              child: Text(
                'The verify code will expire in 00:59',
                style: GoogleFonts.overpass(
                  fontSize: 14,
                  color: Colors.grey[600],
                ),
              ),
            ),
            const SizedBox(height: 16),
            Center(
              child: GestureDetector(
                onTap: () {
                  // Resend code action
                },
                child: Text(
                  'Resend Code',
                  style: GoogleFonts.overpass(
                    fontSize: 16,
                    color: const Color(0xff00A59B),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildVerificationCodeBox() {
    return SizedBox(
      width: 50,
      child: TextField(
        textAlign: TextAlign.center,
        style: GoogleFonts.overpass(
          fontSize: 24,
          color: const Color(0xff090F47),
          fontWeight: FontWeight.bold,
        ),
        keyboardType: TextInputType.number,
        maxLength: 1,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        decoration: const InputDecoration(
          counterText: '',
          border: UnderlineInputBorder(),
        ),
      ),
    );
  }
}
