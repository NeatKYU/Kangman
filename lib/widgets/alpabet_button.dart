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
  bool _disable = false;

  @override
  Widget build(BuildContext context) {
    GmProvider gameManager = context.read<GmProvider>();
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        backgroundColor: Colors.blueGrey,
        disabledBackgroundColor: Colors.grey,
      ),
      onPressed: _disable
          ? null
          : () {
              gameManager.setWordList(widget.label);
              if (!gameManager.quizWord.contains(widget.label)) {
                gameManager.downHelthCount();
              }
              if (gameManager.helthCount < 1) {
                GoRouter.of(context).go('/over');
              }
              setState(() {
                _disable = true;
              });
            },
      child: Center(
        child: Text(
          widget.label,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
              fontSize: 30, color: _disable ? Colors.black : Colors.white),
        ),
      ),
    );
  }
}
