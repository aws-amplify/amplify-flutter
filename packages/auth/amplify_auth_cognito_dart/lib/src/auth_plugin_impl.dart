// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

// ignore: implementation_imports
import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/endpoint_client/endpoint_info_store_manager.dart';
import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_auth_cognito_dart/src/credentials/cognito_keys.dart';
import 'package:amplify_auth_cognito_dart/src/credentials/device_metadata_repository.dart';
import 'package:amplify_auth_cognito_dart/src/flows/constants.dart';
import 'package:amplify_auth_cognito_dart/src/flows/helpers.dart';
import 'package:amplify_auth_cognito_dart/src/flows/hosted_ui/hosted_ui_platform.dart';
import 'package:amplify_auth_cognito_dart/src/flows/hosted_ui/initial_parameters_stub.dart'
    if (dart.library.html) 'package:amplify_auth_cognito_dart/src/flows/hosted_ui/initial_parameters_html.dart';
import 'package:amplify_auth_cognito_dart/src/model/auth_user_ext.dart';
import 'package:amplify_auth_cognito_dart/src/model/hosted_ui/oauth_parameters.dart';
import 'package:amplify_auth_cognito_dart/src/model/session/cognito_sign_in_details.dart';
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
        ListDevicesRequest,
        ResendConfirmationCodeRequest,
        UpdateDeviceStatusRequest,
        UpdateUserAttributesRequest,
        VerifyUserAttributeRequest;
