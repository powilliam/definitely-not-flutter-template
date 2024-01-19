sealed class AuthEvent {
  const AuthEvent();
}

class AuthSignedInAccountRequested extends AuthEvent {
  const AuthSignedInAccountRequested();
}

class AuthSignInRequested extends AuthEvent {
  const AuthSignInRequested();
}

class AuthSignUpRequested extends AuthEvent {
  const AuthSignUpRequested();
}

class AuthSignOutRequested extends AuthEvent {
  const AuthSignOutRequested();
}
