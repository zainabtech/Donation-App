import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Add a delay to simulate a long loading process
    Future.delayed(Duration(seconds: 3), () {
      // Navigate to the home screen
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xff850101), Colors.red.shade200],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage('assets/images/logo.png'),
              width: 250,
              height: 200,
            ),
            SizedBox(height: 20),
            Center(
              child: Text(
                'SAQDA',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            CircularProgressIndicator(
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
