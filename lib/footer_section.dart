import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'privacy_policy.dart';
import 'term_and_condition.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.grey[800],
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      child: Column(
        children: [
          // Tautan Sosial
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Image.asset('assets/whatsapp.png', width: 30, height: 30),
                onPressed: () => launchUrl(Uri.parse('https://wa.link/6zlu7f')),
              ),
              IconButton(
                icon:
                    Image.asset('assets/instagram.png', width: 30, height: 30),
                onPressed: () => launchUrl(Uri.parse(
                    'https://www.instagram.com/materikas/profilecard/')),
              ),
              IconButton(
                icon: Image.asset('assets/tiktok.png', width: 30, height: 30),
                onPressed: () =>
                    launchUrl(Uri.parse('https://www.tiktok.com/@materikas')),
              ),
              IconButton(
                icon: Image.asset('assets/youtube.png', width: 30, height: 30),
                onPressed: () => launchUrl(
                    Uri.parse('https://www.youtube.com/@materikas21')),
              ),
              // IconButton(
              //   icon: Image.asset('assets/facebook.png', width: 30, height: 30),
              //   onPressed: () {
              //     // Tautan ke Facebook
              //   },
              // ),
            ],
          ),
          const SizedBox(height: 20),

          // Tautan Navigasi
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PrivacyPolicyPage(),
                    ),
                  );
                },
                child: const Text(
                  "Kebijakan Privasi",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(width: 20),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const TermsAndConditionsPage(),
                    ),
                  );
                },
                child: const Text(
                  "Syarat & Ketentuan",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
          const SizedBox(height: 40),

          // Hak Cipta
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "© 2024 Materikas. All rights reserved.",
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 14,
                ),
              ),
              const SizedBox(width: 20),
              const Text(
                "Hubungi kami di support@materikas.com | 0813 8025 3313",
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
