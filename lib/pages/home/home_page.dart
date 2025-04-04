import 'package:competify_app/pages/home/widgets/section_navbar.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:competify_app/pages/home/widgets/search_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Future<void> _signOut() async {
    try {
      await FirebaseAuth.instance.signOut();
    } catch (e) {
      print('Error signing out: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // Custom AppBar
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 50),
            decoration: const BoxDecoration(
              color: Color(0xFF464D81),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.chevron_left,
                      color: Colors.white,
                      size: 24,
                    ),
                    Expanded(
                      child: Center(
                        child: Text(
                          "Info Lomba",
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 24), // Placeholder to balance layout
                  ],
                ),
                const SizedBox(height: 33),
                const SearchBarWidget(),
                const SizedBox(height: 10),
                const SectionNavbar(),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: const [
                Text("Isi Konten", style: TextStyle(fontSize: 20)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
