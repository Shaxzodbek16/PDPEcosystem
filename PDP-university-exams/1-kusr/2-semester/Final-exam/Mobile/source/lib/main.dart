import 'package:flutter/material.dart';
import 'package:source/pages/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Online Shop',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey, // Change the primary color to blueGrey
        colorScheme: ThemeData().colorScheme.copyWith(secondary: Colors.orange), // Keep the secondary color as orange
        visualDensity: VisualDensity.adaptivePlatformDensity, // Keep the adaptive platform density
        textTheme: const TextTheme(
          // ignore: deprecated_member_use
          headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold, color: Colors.white),
          // ignore: deprecated_member_use
          headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic, color: Colors.white),
          // ignore: deprecated_member_use
          bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind', color: Colors.white),
        ), // Add a text theme with white color
      ),
      home: const HomePage(), // Starting page of the app
      debugShowCheckedModeBanner: false, // This removes the debug banner
    );
  }
}

bool checking(bool a, bool b )=> a==b? true: false;
