import 'package:flutter/material.dart';
import 'package:imc_calculator/components/gender_selector.dart';
import 'package:imc_calculator/components/heigth_selector.dart';
import 'package:imc_calculator/components/number_selector.dart';
import 'package:imc_calculator/core/app_colors.dart';
import 'package:imc_calculator/screens/imc_result_screen.dart';

class ImcHomeScreen extends StatefulWidget {
  const ImcHomeScreen({super.key});

  @override
  State<ImcHomeScreen> createState() => _ImcHomeScreenState();
}

class _ImcHomeScreenState extends State<ImcHomeScreen> {
  int selectedAge = 30;
  int selectedWeight = 80;
  double selectedHeight = 180;
  bool isMale = true;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        GenderSelector(
          value: isMale,
          onChangedMale: () {
            setState(() {
              isMale = true;
            });
          },
          onChangedFemale: () {
            setState(() {
              isMale = false;
            });
          },
        ),
        HeigthSelector(
          selectedHeight: selectedHeight,
          onHeightChanged: (newHeight) {
            setState(() {
              selectedHeight = newHeight;
            });
          },
        ),
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
        Container(
          margin: EdgeInsets.only(top: 16, bottom: 16),
          padding: EdgeInsets.only(left: 16, right: 16),
          height: 60,
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ImcResultScreen(
                    age: selectedAge,
                    weight: selectedWeight,
                    height: selectedHeight,
                    isMale: isMale,
                  ),
                ),
              );
            },
            style: ButtonStyle(
              shape: WidgetStateProperty.all(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
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
