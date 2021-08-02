part of 'auth_bloc.dart';

abstract class AuthState {
  const AuthState();
}

class AuthInitial extends AuthState {
  const AuthInitial();
}

class AuthLoading extends AuthState {
  const AuthLoading();
}

class Authenticated extends AuthState {
  const Authenticated();
}

class AuthFlow extends AuthState {
  final AuthScreen screen;
  final SignInStep? signInStep;

  AuthFlow({required this.screen, this.signInStep});
}
