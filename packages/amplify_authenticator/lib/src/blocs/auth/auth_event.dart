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
  final AuthScreen screen;

  const AuthChangeScreen(this.screen);
}

class AuthSignIn extends AuthEvent {
  //data (username, password, etc) coming from UI
  final AuthData data;

  const AuthSignIn(this.data);
}

class AuthSignUp extends AuthEvent {
  final AuthSignUpData data;

  const AuthSignUp(this.data);
}

class AuthConfirmSignUp extends AuthEvent {
  final AuthConfirmSignUpData data;

  const AuthConfirmSignUp(this.data);
}

class AuthSignOut extends AuthEvent {
  const AuthSignOut();
}
