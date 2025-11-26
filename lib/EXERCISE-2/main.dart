import 'package:flutter/material.dart';
import 'package:flutter_application_1/EXERCISE-2/ui/screens/welcome_screen.dart';
import './ui/screens/temperature_screen.dart';

bool isChange = false;

class TemperatureApp extends StatefulWidget {
  const TemperatureApp({super.key});

  @override
  State<TemperatureApp> createState() {
    return _TemperatureAppState();
  }
}

class _TemperatureAppState extends State<TemperatureApp> {
  void _updateScreen() {
    setState(() {
      isChange = !isChange;
    });
  }

  @override
  Widget build(context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xff16C062), Color(0xff00BCDC)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: isChange
            ? TemperatureScreen()
            : WelcomeScreen(onPressed: () => _updateScreen()),
      ),
    );
  }
}
