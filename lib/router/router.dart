import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kangman/screens/play_screen.dart';
import 'package:kangman/screens/start_screen.dart';

class CustomRouter extends StatelessWidget {
  CustomRouter({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'kang man',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            textStyle: TextStyle(
              fontSize: 30,
              color: Colors.black87,
            ),
          ),
        ),
      ),
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
      ),
      GoRoute(
        path: '/play',
        builder: (BuildContext context, GoRouterState state) {
          return PlayScreen();
        },
      ),
    ],
  );
}
