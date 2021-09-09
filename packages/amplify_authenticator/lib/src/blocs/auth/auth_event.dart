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
  final AuthSignInData data;

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

class AuthExceptionEvent extends AuthEvent {
  const AuthExceptionEvent();
}

class AuthSendCode extends AuthEvent {
  const AuthSendCode(this.data);

  final AuthSendCodeData data;
}

class AuthConfirmPassword extends AuthEvent {
  const AuthConfirmPassword(this.data);

  final AuthConfirmPasswordData data;
}

class AuthUpdatePassword extends AuthEvent {
  const AuthUpdatePassword(this.data);

  final AuthUpdatePasswordData data;
}

class AuthConfirmSignIn extends AuthEvent {
  final AuthConfirmSignInData data;

  const AuthConfirmSignIn(this.data);
}

class AuthSetUnverifiedAttributeKeys extends AuthEvent {
  final AuthSetUnverifiedAttributeKeysData data;

  const AuthSetUnverifiedAttributeKeys(this.data);
}

class AuthVerifyUser extends AuthEvent {
  final AuthVerifyUserData data;

  const AuthVerifyUser(this.data);
}

class AuthSkipVerifyUser extends AuthEvent {
  const AuthSkipVerifyUser();
}

class AuthConfirmVerifyUser extends AuthEvent {
  final AuthConfirmVerifyUserData data;

  const AuthConfirmVerifyUser(this.data);
}
