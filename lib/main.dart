import 'package:flutter/material.dart';
import 'package:imc_calculator/core/app_colors.dart';
import 'package:imc_calculator/screens/imc_home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.primary,
          //foregroundColor: AppColors.backgroundComponentSelected,
          centerTitle: false,
          title: Text(
            'IMC Calculator',
            style: TextStyle(
              color: AppColors.backgroundComponent,
              fontFamily: "helvetica_neue",
              fontWeight: FontWeight.w500,
              fontSize: 35,
            ),
          ),
        ),
        backgroundColor: AppColors.background,
        body: ImcHomeScreen(),
      ),
    );
  }
}
