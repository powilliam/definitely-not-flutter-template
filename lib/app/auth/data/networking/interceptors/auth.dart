import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_template/app/auth/auth.dart';

class AuthInterceptor extends Interceptor {
  const AuthInterceptor();

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final authorization = GetIt.instance<FlutterSecureStorage>().read(key: kAuthorizationTokenKey);

    return handler.next(
      options.copyWith(
        headers: {
          ...options.headers,
          'Authorization': authorization,
        },
      ),
    );
  }
}
