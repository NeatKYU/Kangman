import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kangman/providers/gm_provider.dart';
import 'package:provider/provider.dart';

class AlpbetButton extends StatefulWidget {
  final String label;
  const AlpbetButton({super.key, required this.label});

  @override
  State<AlpbetButton> createState() => _AlpbetButtonState();
}

class _AlpbetButtonState extends State<AlpbetButton> {
  @override
  Widget build(BuildContext context) {
    GmProvider gameManager = context.read<GmProvider>();
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        backgroundColor: Colors.blueGrey,
        disabledBackgroundColor: Colors.grey,
      ),
      onPressed: gameManager.wordSplitList.contains(widget.label)
          ? null
          : () {
              gameManager.setWordList(widget.label);

              print(gameManager.quizWord);

              if (!gameManager.quizWord.contains(widget.label)) {
                gameManager.downHelthCount();
              }

              if (gameManager.correctWord(gameManager.wordSplitList)) {
                print('correct');
                gameManager.nextStage();
                GoRouter.of(context).go('/play');
              }

              if (gameManager.helthCount < 1) {
                GoRouter.of(context).go('/over');
              }
            },
      child: Center(
        child: Text(
          widget.label,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
              fontSize: 30,
              color: gameManager.wordSplitList.contains(widget.label)
                  ? Colors.black
                  : Colors.white),
        ),
      ),
    );
  }
}
