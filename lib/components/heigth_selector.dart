import 'package:flutter/material.dart';
import 'package:imc_calculator/core/app_colors.dart';

class HeigthSelector extends StatefulWidget {
  const HeigthSelector({super.key});

  @override
  State<HeigthSelector> createState() => _HeigthSelectorState();
}

class _HeigthSelectorState extends State<HeigthSelector> {
  double heigth = 170; //altura incial
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16, right: 16),
      padding: EdgeInsets.only(top: 16, bottom: 16),
      decoration: BoxDecoration(
        color: AppColors.backgroundComponent,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Text("Altura".toUpperCase(), style: TextStyle(fontSize: 30)),
          Text(
            "${heigth.toStringAsFixed(0)} Cm",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Slider(
            value: heigth,
            onChanged: (value) {
              setState(() {
                heigth = value;
              });
            },
            min: 100,
            max: 220,
            activeColor: AppColors.primary,
            divisions: 150,
            label: "${heigth.toStringAsFixed(0)}",
          ),
        ],
      ),
    );
  }
}
