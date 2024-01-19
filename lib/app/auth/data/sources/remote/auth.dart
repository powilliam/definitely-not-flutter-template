import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

sealed class AuthRemoteDataSource {
  Future<Map<String, dynamic>> getSignedInAccount();
  Future<Map<String, dynamic>> signIn();
  Future<Map<String, dynamic>> signUp();
  Future<void> signOut();
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  const AuthRemoteDataSourceImpl();

  @override
  Future<Map<String, dynamic>> getSignedInAccount() {
    GetIt.instance<Dio>(instanceName: 'client');

    // TODO: implement getSignedInAccount
    throw UnimplementedError();
  }

  @override
  Future<Map<String, dynamic>> signIn() {
    GetIt.instance<Dio>(instanceName: 'client');
    // TODO: implement signIn
    throw UnimplementedError();
  }

  @override
  Future<void> signOut() {
    GetIt.instance<Dio>(instanceName: 'client');

    // TODO: implement signOut
    throw UnimplementedError();
  }

  @override
  Future<Map<String, dynamic>> signUp() {
    GetIt.instance<Dio>(instanceName: 'client');

    // TODO: implement signUp
    throw UnimplementedError();
  }
}
