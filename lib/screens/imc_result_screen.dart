import 'package:flutter/material.dart';
import 'package:imc_calculator/core/app_colors.dart';

class ImcResultScreen extends StatelessWidget {
  final int age;
  final int weight;
  final double height;
  final bool isMale;

  const ImcResultScreen({
    super.key,
    required this.age,
    required this.weight,
    required this.height,
    required this.isMale,
  });

  @override
  Widget build(BuildContext context) {
    double imcResult = weight / ((height / 100) * (height / 100));
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: toolbarResult(),
      body: bodyResult(imcResult, context),
    );
  }

  Padding bodyResult(double imcResult, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Tu resultado",
            style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 24, bottom: 40, left: 16, right: 16),
              width: double.infinity,

              decoration: BoxDecoration(
                color: AppColors.secondary,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Text(
                "Tu IMC es: ${imcResult.toStringAsFixed(2)}",
                style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            height: 60,
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ButtonStyle(
                shape: WidgetStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                backgroundColor: WidgetStateProperty.all(AppColors.primary),
              ),
              child: Text("FINALIZAR", style: TextStyle(color: Colors.white)),
            ),
          ),
        ],
      ),
    );
  }

  AppBar toolbarResult() {
    return AppBar(
      centerTitle: false,
      title: Text("Resultado IMC"),
      backgroundColor: AppColors.primary,
      foregroundColor: AppColors.backgroundComponent,
    );
  }
}
