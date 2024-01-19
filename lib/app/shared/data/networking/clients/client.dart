import 'package:dio/dio.dart';
import 'package:flutter_template/app/auth/auth.dart';

final clientOptions = BaseOptions();
final client = Dio(clientOptions)..interceptors.addAll([const AuthInterceptor()]);
