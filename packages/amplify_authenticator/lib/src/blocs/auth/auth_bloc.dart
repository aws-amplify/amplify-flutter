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

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart' hide AuthState;
import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_authenticator/src/blocs/auth/auth_data.dart';
import 'package:amplify_authenticator/src/services/amplify_auth_service.dart';
import 'package:amplify_authenticator/src/state/auth_state.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:async/async.dart';
import 'package:stream_transform/stream_transform.dart';

part 'auth_event.dart';

/// {@template amplify_authenticator.state_machine_bloc}
/// Internal state machine for the authenticator. Listens to authentication events
/// and maps them to appropriate state transitions.
/// {@endtemplate}
class StateMachineBloc
    with AWSDebuggable, AmplifyLoggerMixin
    implements Closeable {
  final AuthService _authService;
  final bool preferPrivateSession;
  final AuthenticatorStep initialStep;

  @override
  String get runtimeTypeName => 'StateMachineBloc';

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

  AuthState _currentState = const LoadingState();
  AuthState get currentState => _currentState;

  /// {@macro amplify_authenticator.state_machine_bloc}
  StateMachineBloc({
    required AuthService authService,
    required this.preferPrivateSession,
    this.initialStep = AuthenticatorStep.signIn,
  }) : _authService = authService {
    final blocStream = _authEventStream.asyncExpand(_eventTransformer);
    final hubStream =
        _authService.hubEvents.map(_mapHubEvent).whereType<AuthState>();
    final mergedStream = StreamGroup<AuthState>()
      ..add(blocStream)
      ..add(hubStream)
      ..close();
    _subscription = mergedStream.stream.listen(_emit);
  }

  /// Adds an event to the Bloc.
  void add(AuthEvent event) {
    _authEventController.add(event);
  }

  /// Emits a new state to the bloc.
  void _emit(AuthState state) {
    logger.debug('Emitting next state: $state');
    _controllerSink.add(state);
    _currentState = state;
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
    } else if (event is AuthSignIn) {
      yield* _signIn(event.data);
    } else if (event is AuthSignUp) {
      yield* _signUp(event.data);
    } else if (event is AuthConfirmSignUp) {
      yield* _confirmSignUp(event.data);
    } else if (event is AuthChangeScreen) {
      yield* _changeScreen(event.step);
    } else if (event is AuthSignOut) {
      yield* _signOut();
    } else if (event is AuthResetPassword) {
      yield* _resetPassword(event.data);
    } else if (event is AuthConfirmResetPassword) {
      yield* _confirmResetPassword(event.data);
    } else if (event is AuthConfirmSignIn) {
      yield* _confirmSignIn(event.data, event.rememberDevice);
    } else if (event is AuthVerifyUser) {
      yield* _verifyUser(event.data);
    } else if (event is AuthConfirmVerifyUser) {
      yield* _confirmVerifyUser(event.data);
    } else if (event is AuthSkipVerifyUser) {
      yield const AuthenticatedState();
    } else if (event is AuthResendSignUpCode) {
      yield* _resendSignUpCode(event.username);
    }
  }

  /// Listens for asynchronous events which occurred outside the control of the
  /// [Authenticator] and [StateMachineBloc].
  AuthState? _mapHubEvent(AuthHubEvent event) {
    logger.debug('Handling hub event: ${event.type}');
    switch (event.type) {
      case AuthHubEventType.signedIn:
        if (currentState is! UnauthenticatedState) {
          break;
        }
        final state = currentState as UnauthenticatedState;
        // do not change state if there is a pending user verification.
        if (state.pendingVerification) {
          break;
        }
        return const AuthenticatedState();
      case AuthHubEventType.signedOut:
      case AuthHubEventType.sessionExpired:
      case AuthHubEventType.userDeleted:
        if (_currentState is AuthenticatedState) {
          return UnauthenticatedState(step: initialStep);
        }
        break;
    }
    return null;
  }

  Stream<AuthState> _authLoad() async* {
    yield const LoadingState();
    await Amplify.asyncConfig;
    yield* _isValidSession();
    // Emit empty event to resolve bug with broken event handling on web (possible DDC issue)
    // TODO: investigate broken event handling
    yield* const Stream.empty();
  }

  Stream<AuthState> _isValidSession() async* {
    try {
      bool isValidSession = await _authService.isValidSession();
      if (isValidSession) {
        yield const AuthenticatedState();
      } else {
        /// [isValidSession] returns false if the native platform
        /// returns a [SignedOutException] or if the native libraries return a session object but
        /// UserPool tokens are null (when unauthenticated access is enabled on Identity Pool).
        yield* _changeScreen(initialStep);
      }
    } on SessionExpiredException {
      /// In this case, we want to give the end user an exception message and go to sign in.
      _exceptionController.add(AuthenticatorException(
          'Your session has expired. Please sign in.',
          showBanner: true));
      yield* _changeScreen(initialStep);

      /// On [AmplifyException] and [Exception], update exception controller, do not show banner
      /// and go to sign in step.
    } on Exception catch (e) {
      _exceptionController.add(AuthenticatorException(e, showBanner: false));
      yield* _changeScreen(initialStep);
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
          yield UnauthenticatedState.confirmSignInMfa;
          break;
        case 'CONFIRM_SIGN_IN_WITH_CUSTOM_CHALLENGE':
          yield ConfirmSignInCustom(
            publicParameters:
                result.nextStep?.additionalInfo ?? <String, String>{},
          );
          break;
        case 'CONFIRM_SIGN_IN_WITH_NEW_PASSWORD':
          yield UnauthenticatedState.confirmSignInNewPassword;
          break;
        case 'RESET_PASSWORD':
          yield UnauthenticatedState.resetPassword;
          break;
        case 'CONFIRM_SIGN_UP':
          yield UnauthenticatedState.confirmSignUp;
          break;
        case 'DONE':
          if (rememberDevice) {
            try {
              await _authService.rememberDevice();
            } on Exception catch (e) {
              _exceptionController.add(
                AuthenticatorException(e, showBanner: false),
              );
            }
          }
          yield* _checkUserVerification();
          break;
        default:
          break;
      }
    } on NotAuthorizedException {
      /// The .failAuthentication flag available in the DefineAuthChallenge Lambda trigger
      /// returns a generic NotAuthorizedException.
      ///
      /// We display a more helpful message instead, and route the user back to signin.
      _exceptionController.add(AuthenticatorException(
        'The value provided was incorrect. You cannot be signed in. Please try again.',
        showBanner: true,
      ));
      yield* _changeScreen(initialStep);
    } on Exception catch (e) {
      _exceptionController.add(AuthenticatorException(e));
    }
  }

  Stream<AuthState> _confirmResetPassword(
    AuthConfirmResetPasswordData data,
  ) async* {
    try {
      await _authService.confirmResetPassword(
        data.username,
        data.confirmationCode,
        data.newPassword,
      );
      var authSignInData = AuthUsernamePasswordSignInData(
        username: data.username,
        password: data.newPassword,
      );
      yield* _signIn(authSignInData);
    } on Exception catch (e) {
      _exceptionController.add(AuthenticatorException(e));
    }
  }

  Stream<AuthState> _resetPassword(AuthResetPasswordData data) async* {
    try {
      var result = await _authService.resetPassword(data.username);
      _notifyCodeSent(result.nextStep.codeDeliveryDetails?.destination);
      yield UnauthenticatedState.confirmResetPassword;
    } on Exception catch (e) {
      _exceptionController.add(AuthenticatorException(e));
    }
  }

  void _notifyCodeSent(String? destination) {
    _infoMessageController.add(MessageResolverKey.codeSent(destination));
  }

  Future<void> _processSignInResult(
    SignInResult result, {
    required bool isSocialSignIn,
  }) async {
    switch (result.nextStep!.signInStep) {
      case 'CONFIRM_SIGN_IN_WITH_SMS_MFA_CODE':
        _notifyCodeSent(result.nextStep?.codeDeliveryDetails?.destination);
        _emit(UnauthenticatedState.confirmSignInMfa);
        break;
      case 'CONFIRM_SIGN_IN_WITH_CUSTOM_CHALLENGE':
        _emit(ConfirmSignInCustom(
          publicParameters:
              result.nextStep?.additionalInfo ?? <String, String>{},
        ));
        break;
      case 'CONFIRM_SIGN_IN_WITH_NEW_PASSWORD':
        _emit(UnauthenticatedState.confirmSignInNewPassword);
        break;
      case 'RESET_PASSWORD':
        _emit(UnauthenticatedState.confirmResetPassword);
        break;
      case 'CONFIRM_SIGN_UP':
        _notifyCodeSent(result.nextStep?.codeDeliveryDetails?.destination);
        _emit(UnauthenticatedState.confirmSignUp);
        break;
      case 'DONE':
        if (isSocialSignIn) {
          _emit(const AuthenticatedState());
        } else {
          await for (final state in _checkUserVerification()) {
            _emit(state);
          }
        }
        break;
      default:
        break;
    }
  }

  Stream<AuthState> _signIn(AuthSignInData data) async* {
    try {
      // Make sure no user is signed in before calling the sign in method
      if (await _authService.isLoggedIn) {
        await _authService.signOut();
      }

      if (data is AuthUsernamePasswordSignInData) {
        final result = await _authService.signIn(
          data.username,
          data.password,
        );
        await _processSignInResult(result, isSocialSignIn: false);
      } else if (data is AuthSocialSignInData) {
        // Do not await a social sign-in since multiple sign-in attempts
        // can occur.
        _authService
            .signInWithProvider(
              data.provider,
              preferPrivateSession: preferPrivateSession,
            )
            .then(
              (result) => _processSignInResult(result, isSocialSignIn: true),
            )
            .onError<Exception>((error, stackTrace) {
          final log =
              error is UserCancelledException ? logger.info : logger.error;
          log('Error signing in', error, stackTrace);
        });
      } else {
        throw StateError('Bad sign in data: $data');
      }
    } on UserNotConfirmedException catch (e) {
      _exceptionController.add(AuthenticatorException(
        e.message ?? 'An unknown error occurred',
        showBanner: false,
      ));
      yield UnauthenticatedState.confirmSignUp;
      if (data is AuthUsernamePasswordSignInData) {
        yield* _resendSignUpCode(data.username);
      } else {
        // TODO: Is this possible?
      }
    } on Exception catch (e) {
      _exceptionController.add(AuthenticatorException(
        e,
        showBanner: !e.toString().contains('cancelled'),
      ));
    }
    // Emit empty event to resolve bug with broken event handling on web (possible DDC issue)
    yield* const Stream.empty();
  }

  Stream<AuthState> _checkUserVerification() async* {
    if (currentState is UnauthenticatedState) {
      final state = (currentState as UnauthenticatedState);
      _emit(state.withPendingVerification());
    }
    try {
      var attributeVerificationStatus =
          await _authService.getAttributeVerificationStatus();
      var unverifiedAttributes =
          attributeVerificationStatus.unverifiedAttributes;
      var verifiedAttributes = attributeVerificationStatus.verifiedAttributes;

      if (verifiedAttributes.isEmpty && unverifiedAttributes.isNotEmpty) {
        yield VerifyUserFlow(unverifiedAttributeKeys: unverifiedAttributes);
      } else {
        yield const AuthenticatedState();
      }
    } on Exception catch (e) {
      _exceptionController.add(AuthenticatorException(e, showBanner: false));
      yield const AuthenticatedState();
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
          yield UnauthenticatedState.confirmSignUp;
          break;
        case 'DONE':
          var authSignInData = AuthUsernamePasswordSignInData(
            username: data.username,
            password: data.password,
          );

          yield* _signIn(authSignInData);
          break;
      }
    } on Exception catch (e) {
      _exceptionController.add(AuthenticatorException(e));
    }
    // Emit empty event to resolve bug with broken event handling on web (possible DDC issue)
    yield* const Stream.empty();
  }

  Stream<AuthState> _confirmSignUp(AuthConfirmSignUpData data) async* {
    try {
      await _authService.confirmSignUp(data.username, data.code);
      var authSignInData = AuthUsernamePasswordSignInData(
        username: data.username,
        password: data.password,
      );

      yield* _signIn(authSignInData);
    } on Exception catch (e) {
      _exceptionController.add(AuthenticatorException(e));
    }
    // Emit empty event to resolve bug with broken event handling on web (possible DDC issue)
    yield* const Stream.empty();
  }

  Stream<AuthState> _signOut() async* {
    try {
      await _authService.signOut();
      yield* _changeScreen(AuthenticatorStep.signIn);
    } on Exception catch (e) {
      _exceptionController.add(AuthenticatorException(e));
    }
    // Emit empty event to resolve bug with broken event handling on web (possible DDC issue)
    yield* const Stream.empty();
  }

  Stream<AuthState> _verifyUser(AuthVerifyUserData data) async* {
    try {
      ResendUserAttributeConfirmationCodeResult result =
          await _authService.resendUserAttributeConfirmationCode(
        userAttributeKey: data.userAttributeKey,
      );
      _notifyCodeSent(result.codeDeliveryDetails.destination);
      yield AttributeVerificationSent(data.userAttributeKey);
    } on Exception catch (e) {
      _exceptionController.add(AuthenticatorException(e));
    }
    // Emit empty event to resolve bug with broken event handling on web (possible DDC issue)
    yield* const Stream.empty();
  }

  Stream<AuthState> _confirmVerifyUser(AuthConfirmVerifyUserData data) async* {
    try {
      await _authService.confirmUserAttribute(
        userAttributeKey: data.userAttributeKey,
        confirmationCode: data.code,
      );
      yield const AuthenticatedState();
    } on Exception catch (e) {
      _exceptionController.add(AuthenticatorException(e));
    }
    // Emit empty event to resolve bug with broken event handling on web (possible DDC issue)
    yield* const Stream.empty();
  }

  Stream<AuthState> _changeScreen(AuthenticatorStep step) async* {
    yield UnauthenticatedState(step: step);
    // Emit empty event to resolve bug with broken event handling on web (possible DDC issue)
    yield* const Stream.empty();
  }

  Stream<AuthState> _resendSignUpCode(String username) async* {
    try {
      ResendSignUpCodeResult result =
          await _authService.resendSignUpCode(username);
      _notifyCodeSent(result.codeDeliveryDetails.destination);
      yield currentState;
    } on Exception catch (e) {
      _exceptionController.add(AuthenticatorException(e));
    }
    // Emit empty event to resolve bug with broken event handling on web (possible DDC issue)
    yield* const Stream.empty();
  }

  @override
  Future<void> close() {
    return Future.wait<void>([
      _subscription.cancel(),
      _authStateController.close(),
      _authEventController.close(),
      _exceptionController.close(),
    ]);
  }
}
