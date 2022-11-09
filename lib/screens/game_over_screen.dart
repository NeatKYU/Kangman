import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kangman/providers/gm_provider.dart';
import 'package:provider/provider.dart';

class GameOverScreen extends StatelessWidget {
  const GameOverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Game Over!!'),
            OutlinedButton(
              onPressed: () {
                context.read<GmProvider>().initData();
                GoRouter.of(context).go('/play');
              },
              child: Text('retry'),
            ),
          ],
        ),
      ),
    );
  }
}
