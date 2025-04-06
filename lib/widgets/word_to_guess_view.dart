import 'package:flutter/material.dart';
import 'package:flutter_podstawy_utilities/constants/dimens.dart';

class WordToGuessView extends StatelessWidget {
  const WordToGuessView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
        top: Dimens.hugeMargin,
        bottom: Dimens.normalMargin,
      ),
      child: Column(
        children: [
          //Title
          // Word to guess widget
          // Game goal widget
        ],
      ),
    );
  }
}
