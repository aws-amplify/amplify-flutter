// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

// ignore: implementation_imports
import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/endpoint_client/endpoint_info_store_manager.dart';
import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_auth_cognito_dart/src/credentials/cognito_keys.dart';
import 'package:amplify_auth_cognito_dart/src/credentials/device_metadata_repository.dart';
import 'package:amplify_auth_cognito_dart/src/flows/helpers.dart';
import 'package:amplify_auth_cognito_dart/src/flows/hosted_ui/hosted_ui_platform.dart';
import 'package:amplify_auth_cognito_dart/src/flows/hosted_ui/initial_parameters_stub.dart'
    if (dart.library.html) 'package:amplify_auth_cognito_dart/src/flows/hosted_ui/initial_parameters_html.dart';
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
        UserContextDataType,
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
// ignore: implementation_imports, invalid_use_of_internal_member
import 'package:amplify_core/src/http/amplify_category_method.dart';
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

  ASFContextDataProvider get _contextDataProvider => stateMachine.getOrCreate();

  Future<cognito.UserContextDataType?> _getContextData(String username) async {
    return _contextDataProvider.buildRequestData(username);
  }

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
      _stateMachine.addBuilder<HostedUiPlatform>(_hostedUiPlatformFactory);
    }
    if (_initialParameters != null) {
      _stateMachine.addInstance<OAuthParameters>(_initialParameters);
    }
    _stateMachineSubscription = _stateMachine.stream.listen(
      (state) {
        final hubEvent = switch (state) {
          HostedUiSignedIn(:final user) ||
          SignInSuccess(:final user) =>
            AuthHubEvent.signedIn(user),
          FetchAuthSessionSuccess(:final session)
              when session.userPoolTokensResult.exception
                  is SessionExpiredException =>
            AuthHubEvent.sessionExpired(),
          _ => null,
        };

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
    AmplifyOutputs? config,
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
    await _stateMachine.acceptAndComplete<Configured>(
      ConfigurationEvent.configure(config),
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
    return identifyCall(
      AuthCategoryMethod.federateToIdentityPool,
      () async {
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
      },
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
      switch (state) {
        case HostedUiNotConfigured _:
        case HostedUiConfiguring _:
        case HostedUiSigningIn _:
        case HostedUiSigningOut _:
        case HostedUiSignedOut _:
          continue;
        case HostedUiSignedIn _:
          return const CognitoSignInResult(
            isSignedIn: true,
            nextStep: AuthNextSignInStep(
              signInStep: AuthSignInStep.done,
            ),
          );
        case HostedUiFailure(:final exception, :final stackTrace):
          Error.throwWithStackTrace(exception, stackTrace);
      }
    }

    throw const UserCancelledException('The user cancelled the sign-in flow');
  }

  CognitoSignUpResult _processSignUpResult(SignUpState result) {
    return switch (result) {
      SignUpNotStarted _ ||
      SignUpInitiating _ ||
      SignUpConfirming _ =>
        // This should never happen.
        throw UnknownException(
          'Sign up could not be completed',
          underlyingException: result,
        ),
      SignUpNeedsConfirmation(:final userId, :final codeDeliveryDetails) =>
        CognitoSignUpResult(
          userId: userId,
          isSignUpComplete: false,
          nextStep: AuthNextSignUpStep(
            signUpStep: AuthSignUpStep.confirmSignUp,
            codeDeliveryDetails: codeDeliveryDetails?.asAuthCodeDeliveryDetails,
          ),
        ),
      SignUpSuccess(:final userId) => CognitoSignUpResult(
          userId: userId,
          isSignUpComplete: true,
          nextStep: const AuthNextSignUpStep(
            signUpStep: AuthSignUpStep.done,
          ),
        ),
      SignUpFailure(:final exception, :final stackTrace) =>
        Error.throwWithStackTrace(exception, stackTrace),
    };
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
    final result = await _stateMachine.acceptAndComplete<SignUpState>(
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
    );
    return _processSignUpResult(result);
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
    final result = await _stateMachine.acceptAndComplete<SignUpState>(
      SignUpEvent.confirm(
        username: username,
        confirmationCode: confirmationCode,
        clientMetadata: pluginOptions.clientMetadata,
      ),
    );
    return _processSignUpResult(result);
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
    final userContextData = await _getContextData(username);
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

        if (userContextData != null) {
          b.userContextData.replace(userContextData);
        }
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
    return switch (result) {
      SignInNotStarted _ ||
      SignInInitiating _ =>
        // This should never happen.
        throw UnknownException(
          'Sign in could not be completed',
          underlyingException: result,
        ),
      SignInCancelling _ => throw const UserCancelledException(
          'The user canceled the sign-in flow',
        ),
      SignInChallenge(
        :final challengeName,
        :final challengeParameters,
        :final codeDeliveryDetails,
        :final requiredAttributes,
        :final allowedMfaTypes,
        :final totpSetupResult,
      ) =>
        CognitoSignInResult(
          isSignedIn: false,
          nextStep: AuthNextSignInStep(
            signInStep: challengeName.signInStep,
            codeDeliveryDetails: codeDeliveryDetails,
            additionalInfo: challengeParameters,
            missingAttributes: requiredAttributes,
            allowedMfaTypes: allowedMfaTypes,
            totpSetupDetails: totpSetupResult,
          ),
        ),
      SignInSuccess _ => const CognitoSignInResult(
          isSignedIn: true,
          nextStep: AuthNextSignInStep(
            signInStep: AuthSignInStep.done,
          ),
        ),
      SignInFailure(:final exception, :final stackTrace) =>
        Error.throwWithStackTrace(exception, stackTrace),
    };
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
        friendlyDeviceName: pluginOptions.friendlyDeviceName,
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
  Future<SendUserAttributeVerificationCodeResult>
      sendUserAttributeVerificationCode({
    required AuthUserAttributeKey userAttributeKey,
    SendUserAttributeVerificationCodeOptions? options,
  }) async {
    final pluginOptions = reifyPluginOptions(
      pluginOptions: options?.pluginOptions,
      defaultPluginOptions:
          const CognitoSendUserAttributeVerificationCodePluginOptions(),
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
    return SendUserAttributeVerificationCodeResult(
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
    final userContextData = await _getContextData(username);
    final result = await _cognitoIdp.forgotPassword(
      cognito.ForgotPasswordRequest.build((b) {
        b
          ..clientId = _userPoolConfig.appClientId
          ..username = username
          ..analyticsMetadata = _analyticsMetadata?.toBuilder()
          ..clientMetadata.addAll(pluginOptions.clientMetadata);

        final clientSecret = _userPoolConfig.appClientSecret;
        if (clientSecret != null) {
          b.secretHash = computeSecretHash(
            username,
            _userPoolConfig.appClientId,
            clientSecret,
          );
        }

        if (userContextData != null) {
          b.userContextData.replace(userContextData);
        }
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
    final userContextData = await _getContextData(username);
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

        if (userContextData != null) {
          b.userContextData.replace(userContextData);
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

  /// {@template amplify_core.amplify_auth_category.fetch_mfa_preference}
  /// Fetches the MFA preference for the current user.
  /// {@endtemplate}
  Future<UserMfaPreference> fetchMfaPreference() async {
    final tokens = await _stateMachine.getUserPoolTokens();
    return _cognitoIdp.getMfaSettings(
      accessToken: tokens.accessToken.raw,
    );
  }

  /// {@template amplify_core.amplify_auth_category.update_mfa_preference}
  /// Updates the MFA preference for the current user.
  ///
  /// If [sms] or [totp] is `null`, the preference for that MFA type is left
  /// unchanged. Setting either [sms] or [totp] to [MfaPreference.preferred]
  /// will mark the other as not preferred.
  /// {@endtemplate}
  Future<void> updateMfaPreference({
    MfaPreference? sms,
    MfaPreference? totp,
  }) async {
    final tokens = await _stateMachine.getUserPoolTokens();
    final accessToken = tokens.accessToken.raw;
    return _cognitoIdp.setMfaSettings(
      accessToken: accessToken,
      sms: sms,
      totp: totp,
    );
  }

  @override
  Future<TotpSetupDetails> setUpTotp({
    TotpSetupOptions? options,
  }) async {
    final machine = _stateMachine.getOrCreate(TotpSetupStateMachine.type);
    final state =
        await machine.dispatchAndComplete<TotpSetupRequiresVerification>(
      const TotpSetupEvent.initiate(),
    );
    return state.result;
  }

  @override
  Future<void> verifyTotpSetup(
    String totpCode, {
    VerifyTotpSetupOptions? options,
  }) async {
    final pluginOptions = reifyPluginOptions(
      pluginOptions: options?.pluginOptions,
      defaultPluginOptions: const CognitoVerifyTotpSetupPluginOptions(),
    );
    final machine = _stateMachine.getOrCreate(TotpSetupStateMachine.type);
    final state = await machine.dispatchAndComplete<TotpSetupState>(
      TotpSetupEvent.verify(
        code: totpCode,
        friendlyDeviceName: pluginOptions.friendlyDeviceName,
      ),
    );

    switch (state) {
      case TotpSetupRequiresVerification _:
        throw const CodeMismatchException(
          'The code provided was incorrect, try again',
        );
      case TotpSetupFailure(:final exception, :final stackTrace):
        Error.throwWithStackTrace(exception, stackTrace);
      default:
        return;
    }
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
    if (device == null || device.id == deviceSecrets?.deviceKey) {
      await _deviceRepo.remove(username);
    }
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

    final result = await stateMachine.acceptAndComplete<SignOutState>(
      SignOutEvent.initiate(options),
    );

    final signOutResult = switch (result) {
      SignOutSuccess _ => const CognitoSignOutResult.complete(),
      SignOutPartialFailure _ => CognitoSignOutResult.partial(
          hostedUiException: result.hostedUiException,
          globalSignOutException: result.globalSignOutException,
          revokeTokenException: result.revokeTokenException,
        ),
      SignOutFailure(:final exception) => CognitoSignOutResult.failed(
          AuthException.fromException(exception),
        ),
      SignOutIdle _ ||
      SignOutSigningOut _ =>
        // This should never happen.
        throw UnknownException(
          'Sign in could not be completed',
          underlyingException: result,
        ),
    };
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
