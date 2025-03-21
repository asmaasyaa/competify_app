import 'package:competify_app/pages/home/widgets/bottom_nav_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:competify_app/services/firebase_service.dart';
import 'package:competify_app/pages/auth/auth_page.dart';
<<<<<<< HEAD
import 'package:competify_app/pages/home/home_page.dart';
import 'package:competify_app/pages/search/search_lomba.dart';

=======
>>>>>>> dd430eecf6348505757ab1a7134ebd547f08921b

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await FirebaseService.initializeFirebase();
  } catch (e) {
    debugPrint('Error initializing Firebase: $e');
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Scaffold(
              body: Center(child: CircularProgressIndicator()),
            );
          }
          return snapshot.hasData ? const BottomNavBar() : const AuthPage();
        },
      ),
    );
  }
}
