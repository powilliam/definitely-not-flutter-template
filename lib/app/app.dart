import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/app/auth/auth.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_template/app/shared/shared.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (context) => GetIt.instance<AuthBloc>(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: GetIt.instance<AppRouter>().config(),
        theme: lightTheme(),
        darkTheme: darkTheme(),
      ),
    );
  }
}
