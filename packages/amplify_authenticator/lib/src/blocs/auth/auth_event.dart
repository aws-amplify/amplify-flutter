part of 'auth_bloc.dart';

/// Event
abstract class AuthEvent {
  ///Constructor
  const AuthEvent();
}

/// Event
class AuthLoad extends AuthEvent {
  ///Constructor
  const AuthLoad();
}

/// Event
class GetCurrentUser extends AuthEvent {
  ///Constructor
  GetCurrentUser();
}

/// Event
class AuthChangeScreen extends AuthEvent {
  ///Event data
  final AuthScreen screen;

  ///Constructor

  const AuthChangeScreen(this.screen);
}

/// Event
class AuthSignIn extends AuthEvent {
  ///Event data
  final AuthData data;

  ///Constructor
  const AuthSignIn(this.data);
}

/// Event
class AuthSignUp extends AuthEvent {
  ///Event data
  final AuthSignUpData data;

  ///Constructor
  const AuthSignUp(this.data);
}

/// Event
class AuthConfirmSignUp extends AuthEvent {
  ///Event data
  final AuthConfirmSignUpData data;

  ///Constructor
  const AuthConfirmSignUp(this.data);
}

/// Event
class AuthSignOut extends AuthEvent {
  ///Constructor
  const AuthSignOut();
}
