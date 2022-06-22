// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'dart:async';

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_auth_cognito_dart/src/flows/constants.dart';
import 'package:amplify_auth_cognito_dart/src/flows/helpers.dart';
import 'package:amplify_auth_cognito_dart/src/flows/hosted_ui/initial_parameters_stub.dart'
    if (dart.library.html) 'package:amplify_auth_cognito_dart/src/flows/hosted_ui/initial_parameters_html.dart';
import 'package:amplify_auth_cognito_dart/src/jwt/jwt.dart';
import 'package:amplify_auth_cognito_dart/src/model/auth_user_ext.dart';
import 'package:amplify_auth_cognito_dart/src/model/sign_in_parameters.dart';
import 'package:amplify_auth_cognito_dart/src/model/sign_up_parameters.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/cognito_identity_provider.dart'
    as cognito
    show
        AttributeType,
        ChangePasswordRequest,
        CodeDeliveryDetailsType,
        CognitoIdentityProviderClient,
        ConfirmForgotPasswordRequest,
        DeleteUserRequest,
        DeviceRememberedStatusType,
        DeviceType,
        ForgetDeviceRequest,
        ForgotPasswordRequest,
        GetUserAttributeVerificationCodeRequest,
        GetUserRequest,
        GlobalSignOutRequest,
        ListDevicesRequest,
        PasswordResetRequiredException,
        ResendConfirmationCodeRequest,
        RevokeTokenRequest,
        UnauthorizedException,
        UpdateDeviceStatusRequest,
        UpdateUserAttributesRequest,
        UserNotConfirmedException,
        VerifyUserAttributeRequest;
import 'package:amplify_auth_cognito_dart/src/sdk/sdk_bridge.dart';
import 'package:amplify_auth_cognito_dart/src/state/state.dart';
import 'package:amplify_auth_cognito_dart/src/util/authorization_providers.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';
import 'package:built_collection/built_collection.dart';
import 'package:collection/collection.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';
import 'package:stream_transform/stream_transform.dart';

/// {@template amplify_auth_cognito_dart.amplify_auth_cognito_dart}
/// The AWS Cognito implementation of the Amplify Auth category.
/// {@endtemplate}
class AmplifyAuthCognitoDart extends AuthPluginInterface implements Closeable {
  /// {@macro amplify_auth_cognito_dart.amplify_auth_cognito_dart}
  AmplifyAuthCognitoDart({
    SecureStorageInterface? credentialStorage,
    HostedUiPlatformFactory? hostedUiPlatformFactory,
  })  : _credentialStorage = credentialStorage,
        _hostedUiPlatformFactory = hostedUiPlatformFactory;

  /// Capture the initial parameters on instantiation of this class.
  ///
  /// {@macro amplify_auth_cognito.initial_parameters}
  final OAuthParameters? _initialParameters = initialParameters;

  /// The on-device credential storage for the Auth category.
  ///
  /// Defaults to an instance of [AmplifySecureStorageDart] with a scope of
  /// "auth".
  final SecureStorageInterface? _credentialStorage;

  /// The Hosted UI platform factory, which creates an instance of
  /// [HostedUiPlatform], responsible for handling login and logout events
  /// for OAuth flows.
  ///
  /// Constructor parameters can be passed to [HostedUiPlatform.protected], e.g.
  ///
  /// ```dart
  /// class MyHostedUiPlatform extends HostedUiPlatform {
  ///   MyHostedUiPlatform(super.dependencyManager): super.protected();
  /// }
  /// ```
  final HostedUiPlatformFactory? _hostedUiPlatformFactory;

  CognitoAuthStateMachine _stateMachine = CognitoAuthStateMachine();

  /// The underlying state machine, for use in subclasses.
  @protected
  CognitoAuthStateMachine get stateMachine => _stateMachine;

  @visibleForTesting
  set stateMachine(CognitoAuthStateMachine stateMachine) {
    if (!zDebugMode) throw StateError('Can only be called in tests');
    _stateMachine = stateMachine;
  }

  /// The Cognito Identity Provider client.
  cognito.CognitoIdentityProviderClient get _cognitoIdp =>
      _stateMachine.expect();

  /// The Cognito user pool configuration.
  CognitoUserPoolConfig get _userPoolConfig => _stateMachine.expect();

  /// The Cognito identity pool configuration.
  CognitoIdentityCredentialsProvider? get _identityPoolConfig =>
      _stateMachine.get();

