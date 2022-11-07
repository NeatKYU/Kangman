import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kangman/screens/play_screen.dart';
import 'package:kangman/screens/start_screen.dart';

import '../screens/rank_screen.dart';

class CustomRouter extends StatelessWidget {
  CustomRouter({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'kang man',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: Color.fromARGB(210, 44, 44, 44),
          appBarTheme: AppBarTheme(
            backgroundColor: Color.fromARGB(210, 36, 36, 36),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              textStyle: TextStyle(
                fontSize: 30,
                color: Colors.black87,
              ),
            ),
          ),
          textTheme: TextTheme(
            titleMedium: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          )),
      routeInformationProvider: _router.routeInformationProvider,
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
    );
  }

  late final GoRouter _router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return StartScreen();
        },
        routes: [
          GoRoute(
            path: 'rank',
            builder: (BuildContext context, GoRouterState state) {
              return RankScreen();
            },
          ),
          GoRoute(
            path: 'play',
            builder: (BuildContext context, GoRouterState state) {
              return PlayScreen();
            },
          ),
        ],
      ),
      // GoRoute(
      //   path: '/rank',
      //   builder: (BuildContext context, GoRouterState state) {
      //     return RankScreen();
      //   },
      // )
    ],
  );
}
