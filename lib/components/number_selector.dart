import 'package:flutter/material.dart';
import 'package:imc_calculator/core/app_colors.dart';

class NumberSelector extends StatefulWidget {
  final String title;

  const NumberSelector({super.key, required this.title});

  @override
  State<NumberSelector> createState() => _NumberSelectorState();
}

class _NumberSelectorState extends State<NumberSelector> {
  int value = 0;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.backgroundComponent,
          borderRadius: BorderRadius.circular(10),
        ),
        padding: EdgeInsets.all(16),
        margin: EdgeInsets.all(16),
        child: Column(
          children: [
            Text(widget.title, style: TextStyle(fontSize: 20)),
            Text("$value"),
            Row(
              children: [
                Spacer(),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      value--;
                      if (value < 0) {
                        value = 0;
                      }
                    });
                  },
                  shape: CircleBorder(),
                  backgroundColor: AppColors.primary,
                  child: Text("-", style: TextStyle(color: Colors.white)),
                ),
                Spacer(),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      value++;
                    });
                  },
                  shape: CircleBorder(),
                  backgroundColor: AppColors.primary,
                  child: Text("+", style: TextStyle(color: Colors.white)),
                ),
                Spacer(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
