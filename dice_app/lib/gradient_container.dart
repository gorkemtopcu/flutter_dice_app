import 'package:dice_app/dice_roller.dart';
import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.primaryColor, this.secondaryColor, {super.key});
  const GradientContainer.base({super.key})
      : primaryColor = const Color.fromARGB(255, 185, 69, 255),
        secondaryColor = const Color.fromARGB(255, 70, 193, 246);

  final Color primaryColor;
  final Color secondaryColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: startAlignment,
          end: endAlignment,
          colors: [primaryColor, secondaryColor],
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
