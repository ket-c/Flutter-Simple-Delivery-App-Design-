import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:light_weight_delivery/screens/map_screen.dart';
import 'package:light_weight_delivery/screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'Light weight Delivery',
         theme: ThemeData(
    textTheme: GoogleFonts.poppinsTextTheme (
      Theme.of(context).textTheme.apply(
        fontSizeFactor: 1,
          fontSizeDelta: 1.0,
      ),

    ),
  ),
        initialRoute: '/welcome',
        routes: {
          '/welcome': (context) => const WelcomeScreen(),
          '/map': (context) =>  MapScreen(),
        });
  }
}

