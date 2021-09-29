/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

import 'dart:async';

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_authenticator/src/blocs/auth/auth_data.dart';
import 'package:amplify_authenticator/src/models/authenticator_exceptions.dart';
import 'package:amplify_authenticator/src/services/amplify_auth_service.dart';
import 'package:amplify_flutter/amplify.dart';

part 'auth_event.dart';
part 'auth_state.dart';

/// {@template state_machine_bloc}
/// Internal state machine for the authenticator. Listens to authentication events
/// and maps them to appropriate state transitions.
/// {@endtemplate}
class StateMachineBloc {
  final AuthService _authService;

  /// State controller.
  final StreamController<AuthState> _authStateController =
      StreamController<AuthState>.broadcast();

  /// Assigns state to the authStateController.
  StreamSink<AuthState> get _controllerSink => _authStateController.sink;

  /// Outputs states, which allow to render auth screens.
  Stream<AuthState> get stream => _authStateController.stream;

  /// Event controller.
  final StreamController<AuthEvent> _authEventController =
      StreamController<AuthEvent>.broadcast();

  /// Outputs events into the event transformer.
  late final Stream<AuthEvent> _authEventStream = _authEventController.stream;
  late final StreamSubscription<AuthState> _subscription;

  /// {@macro state_machine_bloc}
  StateMachineBloc(this._authService) {
    _subscription =
        _authEventStream.asyncExpand(_eventTransformer).listen((state) {
      _controllerSink.add(state);
    });
  }

  /// Adds an event to the Bloc.
  void add(AuthEvent event) {
    _authEventController.add(event);
  }

  /// Manages exception events separate from the bloc's state.
  final StreamController<AuthenticatorException> _exceptionController =
      StreamController<AuthenticatorException>.broadcast();

  /// Exception events which occur in the bloc.
  Stream<AuthenticatorException> get exceptions => _exceptionController.stream;

  Stream<AuthState> _eventTransformer(AuthEvent event) async* {
    if (event is AuthLoad) {
      yield* _authLoad();
    } else if (event is GetCurrentUser) {
      yield* _getCurrentUser();
    } else if (event is AuthSignIn) {
      yield* _signIn(event.data);
    } else if (event is AuthSignUp) {
      yield* _signUp(event.data);
    } else if (event is AuthConfirmSignUp) {
      yield* _confirmSignUp(event.data);
    } else if (event is AuthChangeScreen) {
      yield* _changeScreen(event.screen);
    } else if (event is AuthSignOut) {
      yield* _signOut();
    } else if (event is AuthSendCode) {
      yield* _sendCode(event.data);
    } else if (event is AuthConfirmPassword) {
      yield* _confirmPassword(event.data);
    } else if (event is AuthConfirmSignIn) {
      yield* _confirmSignIn(event.data);
    }
  }

  Stream<AuthState> _confirmSignIn(AuthConfirmSignInData data) async* {
    try {
      var result = await _authService.confirmSignIn(
        code: data.code,
        attributes: data.attributes,
      );

      switch (result.nextStep!.signInStep) {
        case 'CONFIRM_SIGN_IN_WITH_SMS_MFA_CODE':
          yield AuthFlow(
            screen: AuthScreen.confirmSigninMfa,
          );
          break;
        case 'CONFIRM_SIGN_IN_WITH_CUSTOM_CHALLENGE':
          _exceptionController.add(
            AuthenticatorException('This is screen is not implemented yet'),
          );
          break;
        case 'CONFIRM_SIGN_IN_WITH_NEW_PASSWORD':
          yield AuthFlow(
            screen: AuthScreen.confirmSigninNewPassword,
          );
          break;
        case 'RESET_PASSWORD':
          yield AuthFlow(screen: AuthScreen.sendCode);
          break;
        case 'CONFIRM_SIGN_UP':
          yield AuthFlow(screen: AuthScreen.confirmSignup);
          break;
        case 'DONE':
          yield const Authenticated();
          break;
        default:
          break;
      }
    } on AmplifyException catch (e) {
      _exceptionController.add(AuthenticatorException(e.message));
    } on Exception catch (e) {
      _exceptionController.add(AuthenticatorException(e.toString()));
    }
  }

  Stream<AuthState> _confirmPassword(AuthConfirmPasswordData data) async* {
    try {
      await _authService.confirmPassword(
        data.username,
        data.confirmationCode,
        data.newPassword,
      );
      yield AuthFlow(screen: AuthScreen.signin);
    } on AmplifyException catch (e) {
      _exceptionController.add(AuthenticatorException(e.message));
    } on Exception catch (e) {
      _exceptionController.add(AuthenticatorException(e.toString()));
    }
  }

