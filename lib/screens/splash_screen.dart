import 'dart:async';
import 'package:flutter/material.dart';
import '../widgets/facebook_logo.dart';
import '../widgets/meta_branding.dart';
import 'login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const FacebookLogo(size: 120, fontSize: 90),
            const SizedBox(height: 20),
            const Text(
              'Logo',
              style: TextStyle(
                color: Color(0xFF1877F2),
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Spacer(),
            const MetaBranding(iconSize: 40, textSize: 28),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}