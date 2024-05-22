import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Color color;
  final Color textColor;
  final String buttonText;
  final buttonTapped;
  const MyButton({
    super.key,
    required this.color,
    required this.textColor,
    required this.buttonText,
    this.buttonTapped,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttonTapped,
      child: Padding(
        padding: const EdgeInsets.all(7.0),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color,
          ),
          child: Center(
            child: Text(
              buttonText,
              style: TextStyle(color: textColor, fontSize: 34),
            ),
          ),
        ),
      ),
    );
  }
}
