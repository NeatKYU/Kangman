import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kangman/widgets/alpabet_button.dart';
import 'package:kangman/widgets/word.dart';

class PlayScreen extends StatelessWidget {
  const PlayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> _alpabet = [
      'a',
      'b',
      'c',
      'd',
      'e',
      'f',
      'g',
      'h',
      'i',
      'j',
      'k',
      'l',
      'm',
      'n',
      'o',
      'p',
      'q',
      'r',
      's',
      't',
      'u',
      'v',
      'w',
      'x',
      'y',
      'z'
    ];
    return Scaffold(
        appBar: AppBar(
          title: Text('play screen'),
          leading: IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              GoRouter.of(context).go('/');
            },
          ),
        ),
        body: Column(
          children: [
            // 행맨 그림 위치
            Container(
              color: Colors.blueGrey,
            ),

            // 단어 위치
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.blueGrey,
                ),
                width: double.infinity,
                height: 100,
                child: Word(word: 'test'),
              ),
            ),
            // 알파벳 위치

            Expanded(
              child: Container(
                width: double.infinity,
                child: GridView.builder(
                  itemCount: _alpabet.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 8,
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 5,
                  ),
                  itemBuilder: (context, index) {
                    return AlpbetButton(label: _alpabet[index]);
                  },
                ),
              ),
            )
          ],
        ));
  }
}
