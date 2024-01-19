import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/app/auth/auth.dart';
import 'package:flutter_template/app/shared/shared.dart';

@RoutePage()
class SignInScreen extends StatelessWidget {
  static AutoRoute get route => AutoRoute(page: SignInRoute.page);

  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            BlocConsumer<AuthBloc, AuthState>(
              listener: (context, state) {
                if (state.account != null) {
                  context.replaceRoute(const SplashRoute());
                }
              },
              builder: (context, state) => FilledButton.tonal(
                onPressed: () => context.read<AuthBloc>().add(const AuthSignInRequested()),
                child: AnimatedSwitcher(
                  duration: const Duration(milliseconds: 170),
                  child: state.isSignIn ? const CircularProgressIndicator() : const Text('SignIn'),
                ),
              ),
            ),
            const SizedBox(height: 16),
            FilledButton.tonal(
              onPressed: () => context.pushRoute(const SignUpRoute()),
              child: const Text('SignUp'),
            ),
          ],
        ),
      ),
    );
  }
}
