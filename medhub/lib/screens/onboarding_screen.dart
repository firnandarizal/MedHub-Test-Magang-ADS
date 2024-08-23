import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: IntroductionScreen(
          globalBackgroundColor: Colors.white,
          pages: [
            PageViewModel(
              title: 'View and buy Medicine online',
              body:
                  'Etiam mollis metus non purus faucibus sollicitudin. Pellentesque sagittis mi. Integer.',
              image: buildImage("assets/images/ob1.png"),
              decoration: PageDecoration(
                titleTextStyle: GoogleFonts.overpass(
                    fontSize: 24, fontWeight: FontWeight.w700),
                bodyTextStyle: GoogleFonts.overpass(
                    fontSize: 16, fontWeight: FontWeight.w300),
              ),
            ),
            PageViewModel(
              title: 'Online medical & Healthcare',
              body:
                  'Etiam mollis metus non purus faucibus sollicitudin. Pellentesque sagittis mi. Integer.',
              image: buildImage("assets/images/ob2.png"),
              decoration: PageDecoration(
                titleTextStyle: GoogleFonts.overpass(
                    fontSize: 24, fontWeight: FontWeight.w700),
                bodyTextStyle: GoogleFonts.overpass(
                    fontSize: 16, fontWeight: FontWeight.w300),
              ),
            ),
          ],
          scrollPhysics: const ClampingScrollPhysics(),
          // showBackButton: true,
          showDoneButton: true,
          showNextButton: true,
          showSkipButton: true,
          skip: Text("Skip",
              style: GoogleFonts.overpass(color: Colors.grey, fontSize: 14)),
          next: Text("Next",
              style: GoogleFonts.overpass(
                  color: const Color(0xff00A59B), fontSize: 14)),
          done: Text("Done",
              style: GoogleFonts.overpass(
                  color: const Color(0xff00A59B), fontSize: 14)),
          // back: Text("Back", style: GoogleFonts.overpass(color: Colors.grey)),
          onDone: () {
            Navigator.pushReplacementNamed(context, '/welcome');
          },

          dotsDecorator: const DotsDecorator(
            size: Size.square(5.0),
            activeSize: Size(10.0, 5.0),
            activeColor: Colors.teal,
            color: Colors.grey,
            spacing: EdgeInsets.symmetric(horizontal: 3.0),
          ),
        ),
      ),
    );
  }

  Widget buildImage(String imagePath) {
    return Center(
        child: Image.asset(
      imagePath,
      width: 500,
      height: 600,
    ));
  }

  PageDecoration getPageDecoration() {
    return const PageDecoration(
      imagePadding: EdgeInsets.only(top: 120),
      pageColor: Colors.white,
      bodyPadding: EdgeInsets.only(top: 8, left: 20, right: 20),
      titlePadding: EdgeInsets.only(top: 50),
      bodyTextStyle: TextStyle(color: Colors.black54, fontSize: 15),
    );
  }
}
