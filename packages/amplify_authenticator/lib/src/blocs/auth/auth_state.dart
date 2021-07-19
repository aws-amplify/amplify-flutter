part of 'auth_bloc.dart';

///Auth State
abstract class AuthState {
  /// Auth State Constructor
  const AuthState();
}

///Initial State
class AuthInitial extends AuthState {
  ///Initial State Constructor
  const AuthInitial();
}

/// Loading State
class AuthLoading extends AuthState {
  /// Loading Constructor
  const AuthLoading();
}

///Authenticated

class Authenticated extends AuthState {
  ///Authenticated constructor
  const Authenticated();
}

///Auth Flow
class AuthFlow extends AuthState {
  ///Auth flow screen
  final AuthScreen? screen;

  /// Auth Flow Constructor
  AuthFlow({this.screen});
}
