import 'package:clot/essentials/colors.dart';
import 'package:flutter/material.dart';

class SignIn1Screen extends StatelessWidget {
  const SignIn1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 32),
              const Text(
                'Sign in',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 32),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Email Address',
                  filled: true,
                  fillColor: grayColor,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: primaryColor,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text(
                  'Continue',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Don\'t have an Account? ',
                    style: TextStyle(color: secondaryColor),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'Create One',
                      style: TextStyle(
                        color: secondaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 32),
              _SocialButton(
                text: 'Continue With Apple',
                icon: 'assets/images/apple_logo.png',
                onTap: () {},
              ),
              const SizedBox(height: 12),
              _SocialButton(
                text: 'Continue With Google',
                icon: 'assets/images/google_logo.png',
                onTap: () {},
              ),
              const SizedBox(height: 12),
              _SocialButton(
                text: 'Continue With Facebook',
                icon: 'assets/images/facebook_logo.png',
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SocialButton extends StatelessWidget {
  final String text;
  final String icon;
  final VoidCallback onTap;

  const _SocialButton({
    required this.text,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          color: grayColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                icon,
                height: 24,
                width: 24,
              ),
              const SizedBox(width: 12),
              Text(
                text,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