  final StreamController<AuthHubEvent> _hubEventController =
      StreamController.broadcast();

  @override
  Future<void> close() async {
    await _hubEventController.close();
  }

  Future<void> _init() async {
    final credentialStorage = _credentialStorage ??
        AmplifySecureStorageWorker(
          config: AmplifySecureStorageConfig(
            scope: 'auth',
          ),
        );
    _stateMachine.addInstance<SecureStorageInterface>(credentialStorage);
    if (_hostedUiPlatformFactory != null) {
      _stateMachine.addBuilder(
        _hostedUiPlatformFactory!,
        HostedUiPlatform.token,
      );
    }
    if (_initialParameters != null) {
      _stateMachine.addInstance<OAuthParameters>(_initialParameters!);
    }
    _stateMachine.stream.listen(
      (state) {
        AuthHubEvent? hubEvent;
        if (state is HostedUiSignedIn) {
          hubEvent = AuthHubEvent.signedIn(state.user);
        }
        if (state is SignInSuccess) {
          hubEvent = AuthHubEvent.signedIn(state.user.authUser);
        }
        if (state is FetchAuthSessionFailure &&
            (state.exception is cognito.UnauthorizedException ||
                state.exception is NotAuthorizedException)) {
          hubEvent = AuthHubEvent.sessionExpired();
        }

        if (hubEvent != null) {
          _hubEventController.add(hubEvent);
        }
      },
      onDone: _hubEventController.close,
    );
    Amplify.Hub.addChannel(HubChannel.Auth, _hubEventController.stream);
  }

  @override
  Future<void> configure({AmplifyConfig? config}) async {
    if (config == null) {
      throw const AuthException('No Cognito plugin config detected');
    }
    await super.configure(config: config);

    if (_stateMachine.getOrCreate(AuthStateMachine.type).currentState.type !=
        AuthStateType.notConfigured) {
      throw const AmplifyAlreadyConfiguredException(
        'Amplify has already been configured and re-configuration is not supported.',
        recoverySuggestion:
            'Check if Amplify is already configured using Amplify.isConfigured.',
      );
    }

    await _init();
    _stateMachine.dispatch(AuthEvent.configure(config));

    await for (final state in _stateMachine.stream.whereType<AuthState>()) {
      switch (state.type) {
        case AuthStateType.notConfigured:
        case AuthStateType.configuring:
          continue;
        case AuthStateType.configured:
          return;
        case AuthStateType.failure:
          throw (state as AuthFailure).exception;
      }
    }

    await super.configure(config: config);
  }

  /// Retrieves the code delivery details from the challenge parameters.
  AuthCodeDeliveryDetails? _getChallengeDeliveryDetails(
    Map<String, String> challengeParameters,
  ) {
    final destination =
        challengeParameters[CognitoConstants.challengeParamDeliveryDest];
    if (destination == null) {
      return null;
    }
    final deliveryMedium =
        challengeParameters[CognitoConstants.challengeParamDeliveryMedium];
    return AuthCodeDeliveryDetails(
      destination: destination,
      deliveryMedium: deliveryMedium,
    );
  }

  @override
  Future<AuthSession> fetchAuthSession({
    required AuthSessionRequest request,
  }) async {
    final options = request.options as CognitoSessionOptions?;
    _stateMachine.dispatch(FetchAuthSessionEvent.fetch(options));

    await for (final state
        in _stateMachine.stream.whereType<FetchAuthSessionState>()) {
      switch (state.type) {
        case FetchAuthSessionStateType.idle:
        case FetchAuthSessionStateType.fetching:
        case FetchAuthSessionStateType.refreshing:
          continue;
        case FetchAuthSessionStateType.success:
          state as FetchAuthSessionSuccess;
          return state.session;
        case FetchAuthSessionStateType.failure:
          state as FetchAuthSessionFailure;
          throw state.exception;
      }
    }

    // This should never happen.
    throw const UnknownException('fetchAuthSession could not be completed');
  }

