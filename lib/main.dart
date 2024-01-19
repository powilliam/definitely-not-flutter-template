import 'package:flutter/material.dart';
import 'package:flutter_template/app/app.dart';
import 'package:flutter_template/app/auth/auth.dart';
import 'package:flutter_template/app/shared/shared.dart';
import 'package:get_it/get_it.dart';

void main([List<String> args = const []]) {
  WidgetsFlutterBinding.ensureInitialized();
  GetIt.instance
    ..registerSingleton<AppRouter>(
      AppRouter(),
      dispose: (router) => router.dispose(),
    )
    ..registerSingleton<AuthLocalDataSource>(AuthLocalDataSourceImpl())
    ..registerSingleton<AuthRemoteDataSource>(AuthRemoteDataSourceImpl())
    ..registerSingleton<AuthRepository>(AuthRepositoryImpl())
    ..registerSingleton<AuthBloc>(AuthBloc(), dispose: (bloc) => bloc.close());
  runApp(const Application());
}
