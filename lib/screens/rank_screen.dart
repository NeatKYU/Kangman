import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RankScreen extends StatelessWidget {
  const RankScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ranking'),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.home),
          onPressed: () {
            GoRouter.of(context).go('/');
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: ListView.builder(
          itemBuilder: (context, index) {
            return index == 0 ? ListTile(
              leading: Text(
                'rank',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              title: Text(
                'date',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              trailing: Text(
                'score',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ) : ListTile(
              leading: Text(
                index.toString(),
                style: Theme.of(context).textTheme.titleMedium,
              ),
              title: Text(
                'hi',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              trailing: Text(
                '12',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            );
          },
          itemCount: 20,
          // children: [
          //   Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: [
          //       Text('rank', style: Theme.of(context).textTheme.titleMedium),
          //       Text('date', style: Theme.of(context).textTheme.titleMedium),
          //       Text('score', style: Theme.of(context).textTheme.titleMedium),
          //     ],
          //   ),
          //   ListTile(
          //     leading: Text('1'),
          //     title: Center(child: Text('hi')),
          //     trailing: Text('12'),
          //   )
          // ],
        ),
      ),
    );
  }
}
