import 'package:flutter/material.dart';
import 'package:meow_generator/app/di/service_locator.dart';
import 'package:meow_generator/feature/domain/usecase/get_cat_image_usecase.dart';

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
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint('TEST COMMIT ');
    final useCase = locator<GetCatImageUseCase>();
    useCase.fetchCatImage()
        .then((catImage) => print(catImage))
        .catchError((e) => print(e.toString()));
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Cat generator'),
      ),
      body: const Placeholder(),
    );
  }
}
