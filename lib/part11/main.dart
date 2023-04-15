import 'package:flutter/material.dart';
import 'package:flutter_note/part11/page_a.dart';
import 'package:flutter_note/part11/page_b.dart';
import 'package:flutter_note/part11/page_c.dart';
import 'package:go_router/go_router.dart';

main() {
  final app = App();
  runApp(app);
}

// アプリ全体
class App extends StatelessWidget {
  App({Key? key}) : super(key: key);

  final router = GoRouter(
    // パス (アプリが起動したとき)
    initialLocation: '/a',
    // パスと画面の組み合わせ
    routes: [
      GoRoute(
        path: '/a',
        builder: (context, state) => PageA(),
      ),
      GoRoute(
        path: '/b',
        builder: (context, state) => PageB(),
      ),
      GoRoute(
        path: '/c',
        builder: (context, state) => PageC(),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationProvider: router.routeInformationProvider,
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
    );
  }
}