import 'package:amplify_auth_cognito_dart/src/sdk/sdk_bridge.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/analytics_metadata_type.dart';
import 'package:amplify_auth_cognito_dart/src/state/cognito_state_machine.dart';
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
class AmplifyAuthCognitoDart extends AuthPluginInterface
    with AWSDebuggable, AmplifyLoggerMixin
    implements Closeable {
  /// {@macro amplify_auth_cognito_dart.amplify_auth_cognito_dart}
  AmplifyAuthCognitoDart({
    SecureStorageFactory? secureStorageFactory,
    @protected HostedUiPlatformFactory? hostedUiPlatformFactory,
  })  : _secureStorageFactory =
            secureStorageFactory ?? AmplifySecureStorageWorker.factoryFrom(),
        _hostedUiPlatformFactory = hostedUiPlatformFactory;

  /// A plugin key which can be used with `Amplify.Auth.getPlugin` to retrieve
  /// a Cognito-specific Auth category interface.
  static const AuthPluginKey<AmplifyAuthCognitoDart> pluginKey =
      _AmplifyAuthCognitoDartPluginKey();

  /// Capture the initial parameters on instantiation of this class.
  ///
  /// {@macro amplify_auth_cognito.initial_parameters}
  final OAuthParameters? _initialParameters = initialParameters;

  /// Factory for creating secure storage.
  ///
  /// Creates an instance of [SecureStorageInterface] with scope input.
  ///
  /// Used to create on-device credential storage.
  final SecureStorageFactory _secureStorageFactory;

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

  late CognitoAuthStateMachine _stateMachine = CognitoAuthStateMachine(
    dependencyManager: dependencies,
  );
  StreamSubscription<AuthState>? _stateMachineSubscription;

  /// The underlying state machine, for use in subclasses.
  @protected
  @visibleForTesting
  CognitoAuthStateMachine get stateMachine => _stateMachine;

  @visibleForTesting
  set stateMachine(CognitoAuthStateMachine stateMachine) {
    if (!zAssertsEnabled) throw StateError('Can only be called in tests');
    _stateMachine = stateMachine;
  }

  /// The Cognito Identity Provider client.
  cognito.CognitoIdentityProviderClient get _cognitoIdp {
    final cognitoIdp =
        _stateMachine.get<cognito.CognitoIdentityProviderClient>();
    if (cognitoIdp == null) {
      throw const InvalidAccountTypeException.noUserPool();
    }
    return cognitoIdp;
  }

  /// The Cognito user pool configuration.
  CognitoUserPoolConfig get _userPoolConfig {
    final userPoolConfig = _stateMachine.get<CognitoUserPoolConfig>();
    if (userPoolConfig == null) {
      throw const InvalidAccountTypeException.noUserPool();
    }
    return userPoolConfig;
  }

  /// The Cognito identity pool configuration.
  CognitoIdentityCredentialsProvider? get _identityPoolConfig =>
      _stateMachine.get();

  /// The device metadata repository, used for handling device operations.
  DeviceMetadataRepository get _deviceRepo => _stateMachine.getOrCreate();

  /// Analytics Metadata Provider
  AnalyticsMetadataType? get _analyticsMetadata => _stateMachine.get();

  final StreamController<AuthHubEvent> _hubEventController =
      StreamController.broadcast();

  static final AmplifyLogger _logger = AmplifyLogger.category(Category.auth);

  @override
  Future<void> close() async {
    await _stateMachineSubscription?.cancel();
    await _stateMachine.close();
    await _hubEventController.close();
  }

  Future<void> _init() async {
    _stateMachine
      ..addInstance<SecureStorageInterface>(
        _secureStorageFactory(AmplifySecureStorageScope.awsCognitoAuthPlugin),
      )
      ..addInstance<AmplifyLogger>(logger);
    if (_hostedUiPlatformFactory != null) {
      _stateMachine.addBuilder<HostedUiPlatform>(_hostedUiPlatformFactory!);
    }
    if (_initialParameters != null) {
      _stateMachine.addInstance<OAuthParameters>(_initialParameters!);
    }
    _stateMachineSubscription = _stateMachine.stream.listen(
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
          if (exception is SessionExpiredException) {
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

    // Dependencies for AnalyticsMetadataType
    _stateMachine.addBuilder<EndpointInfoStoreManager>(
      (_) => EndpointInfoStoreManager(
        store: AmplifySecureStorageWorker.factoryFrom()(
          AmplifySecureStorageScope.awsPinpointAnalyticsPlugin,
        ),
      ),
    );

    await _init();
    await _stateMachine.accept(ConfigurationEvent.configure(config)).accepted;

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
    final deliveryMedium = switch (deliveryMediumStr) {
      'SMS' => DeliveryMedium.sms,
      'EMAIL' => DeliveryMedium.email,
      _ => DeliveryMedium.unknown,
    };
    return AuthCodeDeliveryDetails(
      destination: destination,
      deliveryMedium: deliveryMedium,
    );
  }

  @override
  Future<CognitoAuthSession> fetchAuthSession({
    FetchAuthSessionOptions? options,
  }) async {
    final sessionState =
        await _stateMachine.acceptAndComplete<FetchAuthSessionSuccess>(
      FetchAuthSessionEvent.fetch(options),
    );
    return sessionState.session;
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
    final sessionState =
        await _stateMachine.acceptAndComplete<FetchAuthSessionSuccess>(
      FetchAuthSessionEvent.federate(request),
    );
    final session = sessionState.session;
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
    await stateMachine.acceptAndComplete(
      CredentialStoreEvent.clearCredentials(
        CognitoIdentityPoolKeys(identityPoolConfig),
      ),
    );
  }

  @override
  Future<CognitoSignInResult> signInWithWebUI({
    AuthProvider? provider,
    SignInWithWebUIOptions? options,
  }) async {
    final pluginOptions = reifyPluginOptions(
      pluginOptions: options?.pluginOptions,
      defaultPluginOptions: const CognitoSignInWithWebUIPluginOptions(),
    );

    // Create a new state machine which will close the previous one and cancel
    // any pending sign-ins.
    final stateMachine = _stateMachine.create(HostedUiStateMachine.type);
    await _stateMachine
        .accept(
          HostedUiEvent.signIn(
            options: pluginOptions,
            provider: provider,
          ),
        )
        .accepted;

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
    SignUpOptions? options,
  }) async {
    options ??= const SignUpOptions();
    final pluginOptions = reifyPluginOptions(
      pluginOptions: options.pluginOptions,
      defaultPluginOptions: const CognitoSignUpPluginOptions(),
    );
    await _stateMachine
        .accept(
          SignUpEvent.initiate(
            parameters: SignUpParameters(
              (p) => p
                ..username = username
                ..password = password,
            ),
            userAttributes: options.userAttributes,
            clientMetadata: pluginOptions.clientMetadata,
            validationData: pluginOptions.validationData,
          ),
        )
        .accepted;

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
    ConfirmSignUpOptions? options,
  }) async {
    options ??= const ConfirmSignUpOptions();
    final pluginOptions = reifyPluginOptions(
      pluginOptions: options.pluginOptions,
      defaultPluginOptions: const CognitoConfirmSignUpPluginOptions(),
    );
    await _stateMachine
        .accept(
          SignUpEvent.confirm(
            username: username,
            confirmationCode: confirmationCode,
            clientMetadata: pluginOptions.clientMetadata,
          ),
        )
        .accepted;

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
    ResendSignUpCodeOptions? options,
  }) async {
    final pluginOptions = reifyPluginOptions(
      pluginOptions: options?.pluginOptions,
      defaultPluginOptions: const CognitoResendSignUpCodePluginOptions(),
    );
    final result = await _cognitoIdp.resendConfirmationCode(
      cognito.ResendConfirmationCodeRequest.build((b) {
        b
          ..clientId = _userPoolConfig.appClientId
          ..username = username
          ..analyticsMetadata = _analyticsMetadata?.toBuilder();

        final clientSecret = _userPoolConfig.appClientSecret;
        if (clientSecret != null) {
          b.secretHash = computeSecretHash(
            username,
            _userPoolConfig.appClientId,
            clientSecret,
          );
        }

        final clientMetadata = pluginOptions.clientMetadata;
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

  CognitoSignInResult _processSignInResult(SignInState result) {
    switch (result.type) {
      case SignInStateType.notStarted:
      case SignInStateType.initiating:
      case SignInStateType.failure:
        // This should never happen.
        throw const UnknownException('Sign in could not be completed');
      case SignInStateType.cancelling:
        throw const UserCancelledException(
          'The user canceled the sign-in flow',
        );
      case SignInStateType.challenge:
        result as SignInChallenge;
        return CognitoSignInResult(
          isSignedIn: false,
          nextStep: AuthNextSignInStep(
            signInStep: result.challengeName.signInStep,
            codeDeliveryDetails: _getChallengeDeliveryDetails(
              result.challengeParameters,
            ),
            additionalInfo: result.challengeParameters,
            missingAttributes: result.requiredAttributes,
          ),
        );
      case SignInStateType.success:
        return const CognitoSignInResult(
          isSignedIn: true,
          nextStep: AuthNextSignInStep(
            signInStep: AuthSignInStep.done,
          ),
        );
    }
  }

  @override
  Future<CognitoSignInResult> signIn({
    required String username,
    String? password,
    SignInOptions? options,
  }) async {
    final pluginOptions = reifyPluginOptions(
      pluginOptions: options?.pluginOptions,
      defaultPluginOptions: const CognitoSignInPluginOptions(),
    );

    try {
      final result = await _stateMachine.acceptAndComplete<SignInState>(
        SignInEvent.initiate(
          authFlowType: pluginOptions.authFlowType,
          parameters: SignInParameters(
            (p) => p
              ..username = username
              ..password = password,
          ),
          clientMetadata: pluginOptions.clientMetadata,
        ),
      );

      return _processSignInResult(result);
    } on PasswordResetRequiredException {
      return const CognitoSignInResult(
        isSignedIn: false,
        nextStep: AuthNextSignInStep(
          signInStep: AuthSignInStep.resetPassword,
        ),
      );
    } on UserNotConfirmedException {
      return const CognitoSignInResult(
        isSignedIn: false,
        nextStep: AuthNextSignInStep(
          signInStep: AuthSignInStep.confirmSignUp,
        ),
      );
    }
  }

  @override
  Future<CognitoSignInResult> confirmSignIn({
    required String confirmationValue,
    ConfirmSignInOptions? options,
  }) async {
    final pluginOptions = reifyPluginOptions(
      pluginOptions: options?.pluginOptions,
      defaultPluginOptions: const CognitoConfirmSignInPluginOptions(),
    );

    final result = await _stateMachine.acceptAndComplete<SignInState>(
      SignInEvent.respondToChallenge(
        answer: confirmationValue,
        clientMetadata: pluginOptions.clientMetadata,
        userAttributes: pluginOptions.userAttributes,
      ),
    );

    return _processSignInResult(result);
  }

  @override
  Future<List<AuthUserAttribute>> fetchUserAttributes({
    FetchUserAttributesOptions? options,
  }) async {
    final tokens = await stateMachine.getUserPoolTokens();
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
    required AuthUserAttributeKey userAttributeKey,
    required String value,
    UpdateUserAttributeOptions? options,
  }) async {
    final pluginOptions = reifyPluginOptions(
      pluginOptions: options?.pluginOptions,
      defaultPluginOptions: const CognitoUpdateUserAttributePluginOptions(),
    );
    final results = await updateUserAttributes(
      attributes: [
        AuthUserAttribute(
          userAttributeKey: userAttributeKey,
          value: value,
        ),
      ],
      options: UpdateUserAttributesOptions(
        pluginOptions: CognitoUpdateUserAttributesPluginOptions(
          clientMetadata: pluginOptions.clientMetadata,
        ),
      ),
    );
    return results.values.single;
  }

  @override
  Future<Map<CognitoUserAttributeKey, UpdateUserAttributeResult>>
      updateUserAttributes({
    required List<AuthUserAttribute> attributes,
    UpdateUserAttributesOptions? options,
  }) async {
    final pluginOptions = reifyPluginOptions(
      pluginOptions: options?.pluginOptions,
      defaultPluginOptions: const CognitoUpdateUserAttributesPluginOptions(),
    );
    final tokens = await stateMachine.getUserPoolTokens();
    final response = await _cognitoIdp
        .updateUserAttributes(
          cognito.UpdateUserAttributesRequest.build(
            (b) => b
              ..accessToken = tokens.accessToken.raw
              ..clientMetadata.addAll(pluginOptions.clientMetadata)
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
      result[attribute.userAttributeKey.toCognitoUserAttributeKey()] =
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
    required AuthUserAttributeKey userAttributeKey,
    required String confirmationCode,
    ConfirmUserAttributeOptions? options,
  }) async {
    final tokens = await stateMachine.getUserPoolTokens();
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
    required AuthUserAttributeKey userAttributeKey,
    ResendUserAttributeConfirmationCodeOptions? options,
  }) async {
    final pluginOptions = reifyPluginOptions(
      pluginOptions: options?.pluginOptions,
      defaultPluginOptions:
          const CognitoResendUserAttributeConfirmationCodePluginOptions(),
    );
    final tokens = await stateMachine.getUserPoolTokens();
    final result = await _cognitoIdp
        .getUserAttributeVerificationCode(
          cognito.GetUserAttributeVerificationCodeRequest(
            accessToken: tokens.accessToken.raw,
            attributeName: userAttributeKey.key,
            clientMetadata: pluginOptions.clientMetadata,
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
    UpdatePasswordOptions? options,
  }) async {
    final tokens = await stateMachine.getUserPoolTokens();
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
    ResetPasswordOptions? options,
  }) async {
    final pluginOptions = reifyPluginOptions(
      pluginOptions: options?.pluginOptions,
      defaultPluginOptions: const CognitoResetPasswordPluginOptions(),
    );
    final result = await _cognitoIdp.forgotPassword(
      cognito.ForgotPasswordRequest.build((b) {
        b
          ..clientId = _userPoolConfig.appClientId
          ..username = username
          ..analyticsMetadata = _analyticsMetadata?.toBuilder();

        final clientSecret = _userPoolConfig.appClientSecret;
        if (clientSecret != null) {
          b.secretHash = computeSecretHash(
            username,
            _userPoolConfig.appClientId,
            clientSecret,
          );
        }

        b.clientMetadata.addAll(pluginOptions.clientMetadata);
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
    ConfirmResetPasswordOptions? options,
  }) async {
    final pluginOptions = reifyPluginOptions(
      pluginOptions: options?.pluginOptions,
      defaultPluginOptions: const CognitoConfirmResetPasswordPluginOptions(),
    );
    await _cognitoIdp.confirmForgotPassword(
      cognito.ConfirmForgotPasswordRequest.build((b) {
        b
          ..username = username
          ..password = newPassword
          ..confirmationCode = confirmationCode
          ..clientId = _userPoolConfig.appClientId
          ..clientMetadata.addAll(pluginOptions.clientMetadata)
          ..analyticsMetadata = _analyticsMetadata?.toBuilder();

        final clientSecret = _userPoolConfig.appClientSecret;
        if (clientSecret != null) {
          b.secretHash = computeSecretHash(
            username,
            _userPoolConfig.appClientId,
            clientSecret,
          );
        }
      }),
    ).result;

    return const CognitoResetPasswordResult(
      isPasswordReset: true,
      nextStep: ResetPasswordStep(updateStep: AuthResetPasswordStep.done),
    );
  }

  @override
  Future<CognitoAuthUser> getCurrentUser({
    GetCurrentUserOptions? options,
  }) async {
    final credentialsState =
        await stateMachine.acceptAndComplete<CredentialStoreSuccess>(
      const CredentialStoreEvent.loadCredentialStore(),
    );
    final credentials = credentialsState.data;
    final signInDetails = credentials.signInDetails;
    // Per the `federateToIdentityPool` design, users cannot access user pool
    // methods while federated. They must first clear federation to the
    // identity pool and then sign into the user pool normally.
    if (signInDetails is CognitoSignInDetailsFederated) {
      throw const InvalidStateException.federatedToIdentityPool();
    }
    final tokens = credentials.userPoolTokens;
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
    final tokens = await stateMachine.getUserPoolTokens();
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
  Future<void> forgetDevice([AuthDevice? device]) async {
    final tokens = await stateMachine.getUserPoolTokens();
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
      final tokens = await stateMachine.getUserPoolTokens();
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

  @override
  Future<CognitoSignOutResult> signOut({
    SignOutOptions? options,
  }) async {
    options ??= const SignOutOptions();

    final resultState = await stateMachine.acceptAndComplete(
      SignOutEvent.initiate(options),
    );

    final CognitoSignOutResult signOutResult;
    if (resultState is SignOutSuccess) {
      signOutResult = const CognitoSignOutResult.complete();
    } else if (resultState is SignOutPartialFailure) {
      signOutResult = CognitoSignOutResult.partial(
        hostedUiException: resultState.hostedUiException,
        globalSignOutException: resultState.globalSignOutException,
        revokeTokenException: resultState.revokeTokenException,
      );
    } else {
      resultState as SignOutFailure;
      final exception = AuthException.fromException(resultState.exception);
      signOutResult = CognitoSignOutResult.failed(exception);
    }
    if (signOutResult is! CognitoFailedSignOut) {
      _hubEventController.add(AuthHubEvent.signedOut());
    }
    return signOutResult;
  }

  @override
  Future<void> deleteUser() async {
    final tokens = await stateMachine.getUserPoolTokens();
    await _cognitoIdp
        .deleteUser(
          cognito.DeleteUserRequest(
            accessToken: tokens.accessToken.raw,
          ),
        )
        .result;
    await stateMachine.acceptAndComplete(
      const CredentialStoreEvent.clearCredentials(),
    );
    await _deviceRepo.remove(tokens.username);
    _hubEventController
      ..add(AuthHubEvent.signedOut())
      ..add(AuthHubEvent.userDeleted());
  }

  @override
  String get runtimeTypeName => 'AmplifyAuthCognitoDart';
}

class _AmplifyAuthCognitoDartPluginKey
    extends AuthPluginKey<AmplifyAuthCognitoDart> {
  const _AmplifyAuthCognitoDartPluginKey();

  @override
  String get runtimeTypeName => 'AmplifyAuthCognitoDart';
}
