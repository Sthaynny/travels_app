import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:travels_app/core/routes/routes.dart';
import 'package:travels_app/feature/home/home_screen.dart';
import 'package:travels_app/feature/splash/splash_screen.dart';

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
      routes: [
        GoRoute(
          path: AppRouters.splash.rota,
          builder: (context, state) => const SplashScreen(),
        ),
        GoRoute(
          name: AppRouters.home.rota,
          path: AppRouters.home.rota,
          builder: (context, state) => const HomeScreen(),
        )
      ],
      initialLocation: AppRouters.splash.rota,
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
