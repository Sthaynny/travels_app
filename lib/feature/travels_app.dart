import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TravelsApp extends StatefulWidget {
  const TravelsApp({Key? key}) : super(key: key);

  @override
  State<TravelsApp> createState() => _TravelsAppState();
}

class _TravelsAppState extends State<TravelsApp> {
  late final GoRouter _router;

  @override
  void initState() {
    _router = GoRouter(
      routes: const [],
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
    );
  }
}