  @override
  Future<SignInResult> signInWithWebUI({
    SignInWithWebUIRequest? request,
  }) async {
    final options = request?.options as CognitoSignInWithWebUIOptions? ??
        const CognitoSignInWithWebUIOptions();
    await _stateMachine.dispatch(
      HostedUiEvent.signIn(
        options: options,
        provider: request?.provider,
      ),
    );

    await for (final state in _stateMachine.stream.whereType<HostedUiState>()) {
      switch (state.type) {
        case HostedUiStateType.notConfigured:
        case HostedUiStateType.configuring:
        case HostedUiStateType.signingIn:
        case HostedUiStateType.signingOut:
          continue;
        case HostedUiStateType.signedOut:
          throw const UnknownException(
            'An unknown error occurred while signing in',
          );
        case HostedUiStateType.signedIn:
          return const SignInResult(
            isSignedIn: true,
            nextStep: AuthNextSignInStep(
              signInStep: 'DONE',
            ),
          );
        case HostedUiStateType.failure:
          state as HostedUiFailure;
          throw state.exception;
      }
    }

    // This should never happen.
    throw const UnknownException('signInWithWebUI could not be completed');
  }

  @override
  Future<SignUpResult> signUp({
    required SignUpRequest request,
  }) async {
    final options = request.options as CognitoSignUpOptions?;
    _stateMachine.dispatch(
      SignUpEvent.initiate(
        parameters: SignUpParameters(
          (p) => p
            ..username = request.username
            ..password = request.password,
        ),
        clientMetadata: options?.clientMetadata,
        userAttributes: options?.userAttributes,
        validationData: options?.validationData,
      ),
    );

    await for (final state in _stateMachine.stream.whereType<SignUpState>()) {
      switch (state.type) {
        case SignUpStateType.notStarted:
        case SignUpStateType.initiating:
        case SignUpStateType.confirming:
          continue;
        case SignUpStateType.needsConfirmation:
          state as SignUpNeedsConfirmation;
          return SignUpResult(
            isSignUpComplete: false,
            nextStep: AuthNextSignUpStep(
              signUpStep: CognitoSignUpStep.confirmSignUp.value,
              codeDeliveryDetails:
                  state.codeDeliveryDetails?.asAuthCodeDeliveryDetails,
            ),
          );
        case SignUpStateType.success:
          return SignUpResult(
            isSignUpComplete: true,
            nextStep: AuthNextSignUpStep(
              signUpStep: CognitoSignUpStep.done.value,
            ),
          );
        case SignUpStateType.failure:
          throw (state as SignUpFailure).exception;
      }
    }

    // This should never happen.
    throw const UnknownException('Sign up could not be completed');
  }

  @override
  Future<SignUpResult> confirmSignUp({
    required ConfirmSignUpRequest request,
  }) async {
    final options = request.options as CognitoConfirmSignUpOptions?;
    _stateMachine.dispatch(
      SignUpEvent.confirm(
        username: request.username,
        confirmationCode: request.confirmationCode,
        clientMetadata: options?.clientMetadata,
      ),
    );

    await for (final state in _stateMachine.stream.whereType<SignUpState>()) {
      switch (state.type) {
        case SignUpStateType.notStarted:
        case SignUpStateType.initiating:
        case SignUpStateType.confirming:
          continue;
        case SignUpStateType.needsConfirmation:
          state as SignUpNeedsConfirmation;
          return SignUpResult(
            isSignUpComplete: false,
            nextStep: AuthNextSignUpStep(
              signUpStep: CognitoSignUpStep.confirmSignUp.value,
              codeDeliveryDetails:
                  state.codeDeliveryDetails?.asAuthCodeDeliveryDetails,
            ),
          );
        case SignUpStateType.success:
          return SignUpResult(
            isSignUpComplete: true,
            nextStep: AuthNextSignUpStep(
              signUpStep: CognitoSignUpStep.done.value,
            ),
          );
        case SignUpStateType.failure:
          throw (state as SignUpFailure).exception;
      }
    }

    // This should never happen.
    throw const UnknownException('Sign up confirmation could not be completed');
  }

  @override
  Future<ResendSignUpCodeResult> resendSignUpCode({
    required ResendSignUpCodeRequest request,
  }) async {
    final options = request.options as CognitoResendSignUpCodeOptions?;
    final result = await _cognitoIdp.resendConfirmationCode(
      cognito.ResendConfirmationCodeRequest.build((b) {
        b
          ..clientId = _userPoolConfig.appClientId
          ..username = request.username;

        final clientSecret = _userPoolConfig.appClientSecret;
        if (clientSecret != null) {
          b.secretHash = computeSecretHash(
            request.username,
            _userPoolConfig.appClientId,
            clientSecret,
          );
        }

        final clientMetadata = options?.clientMetadata ?? const {};
        b.clientMetadata.addAll(clientMetadata);
      }),
    );

    final codeDeliveryDetails =
        result.codeDeliveryDetails?.asAuthCodeDeliveryDetails;
    if (codeDeliveryDetails == null) {
      throw CodeDeliveryFailureException(message: 'Could not deliver code');
    }
    return CognitoResendSignUpCodeResult(codeDeliveryDetails);
  }

