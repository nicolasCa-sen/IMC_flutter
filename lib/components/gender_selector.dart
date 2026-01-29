import 'package:flutter/material.dart';
import 'package:imc_calculator/core/app_colors.dart';
import 'package:imc_calculator/core/text_styles.dart';

class GenderSelector extends StatefulWidget {
  const GenderSelector({super.key});

  @override
  State<GenderSelector> createState() => _GenderSelectorState();
}

class _GenderSelectorState extends State<GenderSelector> {
  String? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //Hombre
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedGender = "Hombre";
              });
            },
            child: Padding(
              padding: const EdgeInsets.only(
                top: 16.0,
                left: 16,
                bottom: 16,
                right: 8,
              ),
              child: Container(
                padding: EdgeInsets.all(0),
                decoration: BoxDecoration(
                  color: selectedGender == "Hombre"
                      ? AppColors.backgroundComponentSelected
                      : AppColors.backgroundComponent,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      Icon(Icons.boy_outlined, size: 100),
                      SizedBox(height: 8),
                      Text("Hombre".toUpperCase(), style: TextStyles.bodyText),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        //Mujer
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedGender = "Mujer";
              });
            },
            child: Padding(
              padding: const EdgeInsets.only(
                top: 16,
                left: 8,
                bottom: 16,
                right: 16,
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: selectedGender == "Mujer"
                      ? AppColors.backgroundComponentSelected
                      : AppColors.backgroundComponent,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      Icon(Icons.girl_outlined, size: 100),
                      SizedBox(height: 8),
                      Text("Mujer".toUpperCase(), style: TextStyles.bodyText),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
