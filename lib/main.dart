import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:flutter/material.dart';
import 'home_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
 );
 runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ana Sayfa',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Montserrat',
        textTheme: const TextTheme(
          displayLarge: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold, color: Colors.deepPurple),
          bodyLarge: TextStyle(fontSize: 18.0, color: Colors.black87),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}