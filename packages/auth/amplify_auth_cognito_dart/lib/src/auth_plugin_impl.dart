// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_auth_cognito_dart/src/credentials/cognito_keys.dart';
import 'package:amplify_auth_cognito_dart/src/credentials/device_metadata_repository.dart';
import 'package:amplify_auth_cognito_dart/src/flows/constants.dart';
import 'package:amplify_auth_cognito_dart/src/flows/helpers.dart';
import 'package:amplify_auth_cognito_dart/src/flows/hosted_ui/initial_parameters_stub.dart'
    if (dart.library.html) 'package:amplify_auth_cognito_dart/src/flows/hosted_ui/initial_parameters_html.dart';
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
        ResendConfirmationCodeRequest,
        RevokeTokenRequest,
        UpdateDeviceStatusRequest,
        UpdateUserAttributesRequest,
        VerifyUserAttributeRequest;
import 'package:amplify_auth_cognito_dart/src/sdk/sdk_bridge.dart';
import 'package:amplify_auth_cognito_dart/src/state/state.dart';
import 'package:amplify_auth_cognito_dart/src/util/cognito_iam_auth_provider.dart';
import 'package:amplify_auth_cognito_dart/src/util/cognito_user_pools_auth_provider.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';

/// {@template amplify_auth_cognito_dart.amplify_auth_cognito_dart}
/// The AWS Cognito implementation of the Amplify Auth category.
/// {@endtemplate}
class AmplifyAuthCognitoDart extends AuthPluginInterface<
        CognitoAuthUser,
        CognitoUserAttributeKey,
        AuthUserAttribute<CognitoUserAttributeKey>,
        CognitoDevice,
        CognitoSignUpOptions,
        CognitoSignUpResult,
        CognitoConfirmSignUpOptions,
        CognitoSignUpResult,
        CognitoResendSignUpCodeOptions,
        CognitoResendSignUpCodeResult,
        CognitoSignInOptions,
        CognitoSignInResult,
        CognitoConfirmSignInOptions,
        CognitoSignInResult,
        SignOutOptions,
        CognitoSignOutResult,
        CognitoUpdatePasswordOptions,
        UpdatePasswordResult,
        CognitoResetPasswordOptions,
        CognitoResetPasswordResult,
        CognitoConfirmResetPasswordOptions,
        CognitoResetPasswordResult,
        AuthUserOptions,
        FetchUserAttributesOptions,
        CognitoSessionOptions,
        CognitoAuthSession,
        CognitoSignInWithWebUIOptions,
        CognitoSignInResult,
        CognitoUpdateUserAttributeOptions,
        UpdateUserAttributeResult,
        CognitoUpdateUserAttributesOptions,
        ConfirmUserAttributeOptions,
        ConfirmUserAttributeResult,
        CognitoResendUserAttributeConfirmationCodeOptions,
        ResendUserAttributeConfirmationCodeResult>
    with AWSDebuggable, AmplifyLoggerMixin
    implements Closeable {
  /// {@macro amplify_auth_cognito_dart.amplify_auth_cognito_dart}
  AmplifyAuthCognitoDart({
    SecureStorageInterface? credentialStorage,
    HostedUiPlatformFactory? hostedUiPlatformFactory,
  })  : _credentialStorage = credentialStorage,
        _hostedUiPlatformFactory = hostedUiPlatformFactory;

  /// A plugin key which can be used with `Amplify.Auth.getPlugin` to retrieve
  /// a Cognito-specific Auth category interface.
  static const AuthPluginKey<
      CognitoAuthUser,
      CognitoUserAttributeKey,
      AuthUserAttribute<CognitoUserAttributeKey>,
      CognitoDevice,
      CognitoSignUpOptions,
      CognitoSignUpResult,
      CognitoConfirmSignUpOptions,
      CognitoSignUpResult,
      CognitoResendSignUpCodeOptions,
      CognitoResendSignUpCodeResult,
      CognitoSignInOptions,
      CognitoSignInResult,
      CognitoConfirmSignInOptions,
      CognitoSignInResult,
      SignOutOptions,
      SignOutResult,
      CognitoUpdatePasswordOptions,
      UpdatePasswordResult,
      CognitoResetPasswordOptions,
      CognitoResetPasswordResult,
      CognitoConfirmResetPasswordOptions,
      CognitoResetPasswordResult,
      AuthUserOptions,
      FetchUserAttributesOptions,
      CognitoSessionOptions,
      CognitoAuthSession,
      CognitoSignInWithWebUIOptions,
      CognitoSignInResult,
      CognitoUpdateUserAttributeOptions,
      UpdateUserAttributeResult,
      CognitoUpdateUserAttributesOptions,
      ConfirmUserAttributeOptions,
      ConfirmUserAttributeResult,
      CognitoResendUserAttributeConfirmationCodeOptions,
      ResendUserAttributeConfirmationCodeResult,
      AmplifyAuthCognitoDart> pluginKey = _AmplifyAuthCognitoDartPluginKey();

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
    if (!zAssertsEnabled) throw StateError('Can only be called in tests');
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

  /// The device metadata repository, used for handling device operations.
  DeviceMetadataRepository get _deviceRepo =>
      _stateMachine.getOrCreate(DeviceMetadataRepository.token);

  final StreamController<AuthHubEvent> _hubEventController =
      StreamController.broadcast();

  static final AmplifyLogger _logger = AmplifyLogger.category(Category.auth);

  @override
  Future<void> close() async {
    await _hubEventController.close();
  }

  Future<void> _init() async {
    final credentialStorage = _credentialStorage ??
        AmplifySecureStorageWorker(
          config: AmplifySecureStorageConfig(
            scope: 'awsCognitoAuthPlugin',
          ),
        );
    _stateMachine
      ..addInstance<SecureStorageInterface>(credentialStorage)
      ..addInstance<AmplifyLogger>(logger);
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
        if (state is FetchAuthSessionSuccess) {
          final exception = state.session.userPoolTokensResult.exception;
          // TODO(Jordan-Nelson): Update list of exceptions once FetchAuthSession
          /// is updated to only throw SessionExpiredException for expired
          /// sessions.
          if (exception is UnauthorizedException ||
              exception is AuthNotAuthorizedException ||
              exception is SessionExpiredException) {
            hubEvent = AuthHubEvent.sessionExpired();
          }
        }

        if (hubEvent != null) {
          _hubEventController.add(hubEvent);
        }
      },
      cancelOnError: false,
      onDone: _hubEventController.close,
    );
    Amplify.Hub.addChannel(HubChannel.Auth, _hubEventController.stream);
  }

  @override
  Future<void> addPlugin({
    required AmplifyAuthProviderRepository authProviderRepo,
  }) async {
    await super.addPlugin(authProviderRepo: authProviderRepo);
    // Register auth providers to provide auth functionality to other plugins
    // without requiring other plugins to call `Amplify.Auth...` directly.
    authProviderRepo
      ..registerAuthProvider(
        APIAuthorizationType.iam.authProviderToken,
        const CognitoIamAuthProvider(),
      )
      ..registerAuthProvider(
        APIAuthorizationType.userPools.authProviderToken,
        CognitoUserPoolsAuthProvider(),
      );
  }

  @override
  Future<void> configure({
    AmplifyConfig? config,
    required AmplifyAuthProviderRepository authProviderRepo,
  }) async {
    if (config == null) {
      throw ConfigurationError('No Cognito plugin config detected');
    }

    if (_stateMachine
            .getOrCreate(ConfigurationStateMachine.type)
            .currentState
            .type !=
        ConfigurationStateType.notConfigured) {
      throw const AmplifyAlreadyConfiguredException(
        'Amplify has already been configured and re-configuration is not supported.',
        recoverySuggestion:
            'Check if Amplify is already configured using Amplify.isConfigured.',
      );
    }

    await _init();
    _stateMachine.dispatch(ConfigurationEvent.configure(config));

    await for (final state
        in _stateMachine.expect(ConfigurationStateMachine.type).stream) {
      switch (state.type) {
        case ConfigurationStateType.notConfigured:
        case ConfigurationStateType.configuring:
          continue;
        case ConfigurationStateType.configured:
          return;
        case ConfigurationStateType.failure:
          throw (state as ConfigureFailure).exception;
      }
    }
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
    final deliveryMediumStr =
        challengeParameters[CognitoConstants.challengeParamDeliveryMedium];
    var deliveryMedium = DeliveryMedium.unknown;
    switch (deliveryMediumStr) {
      case 'SMS':
        deliveryMedium = DeliveryMedium.sms;
        break;
      case 'EMAIL':
        deliveryMedium = DeliveryMedium.email;
        break;
    }
    return AuthCodeDeliveryDetails(
      destination: destination,
      deliveryMedium: deliveryMedium,
    );
  }

  @override
  Future<CognitoAuthSession> fetchAuthSession({
    CognitoSessionOptions? options,
  }) async {
    _stateMachine.dispatch(FetchAuthSessionEvent.fetch(options));

    await for (final state
        in _stateMachine.expect(FetchAuthSessionStateMachine.type).stream) {
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

  /// {@template amplify_auth_cognito_dart.impl.federate_to_identity_pool}
  /// Federate to a Cognito Identity pool using an external identity provider
  /// previously registered for the identity pool.
  ///
  /// For more information about federation, see the
  /// [docs](https://docs.aws.amazon.com/cognito/latest/developerguide/external-identity-providers.html).
  ///
  /// See also:
  /// - [FederateToIdentityPoolRequest.token]
  /// - [FederateToIdentityPoolRequest.provider]
  /// - [FederateToIdentityPoolRequest.options]
  /// {@endtemplate}
  Future<FederateToIdentityPoolResult> federateToIdentityPool({
    required String token,
    required AuthProvider provider,
    FederateToIdentityPoolOptions? options,
  }) async {
    final request = FederateToIdentityPoolRequest(
      token: token,
      provider: provider,
      options: options,
    );
    _stateMachine.dispatch(FetchAuthSessionEvent.federate(request));
    final session = await fetchAuthSession();
    return FederateToIdentityPoolResult(
      identityId: session.identityIdResult.value,
      credentials: session.credentialsResult.value,
    );
  }

  /// {@template amplify_auth_cognito_dart.impl.clear_federation_to_identity_pool}
  /// Clears the federation previously retrieved via [federateToIdentityPool].
  ///
  /// If there is no federation active, this is a no-op.
  /// {@endtemplate}
  Future<void> clearFederationToIdentityPool() async {
    final identityPoolConfig = _identityPoolConfig;
    if (identityPoolConfig == null) {
      throw const InvalidAccountTypeException.noIdentityPool();
    }
    await _stateMachine.dispatch(
      CredentialStoreEvent.clearCredentials(
        CognitoIdentityPoolKeys(identityPoolConfig),
      ),
    );
    await _stateMachine.loadCredentials();
  }

  @override
  Future<CognitoSignInResult> signInWithWebUI({
    AuthProvider? provider,
    CognitoSignInWithWebUIOptions? options,
  }) async {
    options ??= const CognitoSignInWithWebUIOptions();

    // Create a new state machine which will close the previous one and cancel
    // any pending sign-ins.
    final stateMachine = _stateMachine.create(HostedUiStateMachine.type)
      ..dispatch(
        HostedUiEvent.signIn(
          options: options,
          provider: provider,
        ),
      );

    await for (final state in stateMachine.stream) {
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
          return const CognitoSignInResult(
            isSignedIn: true,
            nextStep: AuthNextSignInStep(
              signInStep: AuthSignInStep.done,
            ),
          );
        case HostedUiStateType.failure:
          state as HostedUiFailure;
          throw state.exception;
      }
    }

    throw const UserCancelledException('The user cancelled the sign-in flow');
  }

  @override
  Future<CognitoSignUpResult> signUp({
    required String username,
    required String password,
    CognitoSignUpOptions? options,
  }) async {
    _stateMachine.dispatch(
      SignUpEvent.initiate(
        parameters: SignUpParameters(
          (p) => p
            ..username = username
            ..password = password,
        ),
        clientMetadata: options?.clientMetadata,
        userAttributes: options?.userAttributes,
        validationData: options?.validationData,
      ),
    );

    await for (final state
        in _stateMachine.expect(SignUpStateMachine.type).stream) {
      switch (state.type) {
        case SignUpStateType.notStarted:
        case SignUpStateType.initiating:
        case SignUpStateType.confirming:
          continue;
        case SignUpStateType.needsConfirmation:
          state as SignUpNeedsConfirmation;
          return CognitoSignUpResult(
            userId: state.userId,
            isSignUpComplete: false,
            nextStep: AuthNextSignUpStep(
              signUpStep: AuthSignUpStep.confirmSignUp,
              codeDeliveryDetails:
                  state.codeDeliveryDetails?.asAuthCodeDeliveryDetails,
            ),
          );
        case SignUpStateType.success:
          state as SignUpSuccess;
          return CognitoSignUpResult(
            userId: state.userId,
            isSignUpComplete: true,
            nextStep: const AuthNextSignUpStep(
              signUpStep: AuthSignUpStep.done,
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
  Future<CognitoSignUpResult> confirmSignUp({
    required String username,
    required String confirmationCode,
    CognitoConfirmSignUpOptions? options,
  }) async {
    _stateMachine.dispatch(
      SignUpEvent.confirm(
        username: username,
        confirmationCode: confirmationCode,
        clientMetadata: options?.clientMetadata,
      ),
    );

    await for (final state
        in _stateMachine.expect(SignUpStateMachine.type).stream) {
      switch (state.type) {
        case SignUpStateType.notStarted:
        case SignUpStateType.initiating:
        case SignUpStateType.confirming:
          continue;
        case SignUpStateType.needsConfirmation:
          state as SignUpNeedsConfirmation;
          return CognitoSignUpResult(
            userId: state.userId,
            isSignUpComplete: false,
            nextStep: AuthNextSignUpStep(
              signUpStep: AuthSignUpStep.confirmSignUp,
              codeDeliveryDetails:
                  state.codeDeliveryDetails?.asAuthCodeDeliveryDetails,
            ),
          );
        case SignUpStateType.success:
          state as SignUpSuccess;
          return CognitoSignUpResult(
            userId: state.userId,
            isSignUpComplete: true,
            nextStep: const AuthNextSignUpStep(
              signUpStep: AuthSignUpStep.done,
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
  Future<CognitoResendSignUpCodeResult> resendSignUpCode({
    required String username,
    CognitoResendSignUpCodeOptions? options,
  }) async {
    final result = await _cognitoIdp.resendConfirmationCode(
      cognito.ResendConfirmationCodeRequest.build((b) {
        b
          ..clientId = _userPoolConfig.appClientId
          ..username = username;

        final clientSecret = _userPoolConfig.appClientSecret;
        if (clientSecret != null) {
          b.secretHash = computeSecretHash(
            username,
            _userPoolConfig.appClientId,
            clientSecret,
          );
        }

        final clientMetadata = options?.clientMetadata ?? const {};
        b.clientMetadata.addAll(clientMetadata);
      }),
    ).result;

    final codeDeliveryDetails =
        result.codeDeliveryDetails?.asAuthCodeDeliveryDetails;
    if (codeDeliveryDetails == null) {
      throw const CodeDeliveryFailureException('Could not deliver code');
    }
    return CognitoResendSignUpCodeResult(codeDeliveryDetails);
  }

  @override
  Future<CognitoSignInResult> signIn({
    required String username,
    String? password,
    CognitoSignInOptions? options,
  }) async {
    options ??= const CognitoSignInOptions();

    // Create a new state machine for every call since it caches values
    // internally on each run.
    final stream = _stateMachine.create(SignInStateMachine.type).stream;
    _stateMachine.dispatch(
      SignInEvent.initiate(
        authFlowType: options.authFlowType,
        parameters: SignInParameters(
          (p) => p
            ..username = username
            ..password = password,
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
          return CognitoSignInResult(
            isSignedIn: false,
            nextStep: AuthNextSignInStep(
              signInStep: state.challengeName.signInStep,
              codeDeliveryDetails: _getChallengeDeliveryDetails(
                state.challengeParameters,
              ),
              additionalInfo: state.challengeParameters,
              missingAttributes: state.requiredAttributes,
            ),
          );
        case SignInStateType.success:
          return const CognitoSignInResult(
            isSignedIn: true,
            nextStep: AuthNextSignInStep(
              signInStep: AuthSignInStep.done,
            ),
          );
        case SignInStateType.failure:
          final exception = (state as SignInFailure).exception;
          if (exception is PasswordResetRequiredException) {
            return const CognitoSignInResult(
              isSignedIn: false,
              nextStep: AuthNextSignInStep(
                signInStep: AuthSignInStep.resetPassword,
              ),
            );
          } else if (exception is UserNotConfirmedException) {
            return const CognitoSignInResult(
              isSignedIn: false,
              nextStep: AuthNextSignInStep(
                signInStep: AuthSignInStep.confirmSignUp,
              ),
            );
          }
          throw exception;
      }
    }

    throw const UserCancelledException('The user cancelled the sign-in flow');
  }

  @override
  Future<CognitoSignInResult> confirmSignIn({
    required String confirmationValue,
    CognitoConfirmSignInOptions? options,
  }) async {
    options ??= const CognitoConfirmSignInOptions();
    _stateMachine.dispatch(
      SignInEvent.respondToChallenge(
        answer: confirmationValue,
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
          return CognitoSignInResult(
            isSignedIn: false,
            nextStep: AuthNextSignInStep(
              signInStep: state.challengeName.signInStep,
              codeDeliveryDetails: _getChallengeDeliveryDetails(
                state.challengeParameters,
              ),
              additionalInfo: state.challengeParameters,
              missingAttributes: state.requiredAttributes,
            ),
          );
        case SignInStateType.success:
          return const CognitoSignInResult(
            isSignedIn: true,
            nextStep: AuthNextSignInStep(
              signInStep: AuthSignInStep.done,
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
  Future<List<AuthUserAttribute<CognitoUserAttributeKey>>> fetchUserAttributes({
    FetchUserAttributesOptions? options,
  }) async {
    final tokens = await getUserPoolTokens();
    final resp = await _cognitoIdp
        .getUser(
          cognito.GetUserRequest(
            accessToken: tokens.accessToken.raw,
          ),
        )
        .result;
    return [
      for (final attributeType in resp.userAttributes)
        attributeType.asAuthUserAttribute,
    ];
  }

  @override
  Future<UpdateUserAttributeResult> updateUserAttribute({
    required CognitoUserAttributeKey userAttributeKey,
    required String value,
    CognitoUpdateUserAttributeOptions? options,
  }) async {
    final results = await updateUserAttributes(
      attributes: [
        AuthUserAttribute(
          userAttributeKey: userAttributeKey,
          value: value,
        ),
      ],
      options: CognitoUpdateUserAttributesOptions(
        clientMetadata: options?.clientMetadata,
      ),
    );
    return results.values.single;
  }

  @override
  Future<Map<CognitoUserAttributeKey, UpdateUserAttributeResult>>
      updateUserAttributes({
    required List<AuthUserAttribute<AuthUserAttributeKey>> attributes,
    CognitoUpdateUserAttributesOptions? options,
  }) async {
    final tokens = await getUserPoolTokens();
    final response = await _cognitoIdp
        .updateUserAttributes(
          cognito.UpdateUserAttributesRequest.build(
            (b) => b
              ..accessToken = tokens.accessToken.raw
              ..clientMetadata.addAll(options?.clientMetadata ?? const {})
              ..userAttributes.addAll({
                for (final attr in attributes) attr.asAttributeType,
              }),
          ),
        )
        .result;
    final result = <CognitoUserAttributeKey, UpdateUserAttributeResult>{};
    final codeDeliveryDetailsList = response.codeDeliveryDetailsList ??
        const <cognito.CodeDeliveryDetailsType>[];
    for (final attribute in attributes) {
      final codeDeliveryDetails = codeDeliveryDetailsList.firstWhereOrNull(
        (details) => details.attributeName == attribute.userAttributeKey.key,
      );

      // Unless we receive code delivery details, we must assume the attribute
      // was successfully updated since otherwise the call to Cognito would have
      // thrown an exception.
      final isUpdated = codeDeliveryDetails == null;
      final nextStep = isUpdated
          ? AuthUpdateAttributeStep.done
          : AuthUpdateAttributeStep.confirmAttributeWithCode;
      result[attribute.userAttributeKey as CognitoUserAttributeKey] =
          UpdateUserAttributeResult(
        isUpdated: isUpdated,
        nextStep: AuthNextUpdateAttributeStep(
          updateAttributeStep: nextStep,
          codeDeliveryDetails: codeDeliveryDetails?.asAuthCodeDeliveryDetails,
        ),
      );
    }
    return result;
  }

  @override
  Future<ConfirmUserAttributeResult> confirmUserAttribute({
    required CognitoUserAttributeKey userAttributeKey,
    required String confirmationCode,
    ConfirmUserAttributeOptions? options,
  }) async {
    final tokens = await getUserPoolTokens();
    await _cognitoIdp
        .verifyUserAttribute(
          cognito.VerifyUserAttributeRequest(
            accessToken: tokens.accessToken.raw,
            attributeName: userAttributeKey.key,
            code: confirmationCode,
          ),
        )
        .result;
    return const ConfirmUserAttributeResult();
  }

  @override
  Future<ResendUserAttributeConfirmationCodeResult>
      resendUserAttributeConfirmationCode({
    required CognitoUserAttributeKey userAttributeKey,
    CognitoResendUserAttributeConfirmationCodeOptions? options,
  }) async {
    final tokens = await getUserPoolTokens();
    final result = await _cognitoIdp
        .getUserAttributeVerificationCode(
          cognito.GetUserAttributeVerificationCodeRequest(
            accessToken: tokens.accessToken.raw,
            attributeName: userAttributeKey.key,
            clientMetadata: options?.clientMetadata,
          ),
        )
        .result;
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
    required String oldPassword,
    required String newPassword,
    // TODO(dnys1): Where does clientMetadata go?
    CognitoUpdatePasswordOptions? options,
  }) async {
    final tokens = await getUserPoolTokens();
    await _cognitoIdp
        .changePassword(
          cognito.ChangePasswordRequest(
            accessToken: tokens.accessToken.raw,
            previousPassword: oldPassword,
            proposedPassword: newPassword,
          ),
        )
        .result;
    return const UpdatePasswordResult();
  }

  @override
  Future<CognitoResetPasswordResult> resetPassword({
    required String username,
    CognitoResetPasswordOptions? options,
  }) async {
    final result = await _cognitoIdp.forgotPassword(
      cognito.ForgotPasswordRequest.build((b) {
        b
          ..clientId = _userPoolConfig.appClientId
          ..username = username;

        final clientSecret = _userPoolConfig.appClientSecret;
        if (clientSecret != null) {
          b.secretHash = computeSecretHash(
            username,
            _userPoolConfig.appClientId,
            clientSecret,
          );
        }

        final clientMetadata = options?.clientMetadata ?? const {};
        b.clientMetadata.addAll(clientMetadata);
      }),
    ).result;

    final codeDeliveryDetails =
        result.codeDeliveryDetails?.asAuthCodeDeliveryDetails;
    if (codeDeliveryDetails == null) {
      throw const CodeDeliveryFailureException('Could not deliver code');
    }

    return CognitoResetPasswordResult(
      isPasswordReset: false,
      nextStep: ResetPasswordStep(
        updateStep: AuthResetPasswordStep.confirmResetPasswordWithCode,
        codeDeliveryDetails:
            result.codeDeliveryDetails?.asAuthCodeDeliveryDetails,
      ),
    );
  }

  @override
  Future<CognitoResetPasswordResult> confirmResetPassword({
    required String username,
    required String newPassword,
    required String confirmationCode,
    CognitoConfirmResetPasswordOptions? options,
  }) async {
    await _cognitoIdp.confirmForgotPassword(
      cognito.ConfirmForgotPasswordRequest.build((b) {
        b
          ..username = username
          ..password = newPassword
          ..confirmationCode = confirmationCode
          ..clientId = _userPoolConfig.appClientId;

        final clientSecret = _userPoolConfig.appClientSecret;
        if (clientSecret != null) {
          b.secretHash = computeSecretHash(
            username,
            _userPoolConfig.appClientId,
            clientSecret,
          );
        }

        final clientMetadata = options?.clientMetadata ?? const {};
        b.clientMetadata.addAll(clientMetadata);
      }),
    ).result;

    return const CognitoResetPasswordResult(
      isPasswordReset: true,
      nextStep: ResetPasswordStep(updateStep: AuthResetPasswordStep.done),
    );
  }

  @override
  Future<CognitoAuthUser> getCurrentUser({
    AuthUserOptions? options,
  }) async {
    final credentials = await stateMachine.loadCredentials();
    final tokens = credentials.userPoolTokens;
    final signInDetails = credentials.signInDetails;
    if (tokens == null || signInDetails == null) {
      throw const SignedOutException('No user is currently signed in');
    }
    final userId = tokens.idToken.userId;
    final username = tokens.username;
    return CognitoAuthUser(
      userId: userId,
      username: username,
      signInDetails: signInDetails,
    );
  }

  @override
  Future<void> rememberDevice() async {
    final tokens = await getUserPoolTokens();
    final username = tokens.username;
    final deviceSecrets = await _deviceRepo.get(username);
    final deviceKey = deviceSecrets?.deviceKey;
    if (deviceSecrets == null || deviceKey == null) {
      throw const DeviceNotTrackedException();
    }
    if (deviceSecrets.deviceStatus ==
        cognito.DeviceRememberedStatusType.remembered) {
      _logger.info('Device is already remembered');
      return;
    }
    await _cognitoIdp
        .updateDeviceStatus(
          cognito.UpdateDeviceStatusRequest(
            accessToken: tokens.accessToken.raw,
            deviceKey: deviceKey,
            deviceRememberedStatus:
                cognito.DeviceRememberedStatusType.remembered,
          ),
        )
        .result;
    await _deviceRepo.put(
      username,
      deviceSecrets.rebuild(
        (b) => b.deviceStatus = cognito.DeviceRememberedStatusType.remembered,
      ),
    );
  }

  @override
  Future<void> forgetDevice([CognitoDevice? device]) async {
    final tokens = await getUserPoolTokens();
    final username = tokens.username;
    final deviceSecrets = await _deviceRepo.get(username);
    final deviceKey = device?.id ?? deviceSecrets?.deviceKey;
    if (deviceKey == null) {
      throw const DeviceNotTrackedException();
    }
    await _deviceRepo.remove(username);
    await _cognitoIdp
        .forgetDevice(
          cognito.ForgetDeviceRequest(
            accessToken: tokens.accessToken.raw,
            deviceKey: deviceKey,
          ),
        )
        .result;
  }

  @override
  Future<List<CognitoDevice>> fetchDevices() async {
    final allDevices = <CognitoDevice>[];

    String? paginationToken;
    do {
      final tokens = await getUserPoolTokens();
      const devicePageLimit = 60;
      final resp = await _cognitoIdp
          .listDevices(
            cognito.ListDevicesRequest(
              accessToken: tokens.accessToken.raw,
              limit: devicePageLimit,
              paginationToken: paginationToken,
            ),
          )
          .result;
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

  // TODO(dnys1): Move to SignOutStateMachine
  @override
  Future<CognitoSignOutResult> signOut({
    SignOutOptions? options,
  }) async {
    options ??= const SignOutOptions();

    // Try to retrieve tokens and return successfully if already logged out.
    // Do not clear other storage items (e.g. AWS credentials) in this case,
    // since an unauthenticated user may still be cached.
    final CognitoUserPoolTokens tokens;
    try {
      tokens = await getUserPoolTokens();
    } on AuthException {
      _hubEventController.add(AuthHubEvent.signedOut());
      return const CognitoSignOutResult.complete();
    }

    // Capture results of individual steps to determine overall success.
    HostedUiException? hostedUiException;
    GlobalSignOutException? globalSignOutException;
    RevokeTokenException? revokeTokenException;

    // Sign out via Hosted UI, if configured.
    Future<CognitoSignOutResult?> signOutHostedUi() async {
      if (tokens.signInMethod == CognitoSignInMethod.hostedUi) {
        _stateMachine.dispatch(const HostedUiEvent.signOut());
        final hostedUiResult = await _stateMachine.stream
            .where(
              (state) => state is HostedUiSignedOut || state is HostedUiFailure,
            )
            .first;
        if (hostedUiResult is HostedUiFailure) {
          final exception = hostedUiResult.exception;
          if (exception is UserCancelledException) {
            return CognitoSignOutResult.failed(exception);
          }
          hostedUiException = HostedUiException(
            underlyingException: hostedUiResult.exception,
          );
        }
      }
      return null;
    }

    // On native platforms, Hosted UI should be logged out first. This gives
    // users the opportunity to cancel the sign out flow if they wish before
    // credentials are revoked and cleared.
    //
    // On Web, this should be the very last thing to happen. Since we redirect
    // as a result of signing out Hosted UI, credentials should be revoked and
    // cleared before this happens.
    if (!zIsWeb) {
      final hostedUiResult = await signOutHostedUi();
      if (hostedUiResult != null) {
        return hostedUiResult;
      }
    }

    // Do not try to send Cognito requests for plugin configs without an
    // Identity Pool, since the requests will fail.
    if (_identityPoolConfig != null) {
      if (options.globalSignOut) {
        // Revokes the refresh token
        try {
          await _cognitoIdp
              .globalSignOut(
                cognito.GlobalSignOutRequest(
                  accessToken: tokens.accessToken.raw,
                ),
              )
              .result;
        } on Exception catch (e) {
          globalSignOutException = GlobalSignOutException(
            accessToken: tokens.accessToken.raw,
            underlyingException: e,
          );
        }
      }
      // Revokes the access token
      if (globalSignOutException != null) {
        revokeTokenException = RevokeTokenException(
          refreshToken: tokens.refreshToken,
          underlyingException: Exception(
            'RevokeToken not attempted because GlobalSignOut failed.',
          ),
        );
      } else {
        try {
          await _cognitoIdp
              .revokeToken(
                cognito.RevokeTokenRequest(
                  clientId: _userPoolConfig.appClientId,
                  clientSecret: _userPoolConfig.appClientSecret,
                  token: tokens.refreshToken,
                ),
              )
              .result;
        } on Exception catch (e) {
          revokeTokenException = RevokeTokenException(
            refreshToken: tokens.refreshToken,
            underlyingException: e,
          );
        }
      }
    }

    // Credentials are cleared for all partial sign out cases.
    await _stateMachine.dispatch(
      const CredentialStoreEvent.clearCredentials(),
    );
    await _stateMachine
        .expect(CredentialStoreStateMachine.type)
        .getCredentialsResult();
    _hubEventController.add(AuthHubEvent.signedOut());

    if (globalSignOutException != null || revokeTokenException != null) {
      return CognitoSignOutResult.partial(
        hostedUiException: hostedUiException,
        globalSignOutException: globalSignOutException,
        revokeTokenException: revokeTokenException,
      );
    }

    if (zIsWeb) {
      await signOutHostedUi();
    }

    if (hostedUiException != null) {
      return CognitoSignOutResult.partial(
        hostedUiException: hostedUiException,
        globalSignOutException: globalSignOutException,
        revokeTokenException: revokeTokenException,
      );
    }

    return const CognitoSignOutResult.complete();
  }

  @override
  Future<void> deleteUser() async {
    final tokens = await getUserPoolTokens();
    await _cognitoIdp
        .deleteUser(
          cognito.DeleteUserRequest(
            accessToken: tokens.accessToken.raw,
          ),
        )
        .result;
    await _stateMachine.dispatch(
      const CredentialStoreEvent.clearCredentials(),
    );
    await _deviceRepo.remove(tokens.username);
    _hubEventController
      ..add(AuthHubEvent.signedOut())
      ..add(AuthHubEvent.userDeleted());
  }

  /// Gets the current user pool tokens.
  ///
  /// Throws [SignedOutException] if tokens are not present.
  @visibleForTesting
  Future<CognitoUserPoolTokens> getUserPoolTokens() async {
    final authSession = await fetchAuthSession();
    return authSession.userPoolTokensResult.value;
  }

  @override
  String get runtimeTypeName => 'AmplifyAuthCognitoDart';
}

class _AmplifyAuthCognitoDartPluginKey extends AuthPluginKey<
    CognitoAuthUser,
    CognitoUserAttributeKey,
    AuthUserAttribute<CognitoUserAttributeKey>,
    CognitoDevice,
    CognitoSignUpOptions,
    CognitoSignUpResult,
    CognitoConfirmSignUpOptions,
    CognitoSignUpResult,
    CognitoResendSignUpCodeOptions,
    CognitoResendSignUpCodeResult,
    CognitoSignInOptions,
    CognitoSignInResult,
    CognitoConfirmSignInOptions,
    CognitoSignInResult,
    SignOutOptions,
    SignOutResult,
    CognitoUpdatePasswordOptions,
    UpdatePasswordResult,
    CognitoResetPasswordOptions,
    CognitoResetPasswordResult,
    CognitoConfirmResetPasswordOptions,
    CognitoResetPasswordResult,
    AuthUserOptions,
    FetchUserAttributesOptions,
    CognitoSessionOptions,
    CognitoAuthSession,
    CognitoSignInWithWebUIOptions,
    CognitoSignInResult,
    CognitoUpdateUserAttributeOptions,
    UpdateUserAttributeResult,
    CognitoUpdateUserAttributesOptions,
    ConfirmUserAttributeOptions,
    ConfirmUserAttributeResult,
    CognitoResendUserAttributeConfirmationCodeOptions,
    ResendUserAttributeConfirmationCodeResult,
    AmplifyAuthCognitoDart> {
  const _AmplifyAuthCognitoDartPluginKey();

  @override
  String get runtimeTypeName => 'AmplifyAuthCognitoDart';
}
