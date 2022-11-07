import 'package:flutter/material.dart';

class Word extends StatelessWidget {
  final String word;
  const Word({super.key, required this.word});

  @override
  Widget build(BuildContext context) {
    List<String> _wordList = word.split('');
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: List.generate(_wordList.length, (index) {
        return Text(
          _wordList[index],
          style:
              Theme.of(context).textTheme.titleMedium?.copyWith(fontSize: 50),
        );
      }),
    );
  }
}
