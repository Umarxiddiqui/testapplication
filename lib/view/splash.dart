import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testapplication/view/dashboard.dart';
import 'package:get/get.dart';
import 'package:testapplication/view/login.dart';
import 'package:testapplication/view/mainDashboard.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: screenHeight * 0.55, // 75% of screen height
              child: Stack(
                fit: StackFit.expand,
                children: [
                  // Background image
                  Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/6.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  // Overlay card with text
                  Align(
                    alignment: const Alignment(0, 1.9),
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: DelayedDisplay(
                        delay: const Duration(seconds: 0),
                        child: Text(
                          "Fall in Love with Coffee in Blissful Delight!",
                          textAlign: TextAlign.center,
                          maxLines: 3,
                          style: GoogleFonts.sora(
                            fontSize: screenWidth * 0.08, // 8% of screen width
                            fontWeight: FontWeight.w600, // semi-bold
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: const Alignment(0, 2),
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: DelayedDisplay(
                        delay: const Duration(seconds: 0),
                        child: Text(
                          "Welcome to our cozy coffee corner, where every cup is a delight for you.",
                          textAlign: TextAlign.center,
                          maxLines: 2,
                          style: GoogleFonts.sora(
                            fontSize: screenWidth * 0.04, // 4% of screen width
                            // fontWeight: FontWeight.w600, // semi-bold (optional)
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Container(
              margin: const EdgeInsets.all(30.0),
              child: ElevatedButton(
                onPressed: () {
                  Get.to(() => const MainDashboard());
                  print("ABC");
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Color(0xFFC67C4E),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  minimumSize: const Size(double.infinity, 60),
                ),
                child: Text(
                  "Get Started",
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  style: GoogleFonts.sora(
                    fontSize: screenWidth * 0.04,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
