import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'src/about_page.dart';
import 'src/contact_page.dart';
import 'src/home_page.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future<void> main() async {
  await dotenv.load(fileName: ".env");
  final apiKey = dotenv.env['API_KEY'];
  final authDomain = dotenv.env['AUTH_DOMAIN'];
  final firebaseConfig = FirebaseOptions(
    apiKey: apiKey ?? 'YOUR_API_KEY',
    authDomain: authDomain,
    projectId: dotenv.env['PROJECT_ID'] ?? 'PROJECT_ID',
    storageBucket: dotenv.env['STORAGE_BUCKET'],
    messagingSenderId:
        dotenv.env['MESSAGING_SENDER_ID'] ?? 'MESSAGING_SENDER_ID',
    appId: dotenv.env['APP_ID'] ?? 'APP_ID',
  );

  // Initialize Firebase
  final app = Firebase.initializeApp(options: firebaseConfig);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Web Homepage',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/about': (context) => const AboutPage(),
        '/contact': (context) => const ContactPage(),
      },
    );
  }
}
