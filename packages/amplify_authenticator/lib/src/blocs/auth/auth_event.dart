part of 'auth_bloc.dart';

abstract class AuthEvent {
  const AuthEvent();
}

class AuthLoad extends AuthEvent {
  const AuthLoad();
}

class GetCurrentUser extends AuthEvent {
  GetCurrentUser();
}

class AuthChangeScreen extends AuthEvent {
  ///Event data
  final AuthScreen screen;

  const AuthChangeScreen(this.screen);
}

class AuthSignIn extends AuthEvent {
  ///Event data
  final AuthSignInData data;

  const AuthSignIn(this.data);
}

class AuthSignUp extends AuthEvent {
  ///Event data
  final AuthSignUpData data;

  const AuthSignUp(this.data);
}

class AuthConfirmSignUp extends AuthEvent {
  ///Event data
  final AuthConfirmSignUpData data;

  const AuthConfirmSignUp(this.data);
}

class AuthConfirmSignIn extends AuthEvent {
  ///Event data
  final AuthConfirmSignInData data;

  const AuthConfirmSignIn(this.data);
}

class AuthSignOut extends AuthEvent {
  const AuthSignOut();
}
