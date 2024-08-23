import 'package:flutter/material.dart';
import 'profile_screen.dart';

class CheckoutSuccess extends StatefulWidget {
  const CheckoutSuccess({super.key});

  @override
  State<CheckoutSuccess> createState() => _CheckoutSuccessState();
}

class _CheckoutSuccessState extends State<CheckoutSuccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            const Expanded(
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image(
                      image: AssetImage('assets/images/success.png'),
                    ),
                    SizedBox(
                      height: 51,
                    ),
                    Text(
                      'Thank you',
                      style: TextStyle(
                        fontSize: 24,
                        color: Color(0xff090F47),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        'Your Order will be delivered with invoice #INV20240817. You can track the delivery in the order section.',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w300),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff0F3759),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ProfilePage();
                  }));
                },
                child: const Text(
                  'Continue Order',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
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