  @override
  Future<SignInResult> signIn({
    required SignInRequest request,
  }) async {
    final options = request.options as CognitoSignInOptions? ??
        const CognitoSignInOptions();

    // Create a new state machine for every call since it caches values
    // internally on each run.
    final stream = _stateMachine.create(SignInStateMachine.type).stream;
    _stateMachine.dispatch(
      SignInEvent.initiate(
        authFlow: options.authFlow?.sdkValue,
        parameters: SignInParameters(
          (p) => p
            ..username = request.username
            ..password = request.password,
        ),
        clientMetadata: options.clientMetadata,
      ),
    );

    await for (final state in stream) {
      switch (state.type) {
        case SignInStateType.notStarted:
        case SignInStateType.initiating:
        case SignInStateType.cancelling:
          continue;
        case SignInStateType.challenge:
          state as SignInChallenge;
          return SignInResult(
            isSignedIn: false,
            nextStep: AuthNextSignInStep(
              signInStep: state.challengeName.signInStep.value,
              codeDeliveryDetails: _getChallengeDeliveryDetails(
                state.challengeParameters,
              ),
              challengeParameters: state.challengeParameters,
            ),
          );
        case SignInStateType.success:
          return SignInResult(
            isSignedIn: true,
            nextStep: AuthNextSignInStep(
              signInStep: CognitoSignInStep.done.value,
            ),
          );
        case SignInStateType.failure:
          final exception = (state as SignInFailure).exception;
          if (exception is cognito.PasswordResetRequiredException) {
            return SignInResult(
              isSignedIn: false,
              nextStep: AuthNextSignInStep(
                signInStep: CognitoSignInStep.resetPassword.value,
              ),
            );
          } else if (exception is cognito.UserNotConfirmedException) {
            return SignInResult(
              isSignedIn: false,
              nextStep: AuthNextSignInStep(
                signInStep: CognitoSignInStep.confirmSignUp.value,
              ),
            );
          }
          throw exception;
      }
    }

    // This should never happen.
    throw const UnknownException('Sign in could not be completed');
  }

  @override
  Future<SignInResult> confirmSignIn({
    required ConfirmSignInRequest request,
  }) async {
    final options = request.options as CognitoConfirmSignInOptions? ??
        const CognitoConfirmSignInOptions();
    _stateMachine.dispatch(
      SignInEvent.respondToChallenge(
        answer: request.confirmationValue,
        clientMetadata: options.clientMetadata,
        userAttributes: options.userAttributes,
      ),
    );

    final stream = _stateMachine.expect(SignInStateMachine.type).stream;
    await for (final state in stream) {
      switch (state.type) {
        case SignInStateType.notStarted:
        case SignInStateType.initiating:
        case SignInStateType.cancelling:
          continue;
        case SignInStateType.challenge:
          state as SignInChallenge;
          return SignInResult(
            isSignedIn: false,
            nextStep: AuthNextSignInStep(
              signInStep: state.challengeName.signInStep.value,
              codeDeliveryDetails: _getChallengeDeliveryDetails(
                state.challengeParameters,
              ),
              challengeParameters: state.challengeParameters,
              missingAttributes: state.requiredAttributes,
            ),
          );
        case SignInStateType.success:
          return SignInResult(
            isSignedIn: true,
            nextStep: AuthNextSignInStep(
              signInStep: CognitoSignInStep.done.value,
            ),
          );
        case SignInStateType.failure:
          throw (state as SignInFailure).exception;
      }
    }

    // This should never happen.
    throw const UnknownException('Sign in could not be completed');
  }

  @override
  Future<List<AuthUserAttribute>> fetchUserAttributes({
    FetchUserAttributesRequest? request,
  }) async {
    final userPoolTokens = await getUserPoolTokens();
    final resp = await _cognitoIdp.getUser(
      cognito.GetUserRequest(
        accessToken: userPoolTokens.accessToken.raw,
      ),
    );
    return [
      for (final attributeType in resp.userAttributes)
        attributeType.asAuthUserAttribute,
    ];
  }

