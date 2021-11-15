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
import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_authenticator/src/blocs/auth/auth_data.dart';
import 'package:amplify_authenticator/src/l10n/message_resolver.dart';
import 'package:amplify_authenticator/src/services/amplify_auth_service.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:amplify_flutter/src/config/amplify_config.dart';
import 'package:flutter/foundation.dart';

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
  StateMachineBloc({
    required AuthService authService,
  }) : _authService = authService {
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

  /// Manages info messages separate from the bloc's state.
  final StreamController<MessageResolverKey> _infoMessageController =
      StreamController<MessageResolverKey>.broadcast();

  /// Info messages generated from the bloc.
  Stream<MessageResolverKey> get infoMessages => _infoMessageController.stream;

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
      yield* _confirmSignIn(event.data, event.rememberDevice);
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
    yield* _isValidSession();
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

  Stream<AuthState> _isValidSession() async* {
    try {
      bool isValidSession = await _authService.isValidSession();
      if (isValidSession) {
        yield const Authenticated();
        _exceptionController.add(const AuthenticatorException(
            'Your session has expired. Please sign in.',
            showBanner: true));
      } else {
        yield AuthFlow.signin;
        _exceptionController.add(const AuthenticatorException(
            'Your session has expired. Please sign in.',
            showBanner: true));
      }

      /// The [isValidSession] method will surface all Exceptions except SignedOutException
    } on SessionExpiredException {
      /// On all Exceptions other than SignedOutException or SessionExpired,
      /// we provide a generic message to the user and surface the SignIn form.
      _exceptionController.add(const AuthenticatorException(
          'Your session has expired. Please sign in.',
          showBanner: true));
      yield AuthFlow.signin;
    } on AmplifyException catch (e) {
      _exceptionController
          .add(AuthenticatorException(e.message, showBanner: false));
      yield AuthFlow.signin;
    } on Exception {
      _exceptionController.add(const AuthenticatorException(
          'An unknown exception has occurred when fetching the session',
          showBanner: false));
      yield AuthFlow.signin;
    }
  }

  Stream<AuthState> _confirmSignIn(
    AuthConfirmSignInData data,
    bool rememberDevice,
  ) async* {
    try {
      var result = await _authService.confirmSignIn(
        confirmationValue: data.confirmationValue,
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
          if (rememberDevice) {
            try {
              await _authService.rememberDevice();
            } on Exception catch (e) {
              _exceptionController.add(
                AuthenticatorException(e.toString(), showBanner: false),
              );
            }
          }
          yield* _checkUserVerification();
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

  void _notifyCodeSent(String? destination) {
    _infoMessageController.add(MessageResolverKey.codeSent(destination));
  }

  Stream<AuthState> _signIn(AuthSignInData data) async* {
    try {
      // Make sure no user is signed in before calling the sign in method
      if (await _authService.isLoggedIn) {
        await _authService.signOut();
      }

      final SignInResult result;

      if (data is AuthUsernamePasswordSignInData) {
        result = await _authService.signIn(
          data.username,
          data.password,
        );
      } else if (data is AuthSocialSignInData) {
        result = await _authService.signInWithProvider(data.provider);
      } else {
        throw StateError('Bad sign in data: $data');
      }

      switch (result.nextStep!.signInStep) {
        case 'CONFIRM_SIGN_IN_WITH_SMS_MFA_CODE':
          _notifyCodeSent(result.nextStep?.codeDeliveryDetails?.destination);
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
          _notifyCodeSent(result.nextStep?.codeDeliveryDetails?.destination);
          yield AuthFlow.confirmSignup;
          break;
        case 'DONE':
          yield* _checkUserVerification();
          break;
        default:
          break;
      }
    } on UserNotConfirmedException catch (e) {
      _exceptionController.add(AuthenticatorException(
        e.message,
        showBanner: false,
      ));
      yield AuthFlow.confirmSignup;
      if (data is AuthUsernamePasswordSignInData) {
        yield* _resendSignUpCode(data.username);
      } else {
        // TODO: Is this possible?
      }
    } on AmplifyException catch (e) {
      _exceptionController.add(AuthenticatorException(
        e.message,
        showBanner: !e.message.contains('cancelled'),
      ));
    } on Exception catch (e) {
      _exceptionController.add(AuthenticatorException(e.toString()));
    }
  }

  Stream<AuthState> _checkUserVerification() async* {
    try {
      var attributeVerificationStatus =
          await _authService.getAttributeVerificationStatus();
      var unverifiedAttributes =
          attributeVerificationStatus.unverifiedAttributes;
      var verifiedAttributes = attributeVerificationStatus.verifiedAttributes;

      if (verifiedAttributes.isEmpty && unverifiedAttributes.isNotEmpty) {
        yield VerifyUserFlow(unverifiedAttributeKeys: unverifiedAttributes);
      } else {
        yield const Authenticated();
      }
    } on Exception catch (e) {
      _exceptionController.add(
        AuthenticatorException(e.toString(), showBanner: false),
      );
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
          _notifyCodeSent(result.nextStep.codeDeliveryDetails?.destination);
          yield AuthFlow.confirmSignup;
          break;
        case 'DONE':
          var authSignInData = AuthUsernamePasswordSignInData(
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
      var authSignInData = AuthUsernamePasswordSignInData(
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
      yield AttributeVerificationSent(data.userAttributeKey);
    } on Exception catch (e) {
      if (e is AmplifyException) {
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
      ResendSignUpCodeResult result =
          await _authService.resendSignUpCode(username);
      _notifyCodeSent(result.codeDeliveryDetails.destination);
      yield currentState;
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
