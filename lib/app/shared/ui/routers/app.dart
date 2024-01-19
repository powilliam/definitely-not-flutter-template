import 'package:auto_route/auto_route.dart';
import 'package:flutter_template/app/splash/splash.dart';
import 'package:flutter_template/app/auth/auth.dart';

part 'app.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes {
    return [
      SplashScreen.route,
      SignInScreen.route,
      SignUpScreen.route,
    ];
  }
}
