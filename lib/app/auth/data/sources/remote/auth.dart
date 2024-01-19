sealed class AuthRemoteDataSource {
  Future<Map<String, dynamic>> getSignedInAccount();
  Future<Map<String, dynamic>> signIn();
  Future<Map<String, dynamic>> signUp();
  Future<void> signOut();
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  @override
  Future<Map<String, dynamic>> getSignedInAccount() {
    // TODO: implement getSignedInAccount
    throw UnimplementedError();
  }

  @override
  Future<Map<String, dynamic>> signIn() {
    // TODO: implement signIn
    throw UnimplementedError();
  }

  @override
  Future<void> signOut() {
    // TODO: implement signOut
    throw UnimplementedError();
  }

  @override
  Future<Map<String, dynamic>> signUp() {
    // TODO: implement signUp
    throw UnimplementedError();
  }
}