  Stream<AuthState> _sendCode(AuthSendCodeData data) async* {
    try {
      await _authService.resetPassword(data.username);
      yield AuthFlow(screen: AuthScreen.resetPassword);
    } on AmplifyException catch (e) {
      _exceptionController.add(AuthenticatorException(e.message));
    } on Exception catch (e) {
      _exceptionController.add(AuthenticatorException(e.toString()));
    }
  }

  Stream<AuthState> _authLoad() async* {
    yield const AuthLoading();
  }

  Stream<AuthState> _getCurrentUser() async* {
    try {
      final AuthUser? currentUser = await _authService.currentUser;

      if (currentUser != null) {
        yield const Authenticated();
      } else {
        yield AuthFlow(screen: AuthScreen.signin);
      }
    } on AmplifyException catch (e) {
      _exceptionController.add(AuthenticatorException(e.message));
    } on Exception catch (e) {
      _exceptionController.add(AuthenticatorException(e.toString()));
    }
  }

  Stream<AuthState> _signIn(AuthSignInData data) async* {
    //Making sure no user is signed in before calling the sign in method
    if (await _authService.isLoggedIn) {
      yield* _signOut();
      return;
    }

    try {
      var result = await _authService.signIn(
        data.username,
        data.password,
      );

      switch (result.nextStep!.signInStep) {
        case 'CONFIRM_SIGN_IN_WITH_SMS_MFA_CODE':
          yield AuthFlow(
            screen: AuthScreen.confirmSigninMfa,
          );
          break;
        case 'CONFIRM_SIGN_IN_WITH_CUSTOM_CHALLENGE':
          _exceptionController.add(
            AuthenticatorException('This is screen is not implemented yet'),
          );
          break;
        case 'CONFIRM_SIGN_IN_WITH_NEW_PASSWORD':
          yield AuthFlow(
            screen: AuthScreen.confirmSigninNewPassword,
          );
          break;
        case 'RESET_PASSWORD':
          yield AuthFlow(screen: AuthScreen.resetPassword);
          break;
        case 'CONFIRM_SIGN_UP':
          yield AuthFlow(screen: AuthScreen.confirmSignup);
          break;
        case 'DONE':
          yield const Authenticated();
          break;
        default:
          break;
      }
    } on UserNotConfirmedException catch (e) {
      _exceptionController.add(AuthenticatorException(e.message));
      yield AuthFlow(screen: AuthScreen.confirmSignup);
    } on AmplifyException catch (e) {
      _exceptionController.add(AuthenticatorException(e.message));
    } on Exception catch (e) {
      _exceptionController.add(AuthenticatorException(e.toString()));
    }
  }

  Stream<AuthState> _signUp(AuthSignUpData data) async* {
    try {
      var result = await _authService.signUp(
        data.username,
        data.password,
        data.attributes,
      );

      switch (result.nextStep.signUpStep) {
        case 'CONFIRM_SIGN_UP_STEP':
          yield AuthFlow(screen: AuthScreen.confirmSignup);
          break;
        case 'DONE':
          var authSignInData = AuthSignInData(
            username: data.username,
            password: data.password,
          );

          yield* _signIn(authSignInData);
          break;
      }
    } on AmplifyException catch (e) {
      _exceptionController.add(AuthenticatorException(e.message));
    } on Exception catch (e) {
      _exceptionController.add(AuthenticatorException(e.toString()));
    }
  }

  Stream<AuthState> _confirmSignUp(AuthConfirmSignUpData data) async* {
    try {
      await _authService.confirmSignUp(data.username, data.code);
      var authSignInData = AuthSignInData(
        username: data.username,
        password: data.password,
      );

      yield* _signIn(authSignInData);
    } on AmplifyException catch (e) {
      _exceptionController.add(AuthenticatorException(e.message));
    } on Exception catch (e) {
      _exceptionController.add(AuthenticatorException(e.toString()));
    }
  }

  Stream<AuthState> _signOut() async* {
    try {
      await _authService.signOut();
      yield AuthFlow(screen: AuthScreen.signin);
    } on AmplifyException catch (e) {
      _exceptionController.add(AuthenticatorException(e.message));
    } on Exception catch (e) {
      _exceptionController.add(AuthenticatorException(e.toString()));
    }
  }

  Stream<AuthState> _changeScreen(AuthScreen screen) async* {
    yield AuthFlow(screen: screen);
  }

  Future<void> _resendSignUpCode(String username) async {
    try {
      await _authService.resendSignUpCode(username);
    } on AmplifyException catch (e) {
      _exceptionController.add(AuthenticatorException(e.message));
    } on Exception catch (e) {
      _exceptionController.add(AuthenticatorException(e.toString()));
    }
  }

  Future<void> dispose() {
    return Future.wait<void>([
      _subscription.cancel(),
      _authStateController.close(),
      _authEventController.close(),
      _exceptionController.close(),
    ]);
  }
}
