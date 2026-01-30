import 'package:flutter/material.dart';
import 'package:imc_calculator/components/gender_selector.dart';
import 'package:imc_calculator/components/heigth_selector.dart';
import 'package:imc_calculator/components/number_selector.dart';

class ImcHomeScreen extends StatefulWidget {
  const ImcHomeScreen({super.key});

  @override
  State<ImcHomeScreen> createState() => _ImcHomeScreenState();
}

class _ImcHomeScreenState extends State<ImcHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        GenderSelector(),
        HeigthSelector(),
        Row(
          children: [
            NumberSelector(title: "Peso"),
            NumberSelector(title: "Edad"),
          ],
        ),
      ],
    );
  }
}