  @override
  Future<UpdateUserAttributeResult> updateUserAttribute({
    required UpdateUserAttributeRequest request,
  }) async {
    final options = request.options as CognitoUpdateUserAttributeOptions?;
    final results = await updateUserAttributes(
      request: UpdateUserAttributesRequest(
        attributes: [request.attribute],
        options: CognitoUpdateUserAttributesOptions(
          clientMetadata: options?.clientMetadata,
        ),
      ),
    );
    return results.values.single;
  }

  @override
  Future<Map<UserAttributeKey, UpdateUserAttributeResult>>
      updateUserAttributes({
    required UpdateUserAttributesRequest request,
  }) async {
    final userPoolTokens = await getUserPoolTokens();
    final options = request.options as CognitoUpdateUserAttributesOptions?;
    final response = await _cognitoIdp.updateUserAttributes(
      cognito.UpdateUserAttributesRequest.build(
        (b) => b
          ..accessToken = userPoolTokens.accessToken.raw
          ..clientMetadata.addAll(options?.clientMetadata ?? const {})
          ..userAttributes.addAll({
            for (final attr in request.attributes) attr.asAttributeType,
          }),
      ),
    );
    final result = <UserAttributeKey, UpdateUserAttributeResult>{};
    final codeDeliveryDetailsList = response.codeDeliveryDetailsList ??
        const <cognito.CodeDeliveryDetailsType>[];
    for (final attribute in request.attributes) {
      final codeDeliveryDetails = codeDeliveryDetailsList.firstWhereOrNull(
        (details) => details.attributeName == attribute.userAttributeKey.key,
      );

      // Unless we receive code delivery details, we must assume the attribute
      // was successfully updated since otherwise the call to Cognito would have
      // thrown an exception.
      final isUpdated = codeDeliveryDetails == null;
      final nextStep = isUpdated
          ? CognitoUpdateUserAttributeStep.done
          : CognitoUpdateUserAttributeStep.confirmAttribute;
      result[attribute.userAttributeKey] = UpdateUserAttributeResult(
        isUpdated: isUpdated,
        nextStep: AuthNextUpdateAttributeStep(
          updateAttributeStep: nextStep.value,
          codeDeliveryDetails: codeDeliveryDetails?.asAuthCodeDeliveryDetails,
        ),
      );
    }
    return result;
  }

  @override
  Future<ConfirmUserAttributeResult> confirmUserAttribute({
    required ConfirmUserAttributeRequest request,
  }) async {
    final userPoolTokens = await getUserPoolTokens();
    await _cognitoIdp.verifyUserAttribute(
      cognito.VerifyUserAttributeRequest(
        accessToken: userPoolTokens.accessToken.raw,
        attributeName: request.userAttributeKey.key,
        code: request.confirmationCode,
      ),
    );
    return const ConfirmUserAttributeResult();
  }

  @override
  Future<ResendUserAttributeConfirmationCodeResult>
      resendUserAttributeConfirmationCode({
    required ResendUserAttributeConfirmationCodeRequest request,
  }) async {
    final userPoolTokens = await getUserPoolTokens();
    final options =
        request.options as CognitoResendUserAttributeConfirmationCodeOptions?;
    final result = await _cognitoIdp.getUserAttributeVerificationCode(
      cognito.GetUserAttributeVerificationCodeRequest(
        accessToken: userPoolTokens.accessToken.raw,
        attributeName: request.userAttributeKey.key,
        clientMetadata: BuiltMap(options?.clientMetadata ?? const {}),
      ),
    );
    final codeDeliveryDetails =
        result.codeDeliveryDetails?.asAuthCodeDeliveryDetails;
    if (codeDeliveryDetails == null) {
      throw const UnknownException('Could not resend confirmation code');
    }
    return ResendUserAttributeConfirmationCodeResult(
      codeDeliveryDetails: codeDeliveryDetails,
    );
  }

  @override
  Future<UpdatePasswordResult> updatePassword({
    required UpdatePasswordRequest request,
  }) async {
    // TODO(dnys1): Where does clientMetadata go?
    // ignore: unused_local_variable
    final options = request.options as CognitoUpdatePasswordOptions?;

    final tokens = await getUserPoolTokens();
    await _cognitoIdp.changePassword(
      cognito.ChangePasswordRequest(
        accessToken: tokens.accessToken.raw,
        previousPassword: request.oldPassword,
        proposedPassword: request.newPassword,
      ),
    );
    return const UpdatePasswordResult();
  }

