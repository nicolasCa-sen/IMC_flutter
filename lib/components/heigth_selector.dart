import 'package:flutter/material.dart';
import 'package:imc_calculator/core/app_colors.dart';

class HeigthSelector extends StatefulWidget {
  final double selectedHeight;
  final Function(double) onHeightChanged;
  const HeigthSelector({
    super.key,
    required this.selectedHeight,
    required this.onHeightChanged,
  });

  @override
  State<HeigthSelector> createState() => _HeigthSelectorState();
}

class _HeigthSelectorState extends State<HeigthSelector> {
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
            "${widget.selectedHeight.toStringAsFixed(0)} Cm",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Slider(
            value: widget.selectedHeight,
            onChanged: (newValue) {
              widget.onHeightChanged(newValue);
            },
            min: 100,
            max: 220,
            activeColor: AppColors.primary,
            divisions: 150,
            label: "${widget.selectedHeight.toStringAsFixed(0)}",
          ),
        ],
      ),
    );
  }
}
