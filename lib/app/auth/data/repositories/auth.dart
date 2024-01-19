import 'package:get_it/get_it.dart';
import 'package:flutter_template/app/auth/auth.dart';

sealed class AuthRepository {
  Future<Account> getSignedInAccount();
  Future<Account> signIn();
  Future<Account> signUp();
  Future<void> signOut();
}

class AuthRepositoryImpl implements AuthRepository {
  const AuthRepositoryImpl();

  @override
  Future<Account> getSignedInAccount() {
    GetIt.instance<AuthLocalDataSource>();
    GetIt.instance<AuthRemoteDataSource>();
    // TODO: implement getSignedInAccount
    throw UnimplementedError();
  }

  @override
  Future<Account> signIn() {
    GetIt.instance<AuthLocalDataSource>();
    GetIt.instance<AuthRemoteDataSource>();
    // TODO: implement signIn
    throw UnimplementedError();
  }

  @override
  Future<void> signOut() {
    GetIt.instance<AuthLocalDataSource>();
    GetIt.instance<AuthRemoteDataSource>();
    // TODO: implement signOut
    throw UnimplementedError();
  }

  @override
  Future<Account> signUp() {
    GetIt.instance<AuthLocalDataSource>();
    GetIt.instance<AuthRemoteDataSource>();
    // TODO: implement signUp
    throw UnimplementedError();
  }
}
