import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_template/app/auth/data/entities/account.dart';

part 'auth_state.g.dart';

@CopyWith()
class AuthState extends Equatable {
  final bool isGettingLatestSignedInAccount;
  final bool isSignIn;
  final bool isSignUp;
  final bool isSignOut;

  final bool hasFailedToSignIn;
  final bool hasFailedToSignUp;

  final String? signInErrorMessage;
  final String? signUpErrorMessage;

  final Account? account;

  const AuthState({
    this.isGettingLatestSignedInAccount = false,
    this.isSignIn = false,
    this.isSignUp = false,
    this.isSignOut = false,
    this.hasFailedToSignIn = false,
    this.hasFailedToSignUp = false,
    this.signInErrorMessage,
    this.signUpErrorMessage,
    this.account,
  });

  @override
  List<Object?> get props {
    return [
      isGettingLatestSignedInAccount,
      isSignIn,
      isSignUp,
      isSignOut,
      hasFailedToSignIn,
      hasFailedToSignUp,
      signInErrorMessage,
      signUpErrorMessage,
      account,
    ];
  }
}
