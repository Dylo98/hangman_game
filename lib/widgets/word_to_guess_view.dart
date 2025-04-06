import 'package:flutter/material.dart';
import 'package:flutter_podstawy_utilities/colors/my_colors.dart';
import 'package:flutter_podstawy_utilities/constants/dimens.dart';
import 'package:hangman_game/widgets/hangman_title.dart';

class WordToGuessView extends StatelessWidget {
  const WordToGuessView(
    this.wordToGuess, {
    super.key,
  });
  static const double spacing = 6;
  final String wordToGuess;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: Dimens.hugeMargin,
        bottom: Dimens.normalMargin,
      ),
      child: Column(
        children: [
          HangmanTitle(),
          _buildWord(),
          // Game goal widget
        ],
      ),
    );
  }

  Widget _buildWord() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: wordToGuess.split('').map((letter) {
        return _buildLetter(letter);
      }).toList(),
    );
  }

  Padding _buildLetter(String letter) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: spacing),
      child: Text(
        letter.toUpperCase(),
        style: const TextStyle(
          color: MyColors.ufoGreen,
          fontWeight: FontWeight.bold,
          fontSize: 40,
        ),
      ),
    );
  }
}