  @override
  Future<CognitoResetPasswordResult> resetPassword({
    required ResetPasswordRequest request,
  }) async {
    final options = request.options as CognitoResendSignUpCodeOptions?;
    final result = await _cognitoIdp.forgotPassword(
      cognito.ForgotPasswordRequest.build((b) {
        b
          ..clientId = _userPoolConfig.appClientId
          ..username = request.username;

        final clientSecret = _userPoolConfig.appClientSecret;
        if (clientSecret != null) {
          b.secretHash = computeSecretHash(
            request.username,
            _userPoolConfig.appClientId,
            clientSecret,
          );
        }

        final clientMetadata = options?.clientMetadata ?? const {};
        b.clientMetadata.addAll(clientMetadata);
      }),
    );

    final codeDeliveryDetails =
        result.codeDeliveryDetails?.asAuthCodeDeliveryDetails;
    if (codeDeliveryDetails == null) {
      throw CodeDeliveryFailureException(message: 'Could not deliver code');
    }

    return CognitoResetPasswordResult(
      isPasswordReset: false,
      nextStep: ResetPasswordStep(
        updateStep: 'CONFIRM_RESET_PASSWORD_WITH_CODE',
        codeDeliveryDetails:
            result.codeDeliveryDetails?.asAuthCodeDeliveryDetails,
      ),
    );
  }

  @override
  Future<UpdatePasswordResult> confirmResetPassword({
    required ConfirmResetPasswordRequest request,
  }) async {
    final options = request.options as CognitoConfirmResetPasswordOptions?;
    await _cognitoIdp.confirmForgotPassword(
      cognito.ConfirmForgotPasswordRequest.build((b) {
        b
          ..username = request.username
          ..password = request.newPassword
          ..confirmationCode = request.confirmationCode
          ..clientId = _userPoolConfig.appClientId;

        final clientSecret = _userPoolConfig.appClientSecret;
        if (clientSecret != null) {
          b.secretHash = computeSecretHash(
            request.username,
            _userPoolConfig.appClientId,
            clientSecret,
          );
        }

        final clientMetadata = options?.clientMetadata ?? const {};
        b.clientMetadata.addAll(clientMetadata);
      }),
    );

    return const UpdatePasswordResult();
  }

  @override
  Future<AuthUser> getCurrentUser({
    AuthUserRequest? request,
  }) async {
    final userPoolTokens = await getUserPoolTokens();
    final userId = userPoolTokens.idToken.userId;
    final username = CognitoIdToken(userPoolTokens.idToken).username;
    return AuthUser(
      userId: userId,
      username: username,
    );
  }

  @override
  Future<void> rememberDevice() async {
    // Use credentials state machine since we need device info as well.
    final credentials = await _stateMachine
        .expect(CredentialStoreStateMachine.type)
        .getCredentialsResult();
    final deviceKey = credentials.deviceSecrets?.deviceKey;
    if (deviceKey == null) {
      throw const DeviceNotTrackedException();
    }
    final accessToken = credentials.userPoolTokens?.accessToken;
    if (accessToken == null) {
      throw const SignedOutException('No user is currently signed in');
    }
    await _cognitoIdp.updateDeviceStatus(
      cognito.UpdateDeviceStatusRequest(
        accessToken: accessToken.raw,
        deviceKey: deviceKey,
        deviceRememberedStatus: cognito.DeviceRememberedStatusType.remembered,
      ),
    );
  }

  @override
  Future<void> forgetDevice([AuthDevice? device]) async {
    // Use credentials state machine since we need device info as well.
    final credentials = await _stateMachine
        .expect(CredentialStoreStateMachine.type)
        .getCredentialsResult();
    final deviceKey = device?.id ?? credentials.deviceSecrets?.deviceKey;
    if (deviceKey == null) {
      throw const DeviceNotTrackedException();
    }
    await _cognitoIdp.forgetDevice(
      cognito.ForgetDeviceRequest(
        accessToken: credentials.userPoolTokens?.accessToken.raw,
        deviceKey: deviceKey,
      ),
    );
  }

