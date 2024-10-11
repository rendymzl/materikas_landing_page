import 'package:flutter/material.dart';

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
                icon: const Icon(Icons.facebook, color: Colors.white),
                onPressed: () {
                  // Tautan ke Facebook
                },
              ),
              IconButton(
                icon: const Icon(Icons.facebook, color: Colors.white),
                onPressed: () {
                  // Tautan ke Twitter
                },
              ),
              IconButton(
                icon: const Icon(Icons.facebook, color: Colors.white),
                onPressed: () {
                  // Tautan ke Instagram
                },
              ),
              IconButton(
                icon: const Icon(Icons.facebook, color: Colors.white),
                onPressed: () {
                  // Tautan ke LinkedIn
                },
              ),
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
          const Text(
            "© 2024 Nama Perusahaan. Semua Hak Dilindungi.",
            style: TextStyle(
              color: Colors.white70,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
