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

  AuthFlow({required this.screen});
}

// TODO: VerifyUserState is a unique state
// because it requires initial data
//
// alternatively, this data can be passed between screen in another way
//
// if this approach is taken, all screens should probably be unique states
// for consistecy
class VerifyUserState extends AuthFlow {
  final VerifyUserStateData data;

  VerifyUserState({required this.data}) : super(screen: AuthScreen.verifyUser);
}

class VerifyUserStateData {
  final List<String> unverifiedAttributeKeys;

  VerifyUserStateData({required this.unverifiedAttributeKeys});
}
