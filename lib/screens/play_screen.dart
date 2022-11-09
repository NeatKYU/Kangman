import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kangman/providers/gm_provider.dart';
import 'package:kangman/widgets/alpabet_button.dart';
import 'package:kangman/widgets/word.dart';
import 'package:provider/provider.dart';

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
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              // 현재 상태 인터페이스 공간
              SizedBox(
                width: double.infinity,
                height: 50,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: List.generate(
                    context.watch<GmProvider>().helthCount,
                    (index) {
                      return const Icon(
                        Icons.favorite,
                        color: Colors.white,
                      );
                    },
                  ),
                ),
              ),
              // 행맨 그림 위치
              Container(
                color: Colors.blueGrey,
              ),

              // 단어 위치
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.blueGrey,
                ),
                width: double.infinity,
                height: 100,
                child: Word(word: 'test'),
              ),
              const SizedBox(
                height: 10,
              ),
              // 알파벳 위치
              Expanded(
                child: SizedBox(
                  width: double.infinity,
                  child: GridView.builder(
                    itemCount: _alpabet.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 7,
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
          ),
        ));
  }
}
