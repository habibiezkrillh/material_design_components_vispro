import 'package:flutter/material.dart';
import 'screens/onboarding_screen.dart'; // Mengimpor OnboardingScreen
import 'screens/login_screen.dart'; // Mengimpor LoginScreen

void main() {
  runApp(const KamenVaultApp());
}

class KamenVaultApp extends StatelessWidget {
  const KamenVaultApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KamenVault',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/', // Menentukan rute pertama aplikasi
      routes: {
        '/': (context) =>
            const OnboardingScreen(), // Rute untuk OnboardingScreen
        '/login': (context) => LoginScreen(), // Rute untuk LoginScreen
      },
    );
  }
}
