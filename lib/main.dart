import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart'; // Import the package
import 'package:qr_app/ui/home_screen.dart';
import 'package:qr_app/ui/qr_generator_screen.dart';
import 'package:qr_app/ui/qr_scanner_screen.dart';
import 'package:qr_app/ui/splash_screen.dart';

void main() {
  runApp(DevicePreview( // Wrap your app with DevicePreview
    enabled: true, // Set to false for production
    builder: (context) => const MainApp(), // Your app goes here
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Montserrat',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/home': (context) => const HomeScreen(),
        '/create': (context) => const QrGeneratorScreen(),
        '/scan': (context) => const QrScannerScreen(),
      },
      locale: DevicePreview.locale(context), // Use locale from DevicePreview
      builder: DevicePreview.appBuilder, // Enable previewing
    );
  }
}
