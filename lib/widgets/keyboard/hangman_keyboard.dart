import 'package:flutter/material.dart';
import 'package:flutter_podstawy_utilities/constants/dimens.dart';
import 'package:flutter_podstawy_utilities/wisielec/wisielec_constans.dart';
import 'package:hangman_game/widgets/keyboard/hangman_keyboard_key.dart';

class HangmanKeyboard extends StatelessWidget {
  const HangmanKeyboard({super.key});
  static const double spacing = 6;

  double _calculateItemWidth(BuildContext context) {
    final maxLettersInRow = keyboardLetters.first.length;
    final spacingSumWidth = spacing * maxLettersInRow;
    final availableWidth = MediaQuery.of(context).size.width - spacingSumWidth;
    return availableWidth / maxLettersInRow;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: Dimens.bigMargin,
        bottom: Dimens.hugeMargin,
      ),
      child: Column(
        children: keyboardLetters.map(
          (String keysRow) {
            var lettersInRow = keysRow.split('');
            return _buildKeyboardRow(lettersInRow, context);
          },
        ).toList(),
      ),
    );
  }

  Widget _buildKeyboardKey(String letter, double itemWidth) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: spacing / 2),
      child: HangmanKeyboardKey(letter: letter, width: itemWidth),
    );
  }

  Widget _buildKeyboardRow(List<String> letters, BuildContext context) {
    final itemWidth = _calculateItemWidth(context);
    return Padding(
      padding: const EdgeInsets.only(top: Dimens.normalMargin),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: letters
            .map((letter) => _buildKeyboardKey(letter, itemWidth))
            .toList(),
      ),
    );
  }
}
