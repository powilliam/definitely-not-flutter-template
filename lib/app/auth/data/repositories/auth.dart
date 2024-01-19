import 'package:get_it/get_it.dart';
import 'package:flutter_template/app/auth/auth.dart';

sealed class AuthRepository {
  Future<Account> getSignedInAccount();
  Future<Account> signIn();
  Future<Account> signUp();
  Future<void> signOut();
}

class AuthRepositoryImpl implements AuthRepository {
  final AuthLocalDataSource _localDataSource = GetIt.instance<AuthLocalDataSource>();
  final AuthRemoteDataSource _remoteDataSource = GetIt.instance<AuthRemoteDataSource>();

  AuthRepositoryImpl();

  @override
  Future<Account> getSignedInAccount() {
    // TODO: implement getSignedInAccount
    throw UnimplementedError();
  }

  @override
  Future<Account> signIn() {
    // TODO: implement signIn
    throw UnimplementedError();
  }

  @override
  Future<void> signOut() {
    // TODO: implement signOut
    throw UnimplementedError();
  }

  @override
  Future<Account> signUp() {
    // TODO: implement signUp
    throw UnimplementedError();
  }
}
