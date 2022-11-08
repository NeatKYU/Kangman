import 'package:flutter/material.dart';
import 'package:kangman/providers/word_provider.dart';
import 'package:provider/provider.dart';

class Word extends StatelessWidget {
  final String word;
  const Word({super.key, required this.word});

  @override
  Widget build(BuildContext context) {
    List<String> _wordList = word.split('');
    final List<String> _pWordList = context.watch<WordProvider>().wordList;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: List.generate(_wordList.length, (index) {
        return Text(
          _pWordList.contains(_wordList[index]) ? _wordList[index] : '_',
          style:
              Theme.of(context).textTheme.titleMedium?.copyWith(fontSize: 50),
        );
      }),
    );
  }
}
