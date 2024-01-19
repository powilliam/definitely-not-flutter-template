import 'package:flutter_template/app/auth/auth.dart';

sealed class AuthEvent {
  const AuthEvent();
}

class AuthSignedInAccountRequested extends AuthEvent {
  const AuthSignedInAccountRequested();
}

class AuthSignInRequested extends AuthEvent {
  final SignInDTO dto;

  const AuthSignInRequested(this.dto);
}

class AuthSignUpRequested extends AuthEvent {
  final SignUpDTO dto;

  const AuthSignUpRequested(this.dto);
}

class AuthSignOutRequested extends AuthEvent {
  final SignOutDTO dto;

  const AuthSignOutRequested(this.dto);
}
