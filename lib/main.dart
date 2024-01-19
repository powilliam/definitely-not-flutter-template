import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_template/app/app.dart';
import 'package:flutter_template/app/auth/auth.dart';
import 'package:flutter_template/app/shared/shared.dart';
import 'package:get_it/get_it.dart';

void main([List<String> args = const []]) {
  WidgetsFlutterBinding.ensureInitialized();
  GetIt.instance
    ..registerSingleton<FlutterSecureStorage>(const FlutterSecureStorage())
    ..registerSingleton<Dio>(client, instanceName: 'client')
    ..registerSingleton<AppRouter>(AppRouter(), dispose: (router) => router.dispose())
    ..registerSingleton<AuthLocalDataSource>(const AuthLocalDataSourceImpl())
    ..registerSingleton<AuthRemoteDataSource>(const AuthRemoteDataSourceImpl())
    ..registerSingleton<AuthRepository>(const AuthRepositoryImpl())
    ..registerSingleton<AuthBloc>(AuthBloc(), dispose: (bloc) => bloc.close());
  runApp(const Application());
}
