import 'package:extended_image/extended_image.dart';
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
    int _helthCount = context.read<GmProvider>().helthCount;

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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
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
                  Text(
                    context.read<GmProvider>().totalScore.toString(),
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ],
              ),
            ),

            // 단어 위치
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.blueGrey,
              ),
              width: double.infinity,
              height: 80,
              child: Word(word: context.read<GmProvider>().quizWord),
              // TODO test용도
              // child: Word(word: 'test'),
            ),
            const SizedBox(
              height: 10,
            ),
            // 행맨 그림 위치
            SizedBox(
              width: double.infinity,
              height: 300,
              child: Center(
                child: Stack(
                  children: [
                    ExtendedImage.asset('assets/img/hang.png'),
                    if (_helthCount <= 5)
                      ExtendedImage.asset('assets/img/head.png'),
                    if (_helthCount <= 4)
                      ExtendedImage.asset('assets/img/body.png'),
                    if (_helthCount <= 3)
                      ExtendedImage.asset('assets/img/leftArm.png'),
                    if (_helthCount <= 2)
                      ExtendedImage.asset('assets/img/rightArm.png'),
                    if (_helthCount <= 1)
                      ExtendedImage.asset('assets/img/leftFoot.png'),
                  ],
                ),
              ),
            ),
            // 알파벳 위치
            Expanded(
              child: SizedBox(
                width: double.infinity,
                child: GridView.builder(
                  itemCount: _alpabet.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
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
      ),
    );
  }

}
