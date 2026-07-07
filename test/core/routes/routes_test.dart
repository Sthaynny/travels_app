import 'package:flutter_test/flutter_test.dart';
import 'package:travels_app/core/routes/routes.dart';

void main() {
  group('AppRouters', () {
    test('splash route path is root', () {
      expect(AppRouters.splash.rota, '/');
      expect(AppRouters.splash.name, 'splash');
    });

    test('home route path is /home', () {
      expect(AppRouters.home.rota, '/home');
      expect(AppRouters.home.name, 'home');
    });
  });
}
