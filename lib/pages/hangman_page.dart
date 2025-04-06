import 'package:flutter/material.dart';
import 'package:hangman_game/widgets/hangman.dart';
import 'package:hangman_game/widgets/keyboard/hangman_keyboard.dart';
import 'package:hangman_game/widgets/word_to_guess_view.dart';

class HangmanPage extends StatelessWidget {
  const HangmanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _buildContent(context),
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: const WordToGuessView("Has_l_"),
        ),
        Expanded(
          flex: 2,
          child: Hangman(),
        ),
        HangmanKeyboard()
      ],
    );
  }
}
