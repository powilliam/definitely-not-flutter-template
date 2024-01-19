import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_template/app/shared/ui/routers/app.dart';

@RoutePage()
class SignUpScreen extends StatelessWidget {
  static AutoRoute get route => AutoRoute(page: SignUpRoute.page);

  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('SignUp Screen'),
      ),
    );
  }
}
