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
import 'package:amplify_authenticator/src/models/authenticator_exception.dart';
import 'package:amplify_authenticator/src/services/amplify_auth_service.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:amplify_flutter/src/config/amplify_config.dart';

part 'auth_event.dart';
part 'auth_state.dart';

/// {@template authenticator.state_machine_bloc}
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
  Stream<AuthState> get stream async* {
    yield _currentState;
    yield* _authStateController.stream;
  }

  /// Event controller.
  final StreamController<AuthEvent> _authEventController =
      StreamController<AuthEvent>.broadcast();

  /// Outputs events into the event transformer.
  late final Stream<AuthEvent> _authEventStream = _authEventController.stream;
  late final StreamSubscription<AuthState> _subscription;

  AuthState _currentState = const AuthLoading();
  AuthState get currentState => _currentState;

  /// {@macro authenticator.state_machine_bloc}
  StateMachineBloc(this._authService) {
    _subscription =
        _authEventStream.asyncExpand(_eventTransformer).listen((state) {
      _controllerSink.add(state);
      _currentState = state;
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
    } else if (event is AuthVerifyUser) {
      yield* _verifyUser(event.data);
    } else if (event is AuthConfirmVerifyUser) {
      yield* _confirmVerifyUser(event.data);
    } else if (event is AuthSkipVerifyUser) {
      yield const Authenticated();
    } else if (event is AuthResendSignUpCode) {
      yield* _resendSignUpCode(event.username);
    }
  }

  Stream<AuthState> _authLoad() async* {
    yield const AuthLoading();
    final config = await Amplify.asyncConfig;
    yield AuthLoaded(config);
    yield* _getCurrentUser();
  }

  Stream<AuthState> _getCurrentUser() async* {
    try {
      final AuthUser? currentUser = await _authService.currentUser;

      if (currentUser != null) {
        yield const Authenticated();
      } else {
        yield AuthFlow.signin;
      }
    } on AmplifyException catch (e) {
      _exceptionController.add(AuthenticatorException(e.message));
    } on Exception catch (e) {
      _exceptionController.add(AuthenticatorException(e.toString()));
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
          yield AuthFlow.confirmSigninMfa;
          break;
        case 'CONFIRM_SIGN_IN_WITH_CUSTOM_CHALLENGE':
          _exceptionController.add(const AuthenticatorException.customAuth());
          break;
        case 'CONFIRM_SIGN_IN_WITH_NEW_PASSWORD':
          yield AuthFlow.confirmSigninNewPassword;
          break;
        case 'RESET_PASSWORD':
          yield AuthFlow.sendCode;
          break;
        case 'CONFIRM_SIGN_UP':
          yield AuthFlow.confirmSignup;
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
      yield AuthFlow.signin;
    } on AmplifyException catch (e) {
      _exceptionController.add(AuthenticatorException(e.message));
    } on Exception catch (e) {
      _exceptionController.add(AuthenticatorException(e.toString()));
    }
  }

  Stream<AuthState> _sendCode(AuthSendCodeData data) async* {
    try {
      await _authService.resetPassword(data.username);
      yield AuthFlow.resetPassword;
    } on AmplifyException catch (e) {
      _exceptionController.add(AuthenticatorException(e.message));
    } on Exception catch (e) {
      _exceptionController.add(AuthenticatorException(e.toString()));
    }
  }

  Stream<AuthState> _signIn(AuthSignInData data) async* {
    // Make sure no user is signed in before calling the sign in method
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
          yield AuthFlow.confirmSigninMfa;
          break;
        case 'CONFIRM_SIGN_IN_WITH_CUSTOM_CHALLENGE':
          _exceptionController.add(const AuthenticatorException.customAuth());
          break;
        case 'CONFIRM_SIGN_IN_WITH_NEW_PASSWORD':
          yield AuthFlow.confirmSigninNewPassword;
          break;
        case 'RESET_PASSWORD':
          yield AuthFlow.resetPassword;
          break;
        case 'CONFIRM_SIGN_UP':
          yield AuthFlow.confirmSignup;
          break;
        case 'DONE':
          yield* _checkUserVerification();
          break;
        default:
          break;
      }
    } on UserNotConfirmedException catch (e) {
      _exceptionController.add(AuthenticatorException(e.message));
      yield AuthFlow.confirmSignup;
    } on AmplifyException catch (e) {
      _exceptionController.add(AuthenticatorException(e.message));
    } on Exception catch (e) {
      _exceptionController.add(AuthenticatorException(e.toString()));
    }
  }

  Stream<AuthState> _checkUserVerification() async* {
    try {
      var unverifiedAttributeKeys =
          await _authService.getUnverifiedAttributeKeys();
      if (unverifiedAttributeKeys.isNotEmpty) {
        yield VerifyUserFlow(unverifiedAttributeKeys: unverifiedAttributeKeys);
      } else {
        yield const Authenticated();
      }
    } on Exception catch (e) {
      // TODO: Enumerate exception cases
      // exception is logged but not presented to the user since there is
      // no obvious recovery if there is an exception fetching the users
      // unconfirmed attributes
      print(e);
      yield const Authenticated();
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
          yield AuthFlow.confirmSignup;
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
      yield AuthFlow.signin;
    } on AmplifyException catch (e) {
      _exceptionController.add(AuthenticatorException(e.message));
    } on Exception catch (e) {
      _exceptionController.add(AuthenticatorException(e.toString()));
    }
  }

  Stream<AuthState> _verifyUser(AuthVerifyUserData data) async* {
    try {
      await _authService.resendUserAttributeConfirmationCode(
        userAttributeKey: data.userAttributeKey,
      );
      yield AuthFlow.confirmVerifyUser;
    } on Exception catch (e) {
      if (e is AmplifyException) {
        print(e);
        _exceptionController.add(AuthenticatorException(e.message));
      } else {
        _exceptionController.add(AuthenticatorException(e.toString()));
      }
    }
  }

  Stream<AuthState> _confirmVerifyUser(AuthConfirmVerifyUserData data) async* {
    try {
      await _authService.confirmUserAttribute(
        userAttributeKey: data.userAttributeKey,
        confirmationCode: data.code,
      );
      yield const Authenticated();
    } on Exception catch (e) {
      if (e is AmplifyException) {
        print(e);
        _exceptionController.add(AuthenticatorException(e.message));
      } else {
        _exceptionController.add(AuthenticatorException(e.toString()));
      }
    }
  }

  Stream<AuthState> _changeScreen(AuthScreen screen) async* {
    yield AuthFlow(screen: screen);
  }

  Stream<AuthState> _resendSignUpCode(String username) async* {
    try {
      await _authService.resendSignUpCode(username);
      yield VerificationCodeSent((_currentState as AuthFlow).screen);
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
