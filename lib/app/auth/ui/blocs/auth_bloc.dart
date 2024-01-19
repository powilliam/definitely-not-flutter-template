import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/app/auth/auth.dart';
import 'package:get_it/get_it.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository _repository = GetIt.instance<AuthRepository>();

  AuthBloc() : super(const AuthState()) {
    on<AuthSignedInAccountRequested>((event, emit) => null);
    on<AuthSignInRequested>(_onAuthSignInRequested);
    on<AuthSignUpRequested>((event, emit) => null);
    on<AuthSignOutRequested>((event, emit) => null);
  }

  Future<void> _onAuthSignInRequested(
    AuthSignInRequested event,
    Emitter<AuthState> emit,
  ) async {
    emit(
      state.copyWith(
        isSignIn: true,
        hasFailedToSignIn: false,
      ),
    );

    await Future.delayed(const Duration(seconds: 3));

    emit(
      state.copyWith(
        isSignIn: false,
        account: const Account(id: 'random-id'),
      ),
    );
  }
}
