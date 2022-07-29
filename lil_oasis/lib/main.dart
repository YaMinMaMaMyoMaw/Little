import 'package:flutter/material.dart';
import 'package:lil_oasis/login_screen.dart';
import 'package:lil_oasis/onboarding_screen.dart';
import 'main_screen.dart';
import 'splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.grey,
        backgroundColor: const Color(0xffF4C9A2),
      ),
      home:  SplashScreen(),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/onboarding_screen':(context) => const OnboardingScreen(),
        '/login_screen':(context) => const LoginScreen(),
        '/main_screen':(context) =>  const MainScreen(),
      }
       ,
    );
  }
}

