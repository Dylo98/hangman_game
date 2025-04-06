import 'package:flutter/material.dart';
import 'package:hangman_game/widgets/hangman.dart';
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
    return const Column(
      children: [
        WordToGuessView(),
        Hangman(),
      ],
    );
  }
}
