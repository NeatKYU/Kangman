import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PlayScreen extends StatelessWidget {
  const PlayScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
    );
  }
}
