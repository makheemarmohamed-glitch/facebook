import 'dart:async';
import 'package:flutter/material.dart';
import '../widgets/facebook_logo.dart';
import '../widgets/meta_branding.dart';
import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              const SizedBox(height: 60),
              const FacebookLogo(size: 80, fontSize: 60),
              const SizedBox(height: 80),
              _buildTextField('Mobile Number or Email address'),
              const SizedBox(height: 16),
              _buildTextField('Password', obscureText: true),
              const SizedBox(height: 20),
              _buildLoginButton(),
              const SizedBox(height: 20),
              const Text(
                'Forgotten Password?',
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
              const Spacer(),
              _buildCreateAccountButton(),
              const SizedBox(height: 20),
              const MetaBranding(iconSize: 30, textSize: 22),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  // مكونات مساعدة خاصة بهذه الشاشة
  Widget _buildTextField(String hint, {bool obscureText = false}) {
    return TextField(
      enabled: false,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hint,
        filled: true,
        fillColor: Colors.grey[100],
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.grey[300]!),
        ),
      ),
    );
  }

  Widget _buildLoginButton() {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        color: const Color(0xFF1877F2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Center(
        child: Text(
          'Login',
          style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget _buildCreateAccountButton() {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: const Color(0xFF1877F2)),
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Center(
        child: Text(
          'Create Account',
          style: TextStyle(color: Color(0xFF1877F2), fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}