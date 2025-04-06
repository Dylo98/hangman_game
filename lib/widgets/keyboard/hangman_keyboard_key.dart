import 'package:flutter/material.dart';
import 'package:flutter_podstawy_utilities/colors/my_colors.dart';

class HangmanKeyboardKey extends StatelessWidget {
  const HangmanKeyboardKey({
    super.key,
    required this.letter,
    required this.width,
  });

  final String letter;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: _buildKeyContent(),
    );
  }

  Widget _buildKeyContent() {
    return Container(
      decoration: BoxDecoration(
        color: MyColors.onahau,
        borderRadius: BorderRadius.all(
          Radius.circular(5.0),
        ),
      ),
      child: Center(
        child: Text(
          letter.toUpperCase(),
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: MyColors.darkCharcoal,
          ),
        ),
      ),
    );
  }
}