  @override
  Future<List<AuthDevice>> fetchDevices() async {
    final allDevices = <AuthDevice>[];

    String? paginationToken;
    do {
      final tokens = await getUserPoolTokens();
      const devicePageLimit = 60;
      final resp = await _cognitoIdp.listDevices(
        cognito.ListDevicesRequest(
          accessToken: tokens.accessToken.raw,
          limit: devicePageLimit,
          paginationToken: paginationToken,
        ),
      );
      final devices = resp.devices ?? const <cognito.DeviceType>[];
      for (final device in devices) {
        final attributes =
            device.deviceAttributes ?? const <cognito.AttributeType>[];
        final deviceKey = device.deviceKey;
        if (deviceKey == null) {
          continue;
        }
        allDevices.add(
          CognitoDevice(
            id: deviceKey,
            attributes: {
              for (final attribute in attributes)
                attribute.name: attribute.value ?? '',
            },
            createdDate: device.deviceCreateDate,
            lastAuthenticatedDate: device.deviceLastAuthenticatedDate,
            lastModifiedDate: device.deviceLastModifiedDate,
          ),
        );
      }
      paginationToken = resp.paginationToken;
    } while (paginationToken != null);

    return allDevices;
  }

  @override
  Future<SignOutResult> signOut({
    SignOutRequest? request,
  }) async {
    final options = request?.options ?? const SignOutOptions();

    // Try to retrieve tokens and return successfully if already logged out.
    // Do not clear other storage items (e.g. AWS credentials) in this case,
    // since an unauthenticated user may still be cached.
    final CognitoUserPoolTokens tokens;
    try {
      tokens = await getUserPoolTokens();
    } on SignedOutException {
      _hubEventController.add(AuthHubEvent.signedOut());
      return const SignOutResult();
    }

    try {
      // Sign out via Hosted UI, if configured.
      if (tokens.signInMethod == CognitoSignInMethod.hostedUi) {
        _stateMachine.dispatch(const HostedUiEvent.signOut());
        final hostedUiResult = await _stateMachine.stream
            .where(
              (state) => state is HostedUiSignedOut || state is HostedUiFailure,
            )
            .first;
        if (hostedUiResult is HostedUiFailure) {
          throw hostedUiResult.exception;
        }
      }

      // Do not try to send Cognito requests for plugin configs without an
      // Identity Pool, since the requests will fail.
      if (_identityPoolConfig != null) {
        // Try to refresh AWS credentials since Cognito requests will require
        // them.
        await fetchAuthSession(
          request: AuthSessionRequest(
            options: const CognitoSessionOptions(getAWSCredentials: true),
          ),
        );
        if (options.globalSignOut) {
          // Revokes the refresh token
          await _cognitoIdp.globalSignOut(
            cognito.GlobalSignOutRequest(
              accessToken: tokens.accessToken.raw,
            ),
          );
        }
        // Revokes the access token
        await _cognitoIdp.revokeToken(
          cognito.RevokeTokenRequest(
            clientId: _userPoolConfig.appClientId,
            clientSecret: _userPoolConfig.appClientSecret,
            token: tokens.refreshToken,
          ),
        );
      }
    } finally {
      await _stateMachine.dispatch(
        const CredentialStoreEvent.clearCredentials(),
      );
      _hubEventController.add(AuthHubEvent.signedOut());
    }
    return const SignOutResult();
  }

  @override
  Future<void> deleteUser() async {
    final tokens = await getUserPoolTokens();
    await _cognitoIdp.deleteUser(
      cognito.DeleteUserRequest(
        accessToken: tokens.accessToken.raw,
      ),
    );
    await _stateMachine.dispatch(
      const CredentialStoreEvent.clearCredentials(),
    );
    _hubEventController
      ..add(AuthHubEvent.signedOut())
      ..add(AuthHubEvent.userDeleted());
  }

  /// Checks for the presence of user pool tokens.
  ///
  /// Throws [SignedOutException] if tokens are not present.
  @visibleForTesting
  Future<CognitoUserPoolTokens> getUserPoolTokens() async {
    final credentials = await fetchAuthSession(
      request: AuthSessionRequest(
        options: const CognitoSessionOptions(getAWSCredentials: false),
      ),
    ) as CognitoAuthSession;
    final userPoolTokens = credentials.userPoolTokens;
    if (userPoolTokens == null) {
      throw const SignedOutException('No user is currently signed in');
    }
    return userPoolTokens;
  }

  @override
  Map<String, AmplifyAuthProvider> getAuthProviders() {
    return {
      'iam': AWSIamAuthProvider(),
    };
  }
}
