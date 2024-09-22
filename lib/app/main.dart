import 'package:flutter/material.dart';
import 'package:meow_generator/app/di/service_locator.dart';
import 'package:meow_generator/core/theme/theme.dart';

void main() {
  initializeLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('MEOW'),
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 460,
                  width: double.infinity,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(64)),
                    child: Image.asset(
                      'assets/images/haku.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(),
                  ),
                  onPressed: () {},
                  child: const Text('Generar imagen'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
