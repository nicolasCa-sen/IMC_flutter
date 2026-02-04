import 'package:flutter/material.dart';
import 'package:imc_calculator/components/gender_selector.dart';
import 'package:imc_calculator/components/heigth_selector.dart';
import 'package:imc_calculator/components/number_selector.dart';
import 'package:imc_calculator/core/app_colors.dart';

class ImcHomeScreen extends StatefulWidget {
  const ImcHomeScreen({super.key});

  @override
  State<ImcHomeScreen> createState() => _ImcHomeScreenState();
}

class _ImcHomeScreenState extends State<ImcHomeScreen> {
  int selectedAge = 30;
  int selectedWeight = 80;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        GenderSelector(),
        HeigthSelector(),
        Row(
          children: [
            NumberSelector(
              title: "Peso",
              value: selectedWeight,
              onIncrement: () {
                setState(() {
                  selectedWeight++;
                });
              },
              onDecrement: () {
                setState(() {
                  selectedWeight--;
                });
              },
            ),
            NumberSelector(
              title: "Edad",
              value: selectedAge,
              onIncrement: () {
                setState(() {
                  selectedAge++;
                });
              },
              onDecrement: () {
                setState(() {
                  selectedAge--;
                });
              },
            ),
          ],
        ),
        Spacer(),
        SizedBox(
          height: 60,
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              shape: WidgetStateProperty.all(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              ),
              backgroundColor: WidgetStateProperty.all(AppColors.primary),
            ),
            child: Text("CALCULAR", style: TextStyle(color: Colors.white)),
          ),
        ),
      ],
    );
  }
}
