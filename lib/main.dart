import 'package:flutter/material.dart';

import 'benefit_section.dart';
import 'closing_section.dart';
import 'demo_section.dart';
import 'faq_section.dart';
import 'featured_section.dart';
import 'footer_section.dart';
import 'hero_section.dart';
import 'opening_section.dart';
import 'pricing_section.dart';
import 'signup_section.dart';
import 'testimonial_section.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const LandingPage());
}

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              const HeroSection(),
              const OpeningSection(),
              const FeatureSection(),
              // const TestimonialSection(),
              // const BenefitsSection(),
              // const DemoSection(),
              // const PricingSection(),
              // const SignupSection(),
              // FAQSection(),
              // const ClosingSection(),
              // const FooterSection(),
            ],
          ),
        ),
      ),
    );
  }
}
