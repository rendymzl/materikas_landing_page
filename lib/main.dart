import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      title: 'Materikas',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final ScrollController _scrollController = ScrollController();
  final GlobalKey _signupSectionKey = GlobalKey();

  // Fungsi untuk melakukan scroll ke Signup Section
  void scrollToSignupSection() {
    final RenderBox renderBox =
        _signupSectionKey.currentContext!.findRenderObject() as RenderBox;
    final position = renderBox.localToGlobal(Offset.zero).dy;

    _scrollController.animateTo(
      position +
          _scrollController
              .offset, // Menambahkan offset untuk mendapatkan posisi relatif
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        controller:
            _scrollController, // ScrollController untuk mengontrol scroll
        child: Column(
          children: [
            HeroSection(onSignupPressed: scrollToSignupSection),
            OpeningSection(onSignupPressed: scrollToSignupSection),
            const FeatureSection(),
            const BenefitsSection(),
            const TestimonialSection(),
            // const DemoSection(),
            PricingSection(onSignupPressed: scrollToSignupSection),
            SignupSection(
                key: _signupSectionKey), // SignUp section with GlobalKey
            FAQSection(),
            ClosingSection(onSignupPressed: scrollToSignupSection),
            const FooterSection(),
          ],
        ),
      ),
    );
  }
}
