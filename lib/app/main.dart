import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meow_generator/app/di/service_locator.dart';
import 'package:meow_generator/core/state/ui_state.dart';
import 'package:meow_generator/core/theme/theme.dart';
import 'package:meow_generator/feature/bloc/cat_image_bloc.dart';
import 'package:meow_generator/feature/ui/cat_image_ui_model.dart';

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
            child: BlocProvider(
              create: (_) => locator<CatImageBloc>(),
              child: const _HomeView(),
            ),
          ),
        ),
      ),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    final catImageBloc = context.read<CatImageBloc>();
    return Column(
      children: [
        SizedBox(
          height: 460,
          width: double.infinity,
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(64)),
            child: BlocBuilder<CatImageBloc, CatImageState>(
              builder: (BuildContext context, CatImageState state) {
                switch (state.catImageUiState) {
                  case LoadingUIState():
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  case SuccessUIState(data: CatImageUi catImageUi):
                    return Image.network(
                      catImageUi.url,
                      fit: BoxFit.cover,
                    );
                  case FailureUIState(error: String message):
                    return Center(
                      child: Text(message),
                    );
                  default:
                    return Image.asset(
                      'assets/images/haku.jpg',
                      fit: BoxFit.cover,
                    );
                }
              },
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
          onPressed: () => catImageBloc.onLoadCatImageEvent(),
          child: const Text('Generar imagen'),
        ),
      ],
    );
  }
}
