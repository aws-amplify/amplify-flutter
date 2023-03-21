// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:convert';

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_auth_cognito_dart/src/credentials/cognito_keys.dart';
import 'package:amplify_auth_cognito_dart/src/credentials/device_metadata_repository.dart';
import 'package:amplify_auth_cognito_dart/src/flows/constants.dart';
import 'package:amplify_auth_cognito_dart/src/flows/device/confirm_device_worker.dart';
import 'package:amplify_auth_cognito_dart/src/flows/helpers.dart';
import 'package:amplify_auth_cognito_dart/src/flows/srp/srp_device_password_verifier_worker.dart';
import 'package:amplify_auth_cognito_dart/src/flows/srp/srp_init_result.dart';
import 'package:amplify_auth_cognito_dart/src/flows/srp/srp_init_worker.dart';
import 'package:amplify_auth_cognito_dart/src/flows/srp/srp_password_verifier_worker.dart';
import 'package:amplify_auth_cognito_dart/src/model/cognito_device_secrets.dart';
import 'package:amplify_auth_cognito_dart/src/model/cognito_user.dart';
import 'package:amplify_auth_cognito_dart/src/model/sign_in_parameters.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/cognito_identity_provider.dart'
    hide InvalidParameterException, ResourceNotFoundException;
import 'package:amplify_auth_cognito_dart/src/sdk/sdk_bridge.dart';
import 'package:amplify_auth_cognito_dart/src/state/state.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:async/async.dart';
import 'package:built_collection/built_collection.dart';
import 'package:meta/meta.dart';

/// {@template amplify_auth_cognito.sign_in_state_machine}
/// Base class for state machines which perform some auth flow. These all follow
/// the same pattern of calling `cognitoIdp.InitiateAuth` plus some number of
/// challenge responses.
/// {@endtemplate}
class SignInStateMachine extends AuthStateMachine<SignInEvent, SignInState> {
  /// {@macro amplify_auth_cognito.sign_in_state_machine}
  SignInStateMachine(CognitoAuthStateMachine manager) : super(manager, type);

  /// The [SignInStateMachine] type.
  static const type = StateMachineToken<SignInEvent, SignInState, AuthEvent,
      AuthState, CognitoAuthStateMachine, SignInStateMachine>();

  @override
  String get runtimeTypeName => 'SignInStateMachine';

  @override
  SignInState get initialState => const SignInState.notStarted();

  /// Flow used to sign in.
  late final AuthFlowType authFlowType;

  /// The default flow used to sign in.
  late final AuthFlowType defaultAuthFlowType = () {
    // Get the flow from the plugin config
    final pluginFlowType =
        expect<CognitoPluginConfig>().auth?.default$?.authenticationFlowType ??
            AuthenticationFlowType.userSrpAuth;
    return pluginFlowType.sdkValue;
  }();

  /// Parameters to the flow.
  late final SignInParameters parameters;

  /// The configured user pool.
  late final CognitoUserPoolConfig config = expect();

  /// The configured identity pool.
  CognitoIdentityCredentialsProvider? get identityPoolConfig => get();

  /// Whether there is an identity pool configured.
  bool get hasIdentityPool => identityPoolConfig != null;

  /// The Cognito Identity Provider service client.
  late final CognitoIdentityProviderClient cognitoIdentityProvider = expect();

  /// The user built via the auth flow process.
  final CognitoUserBuilder user = CognitoUserBuilder();

  // Lazy initializers for worker types.
  final AsyncMemoizer<SrpInitWorker> _initWorkerMemoizer = AsyncMemoizer();
  final AsyncMemoizer<SrpPasswordVerifierWorker>
      _passwordVerifierWorkerMemoizer = AsyncMemoizer();
  final AsyncMemoizer<SrpDevicePasswordVerifierWorker>
      _devicePasswordVerifierWorkerMemoizer = AsyncMemoizer();
  final AsyncMemoizer<ConfirmDeviceWorker> _confirmDeviceWorkerMemoizer =
      AsyncMemoizer();

  void _logWorkerBeeMessage(AWSLogger logger, LogEntry logEntry) {
    logger.log(
      logEntry.level,
      logEntry.message,
      logEntry.error,
      logEntry.stackTrace,
    );
  }

  /// The SRP init worker.
  Future<SrpInitWorker> get initWorker async =>
      _initWorkerMemoizer.runOnce(() async {
        var worker = get<SrpInitWorker>();
        if (worker != null) {
          return worker;
        }
        worker = SrpInitWorker.create();
        final logger = this.logger.createChild(worker.name);
        worker.logs.listen((entry) => _logWorkerBeeMessage(logger, entry));
        await worker.spawn();
        addInstance<SrpInitWorker>(worker);
        return worker;
      });

  /// The SRP password verifier worker.
  Future<SrpPasswordVerifierWorker> get passwordVerifierWorker =>
      _passwordVerifierWorkerMemoizer.runOnce(() async {
        var worker = get<SrpPasswordVerifierWorker>();
        if (worker != null) {
          return worker;
        }
        worker = SrpPasswordVerifierWorker.create();
        final logger = this.logger.createChild(worker.name);
        worker.logs.listen((entry) => _logWorkerBeeMessage(logger, entry));
        await worker.spawn();
        addInstance<SrpPasswordVerifierWorker>(worker);
        return worker;
      });

  /// The SRP device password verifier worker.
  Future<SrpDevicePasswordVerifierWorker> get devicePasswordVerifierWorker =>
      _devicePasswordVerifierWorkerMemoizer.runOnce(() async {
        var worker = get<SrpDevicePasswordVerifierWorker>();
        if (worker != null) {
          return worker;
        }
        worker = SrpDevicePasswordVerifierWorker.create();
        final logger = this.logger.createChild(worker.name);
        worker.logs.listen((entry) => _logWorkerBeeMessage(logger, entry));
        await worker.spawn();
        addInstance<SrpDevicePasswordVerifierWorker>(worker);
        return worker;
      });

  /// The confirm device worker.
  Future<ConfirmDeviceWorker> get confirmDeviceWorker =>
      _confirmDeviceWorkerMemoizer.runOnce(() async {
        var worker = get<ConfirmDeviceWorker>();
        if (worker != null) {
          return worker;
        }
        worker = ConfirmDeviceWorker.create();
        final logger = this.logger.createChild(worker.name);
        worker.logs.listen((entry) => _logWorkerBeeMessage(logger, entry));
        await worker.spawn();
        addInstance<ConfirmDeviceWorker>(worker);
        return worker;
      });

  // Current flow state
  AuthenticationResultType? _authenticationResult;
  ChallengeNameType? _challengeName;
  BuiltMap<String, String> _challengeParameters = BuiltMap();
  String? _session;
  SrpInitResult? _initResult;
  Map<CognitoUserAttributeKey, String>? _attributesNeedingUpdate;

  /// Creates the `InitiateAuth` request.
  Future<InitiateAuthRequest> initiate(SignInInitiate event) async {
    String expectPassword() {
      final password = parameters.password;
      if (password == null) {
        throw const InvalidParameterException('No password was provided');
      }
      return password;
    }

    authFlowType = event.authFlowType?.sdkValue ?? defaultAuthFlowType;
    switch (authFlowType) {
      case AuthFlowType.userSrpAuth:
        expectPassword();
        return initiateSrpAuth(event);
      case AuthFlowType.customAuth:
        return initiateCustomAuth(event);
      case AuthFlowType.userPasswordAuth:
        return initiateUserPasswordAuth(event, expectPassword());
      case AuthFlowType.refreshToken:
      case AuthFlowType.refreshTokenAuth:
      case AuthFlowType.adminNoSrpAuth:
      case AuthFlowType.adminUserPasswordAuth:
        break;
    }

    throw StateError('Unsupported auth flow: $authFlowType');
  }

  /// Creates the response to a challenge with name [challengeName] and
  /// parameters [challengeParameters].
  ///
  /// Subclasses should return `null` if they cannot handle [challengeName].
  Future<RespondToAuthChallengeRequest?> respondToAuthChallenge(
    SignInEvent event,
    ChallengeNameType challengeName,
    BuiltMap<String, String> challengeParameters,
  ) async {
    if (authFlowType == AuthFlowType.customAuth &&
        event is SignInRespondToChallenge) {
      return RespondToAuthChallengeRequest.build(
        (b) => b
          ..challengeName = ChallengeNameType.customChallenge
          ..challengeResponses.addAll({
            CognitoConstants.challengeParamUsername: parameters.username,
            CognitoConstants.challengeParamAnswer: event.answer,
          })
          ..clientId = config.appClientId
          ..clientMetadata.addAll(event.clientMetadata),
      );
    }
    return respondToSrpChallenge(event, challengeName, challengeParameters);
  }

  /// Creates the password verifier request in a worker instance.
  @protected
  Future<RespondToAuthChallengeRequest> createPasswordVerifierRequest(
    BuiltMap<String, String> challengeParameters,
  ) async {
    final username = parameters.username;
    final password = parameters.password;
    if (password == null || password.isEmpty) {
      throw const AuthValidationException('No password given');
    }

    final initResult = _initResult;
    if (initResult == null) {
      throw const AuthValidationException('Must call init first');
    }

    final worker = await passwordVerifierWorker;
    final workerMessage = SrpPasswordVerifierMessage((b) {
      b
        ..initResult = initResult
        ..clientId = config.appClientId
        ..clientSecret = config.appClientSecret
        ..poolId = config.poolId
        ..deviceKey = user.deviceSecrets?.deviceKey
        ..challengeParameters = challengeParameters
        ..parameters = SignInParameters(
          (b) => b
            ..username = username
            ..password = password,
        );
    });
    worker.sink.add(workerMessage);
    return worker.stream.first;
  }

  /// Creates the device SRP auth request to initiate the device SRP flow.
  @protected
  Future<RespondToAuthChallengeRequest> createDeviceSrpAuthRequest() async {
    final initResult = _initResult;
    if (initResult == null) {
      throw StateError('Must call init first');
    }
    return RespondToAuthChallengeRequest.build((b) {
      b
        ..clientId = config.appClientId
        ..challengeName = ChallengeNameType.deviceSrpAuth
        ..challengeResponses.addAll({
          CognitoConstants.challengeParamUsername: user.username!,
          CognitoConstants.challengeParamDeviceKey:
              user.deviceSecrets!.deviceKey!,
          CognitoConstants.challengeParamSrpA:
              initResult.publicA.toRadixString(16),
        });

      if (config.appClientSecret != null) {
        b.challengeResponses[CognitoConstants.challengeParamSecretHash] =
            computeSecretHash(
          user.username!,
          config.appClientId,
          config.appClientSecret!,
        );
      }
    });
  }

  /// Creates the device password verifier request in a worker instance.
  @protected
  Future<RespondToAuthChallengeRequest> createDevicePasswordVerifierRequest(
    BuiltMap<String, String> challengeParameters,
  ) async {
    final username = parameters.username;
    final password = parameters.password;
    if (password == null || password.isEmpty) {
      throw const AuthValidationException('No password given');
    }

    final worker = await devicePasswordVerifierWorker;
    final workerMessage = SrpDevicePasswordVerifierMessage((b) {
      b
        ..deviceSecrets = user.deviceSecrets!.build()
        ..initResult = _initResult
        ..clientId = config.appClientId
        ..clientSecret = config.appClientSecret
        ..challengeParameters = challengeParameters
        ..parameters = SignInParameters(
          (b) => b
            ..username = username
            ..password = password,
        );
    });
    worker.sink.add(workerMessage);
    return worker.stream.first;
  }

  /// Creates the response object for an SMS MFA challenge.
  @protected
  Future<RespondToAuthChallengeRequest> createSmsMfaRequest(
    SignInRespondToChallenge event,
  ) async {
    return RespondToAuthChallengeRequest.build((b) {
      b
        ..clientId = config.appClientId
        ..challengeName = _challengeName
        ..challengeResponses.addAll({
          CognitoConstants.challengeParamUsername: user.username!,
          CognitoConstants.challengeParamSmsMfaCode: event.answer,
        })
        ..clientMetadata.addAll(event.clientMetadata);

      if (config.appClientSecret != null) {
        b.challengeResponses[CognitoConstants.challengeParamSecretHash] =
            computeSecretHash(
          user.username!,
          config.appClientId,
          config.appClientSecret!,
        );
      }
    });
  }

  /// Creates the response object for a new password challenge.
  @protected
  Future<RespondToAuthChallengeRequest> createNewPasswordRequest(
    SignInRespondToChallenge event,
  ) async {
    return RespondToAuthChallengeRequest.build((b) {
      b
        ..clientId = config.appClientId
        ..challengeName = _challengeName
        ..challengeResponses.addAll({
          CognitoConstants.challengeParamUsername: user.username!,
          CognitoConstants.challengeParamNewPassword: event.answer,
        })
        ..clientMetadata.addAll(event.clientMetadata);

      // Add required missing user attributes.
      //
      // In a `NEW_PASSWORD_REQUIRED` challenge response, you can't modify a
      // required attribute that already has a value. In RespondToAuthChallenge,
      // set a value for any keys that Amazon Cognito returned in the
      // `requiredAttributes` parameter, then use the UpdateUserAttributes API
      // operation to modify the value of any additional attributes.
      final challengeAttributes = _challengeParameters[
          CognitoConstants.challengeParamRequiredAttributes];
      final missingRequiredAttributes = (challengeAttributes == null
              ? const <String>[]
              // This is returned as a JSON-encoded string instead of a List
              : json.decode(challengeAttributes) as List<Object?>)
          .cast<String>()
          .map(
            (key) => key.replaceFirst(
              CognitoConstants.challengeParamUserAttributesPrefix,
              '',
            ),
          )
          .map(CognitoUserAttributeKey.parse);
      final newAttributes = Map.of(event.userAttributes);
      for (final missingAttributeKey in missingRequiredAttributes) {
        final missingAttributeValue = newAttributes.remove(missingAttributeKey);
        if (missingAttributeValue == null) {
          continue;
        }
        // To set any required attributes that Amazon Cognito returned as
        // requiredAttributes in the InitiateAuth response, add a
        // `userAttributes.attributename` parameter. This parameter can also set
        // values for writable attributes that aren't required by your user pool.
        b.challengeResponses[
                '${CognitoConstants.challengeParamUserAttributesPrefix}${missingAttributeKey.key}'] =
            missingAttributeValue;
      }
      _attributesNeedingUpdate = newAttributes;

      if (config.appClientSecret != null) {
        b.challengeResponses[CognitoConstants.challengeParamSecretHash] =
            computeSecretHash(
          user.username!,
          config.appClientId,
          config.appClientSecret!,
        );
      }
    });
  }

  /// Initiates an SRP flow.
  @protected
  Future<InitiateAuthRequest> initiateSrpAuth(SignInInitiate event) async {
    final worker = await initWorker;
    worker.add(SrpInitMessage());
    _initResult = await worker.stream.first;

    return InitiateAuthRequest.build((b) {
      b
        ..authFlow = AuthFlowType.userSrpAuth
        ..clientId = config.appClientId
        ..authParameters.addAll({
          CognitoConstants.challengeParamUsername: parameters.username,
          CognitoConstants.challengeParamSrpA:
              _initResult!.publicA.toRadixString(16),
        })
        ..clientMetadata.addAll(event.clientMetadata);

      if (config.appClientSecret != null) {
        b.authParameters[CognitoConstants.challengeParamSecretHash] =
            computeSecretHash(
          parameters.username,
          config.appClientId,
          config.appClientSecret!,
        );
      }

      final deviceKey = user.deviceSecrets?.deviceKey;
      if (deviceKey != null) {
        b.authParameters[CognitoConstants.challengeParamDeviceKey] = deviceKey;
      }
    });
  }

  /// Initiates a username/password auth flow.
  @protected
  Future<InitiateAuthRequest> initiateUserPasswordAuth(
    SignInInitiate event,
    String password,
  ) async {
    return InitiateAuthRequest.build((b) {
      b
        ..authFlow = AuthFlowType.userPasswordAuth
        ..clientId = config.appClientId
        ..authParameters.addAll({
          CognitoConstants.challengeParamUsername: parameters.username,
          CognitoConstants.challengeParamPassword: password,
        })
        ..clientMetadata.addAll(event.clientMetadata);

      if (config.appClientSecret != null) {
        b.authParameters[CognitoConstants.challengeParamSecretHash] =
            computeSecretHash(
          parameters.username,
          config.appClientId,
          config.appClientSecret!,
        );
      }

      final deviceKey = user.deviceSecrets?.deviceKey;
      if (deviceKey != null) {
        b.authParameters[CognitoConstants.challengeParamDeviceKey] = deviceKey;
      }
    });
  }

  /// Initiates a custom auth flow.
  @protected
  Future<InitiateAuthRequest> initiateCustomAuth(SignInInitiate event) async {
    // If a password is provided or the user chose the SRP route, start the SRP
    // flow by including `CHALLENGE_NAME` in the auth parameters.
    final password = parameters.password;
    switch (event.authFlowType) {
      case AuthenticationFlowType.customAuthWithSrp:
        if (password == null) {
          throw const AuthValidationException(
            'No password was given but customAuthWithSrp was chosen for '
            'authentication flow',
            recoverySuggestion:
                'Include a password in your call to Amplify.Auth.signIn',
          );
        }
        break;
      case AuthenticationFlowType.customAuthWithoutSrp:
        if (password != null) {
          throw const AuthValidationException(
            'A password was given but customAuthWithoutSrp was chosen for '
            'authentication flow',
            recoverySuggestion:
                'Do not include a password in your call to Amplify.Auth.signIn',
          );
        }
        break;
      // ignore: deprecated_member_use
      case AuthenticationFlowType.customAuth:
      default:
        break;
    }
    if (event.authFlowType == AuthenticationFlowType.customAuthWithSrp ||
        password != null) {
      final initRequest = await initiateSrpAuth(event);
      return initRequest.rebuild(
        (b) => b
          ..authFlow = AuthFlowType.customAuth
          ..authParameters.addAll({
            CognitoConstants.challengeParamChallengeName: 'SRP_A',
          }),
      );
    }

    return InitiateAuthRequest.build((b) {
      b
        ..authFlow = AuthFlowType.customAuth
        ..authParameters.addAll({
          CognitoConstants.challengeParamUsername: parameters.username,
        })
        ..clientId = config.appClientId
        ..clientMetadata.addAll(event.clientMetadata);

      if (config.appClientSecret != null) {
        b.authParameters[CognitoConstants.challengeParamSecretHash] =
            computeSecretHash(
          parameters.username,
          config.appClientId,
          config.appClientSecret!,
        );
      }

      final deviceKey = user.deviceSecrets?.deviceKey;
      if (deviceKey != null) {
        b.authParameters[CognitoConstants.challengeParamDeviceKey] = deviceKey;
      }
    });
  }

  /// Responds to an SRP flow challenge.
  @protected
  Future<RespondToAuthChallengeRequest?> respondToSrpChallenge(
    SignInEvent event,
    ChallengeNameType challengeName,
    BuiltMap<String, String> challengeParameters,
  ) async {
    switch (challengeName) {
      case ChallengeNameType.passwordVerifier:
        return createPasswordVerifierRequest(challengeParameters);
      case ChallengeNameType.deviceSrpAuth:
        return createDeviceSrpAuthRequest();
      case ChallengeNameType.devicePasswordVerifier:
        return createDevicePasswordVerifierRequest(challengeParameters);
      case ChallengeNameType.smsMfa:
        if (event is SignInRespondToChallenge) {
          return createSmsMfaRequest(event);
        }
        break;
      case ChallengeNameType.newPasswordRequired:
        if (event is SignInRespondToChallenge) {
          return createNewPasswordRequest(event);
        }
        break;
      default:
        break;
    }
    return null;
  }

  /// Adds the session info from [result] to the user.
  Future<String> _saveAuthResult(AuthenticationResultType result) async {
    final accessToken = result.accessToken;
    final refreshToken = result.refreshToken;
    final idToken = result.idToken;
    if (accessToken == null || idToken == null || refreshToken == null) {
      throw const UnknownException('Empty authentication result');
    }

    // Parse the access & ID tokens to retrieve Cognito user ID and username.
    final accessTokenJwt = JsonWebToken.tryParse(accessToken);
    if (accessTokenJwt == null) {
      throw const UnknownException('Could not parse access token');
    }
    final idTokenJwt = JsonWebToken.tryParse(idToken);
    if (idTokenJwt == null) {
      throw const UnknownException('Could not parse ID token');
    }

    final signInDetails = CognitoSignInDetails.apiBased(
      username: parameters.username,
      authFlowType: authFlowType,
    );

    user
      ..userId = accessTokenJwt.claims.subject ?? idTokenJwt.claims.subject
      ..username ??= CognitoIdToken(idTokenJwt).username
      ..signInDetails = signInDetails;

    user.userPoolTokens
      ..accessToken = accessTokenJwt
      ..refreshToken = refreshToken
      ..idToken = idTokenJwt;

    await manager.storeCredentials(
      CredentialStoreData(
        userPoolTokens: user.userPoolTokens.build(),
        signInDetails: signInDetails,
      ),
    );

    // Clear anonymous credentials, if there were any, and fetch authenticated
    // credentials.
    if (hasIdentityPool) {
      await manager.clearCredentials(
        CognitoIdentityPoolKeys(identityPoolConfig!),
      );

      await manager.loadSession();
    }

    return accessToken;
  }

  /// Loads device secrets for the current user and attaches them to the current
  /// [user].
  Future<void> _loadDeviceSecrets() async {
    try {
      final deviceSecrets =
          await getOrCreate(DeviceMetadataRepository.token).get(user.username!);
      if (deviceSecrets != null) {
        user.deviceSecrets = deviceSecrets.toBuilder();
      }
    } on Exception catch (e, st) {
      logger.debug('Could not retrieve credentials', e, st);
    }
  }

  /// Runs the authentication flow to its stopping state, either a successful
  /// login, a failure, or a challenge state which requires user input.
  Future<void> run(SignInInitiate event) async {
    emit(const SignInState.initiating());

    // Collect current user info which may influence SRP flow.
    user.username = event.parameters.username;
    await _loadDeviceSecrets();

    final initRequest = await initiate(event);
    final initResponse =
        await cognitoIdentityProvider.initiateAuth(initRequest).result;

    // Current flow state
    _authenticationResult = initResponse.authenticationResult;
    _challengeName = initResponse.challengeName;
    _challengeParameters = initResponse.challengeParameters ?? BuiltMap();
    _session = initResponse.session;

    final stopState = await _processChallenge(event);
    emit(stopState);
  }

  /// Confirms the user's device in user pools where device tracking is enabled.
  ///
  /// If device tracking is set to opt-in, a second call to `rememberDevice` is
  /// needed to remember the device. If device tracking is set to always, then
  /// the device is remembered as part of this call.
  Future<_CreateDeviceResult> _createDevice(
    String accessToken,
    NewDeviceMetadataType newDeviceMetadata,
  ) async {
    final worker = await confirmDeviceWorker;
    worker.add(
      ConfirmDeviceMessage(
        (b) => b
          ..accessToken = accessToken
          ..newDeviceMetadata.replace(newDeviceMetadata),
      ),
    );
    final workerResult = await worker.stream.first;
    final response = await cognitoIdentityProvider
        .confirmDevice(
          workerResult.request,
        )
        .result;
    final requiresConfirmation = response.userConfirmationNecessary;

    return _CreateDeviceResult(
      devicePassword: workerResult.devicePassword,
      deviceStatus: requiresConfirmation
          ? DeviceRememberedStatusType.notRemembered
          : DeviceRememberedStatusType.remembered,
    );
  }

  /// Update any user attributes which could not be sent in the
  /// `RespondToAuthChallenge` call.
  Future<void> _updateAttributes({
    required String accessToken,
    required Map<String, String> clientMetadata,
  }) async {
    if (_attributesNeedingUpdate == null || _attributesNeedingUpdate!.isEmpty) {
      return;
    }
    try {
      await cognitoIdentityProvider
          .updateUserAttributes(
            UpdateUserAttributesRequest.build(
              (b) => b
                ..accessToken = accessToken
                ..clientMetadata.addAll(clientMetadata)
                ..userAttributes.addAll([
                  for (final userAttribute in _attributesNeedingUpdate!.entries)
                    AttributeType(
                      name: userAttribute.toString(),
                      value: userAttribute.value,
                    )
                ]),
            ),
          )
          .result;
    } finally {
      _attributesNeedingUpdate = null;
    }
  }

  /// Processes the current challenge by:
  /// 1. Returning successfully if there is no challenge.
  /// 2. Querying the state machine implementation for how to respond.
  /// 3. Yielding control if the state machine cannot respond automatically and
  ///    user input is needed.
  Future<SignInState> _processChallenge(SignInEvent event) async {
    // There can be an indefinite amount of challenges which need responses.
    // Only when authenticationResult is set is the flow considered complete.
    final authenticationResult = _authenticationResult;
    if (authenticationResult != null) {
      final accessToken = await _saveAuthResult(authenticationResult);
      final newDeviceMetadata = authenticationResult.newDeviceMetadata;
      if (newDeviceMetadata != null &&
          // ConfirmDevice API requires an identity pool
          hasIdentityPool) {
        final createDeviceResult = await _createDevice(
          accessToken,
          newDeviceMetadata,
        );
        user.deviceSecrets = CognitoDeviceSecretsBuilder()
          ..deviceGroupKey = newDeviceMetadata.deviceGroupKey
          ..deviceKey = newDeviceMetadata.deviceKey
          ..devicePassword = createDeviceResult.devicePassword
          ..deviceStatus = createDeviceResult.deviceStatus;

        await getOrCreate(DeviceMetadataRepository.token).put(
          user.username!,
          user.deviceSecrets!.build(),
        );
      }

      await _updateAttributes(
        accessToken: accessToken,
        clientMetadata: event.clientMetadata,
      );

      return SignInState.success(user.build());
    }

    await _updateUser(_challengeParameters);

    // Query the state machine for a response given potential user input in
    // `event`.
    final respondRequest = await respondToAuthChallenge(
      event,
      _challengeName!,
      _challengeParameters,
    );

    // If we can't internally respond to the challenge, we may need user
    // input. Put the state machine in the `challenge` state and yield
    // control.
    if (respondRequest == null) {
      final requiredAttributesStr = _challengeParameters[
          CognitoConstants.challengeParamRequiredAttributes];
      var requiredAttributes = const <CognitoUserAttributeKey>[];
      if (requiredAttributesStr != null) {
        requiredAttributes =
            (json.decode(requiredAttributesStr) as List<Object?>)
                .cast<String>()
                .map(
                  (key) => key.replaceFirst(
                    CognitoConstants.challengeParamUserAttributesPrefix,
                    '',
                  ),
                )
                .map(CognitoUserAttributeKey.parse)
                .toList();
      }
      return SignInState.challenge(
        _challengeName!,
        _challengeParameters.toMap(),
        requiredAttributes,
      );
    }

    // Respond to Cognito and evaluate the returned response.
    return _respondToChallenge(event, respondRequest);
  }

  /// Inner handle to send the request returned from [respondToAuthChallenge]
  /// and process its response.
  Future<SignInState> _respondToChallenge(
    SignInEvent event,
    RespondToAuthChallengeRequest respondRequest,
  ) async {
    // Include session if not already included.
    respondRequest = respondRequest.rebuild(
      (b) => b
        ..session ??= _session
        ..clientMetadata.replace(event.clientMetadata),
    );

    try {
      final challengeResp = await cognitoIdentityProvider
          .respondToAuthChallenge(respondRequest)
          .result;

      // Update flow state
      _authenticationResult = challengeResp.authenticationResult;
      _challengeName = challengeResp.challengeName;
      _challengeParameters = challengeResp.challengeParameters ?? BuiltMap();
      _session = challengeResp.session;

      return _processChallenge(event);
    } on ResourceNotFoundException {
      // For device flows, retry with normal SRP sign-in when the device is not
      // found. This protects against the case where a device has been removed
      // in Cognito but exists in the local cache.
      if (_challengeName == ChallengeNameType.passwordVerifier &&
          user.deviceSecrets != null) {
        user.deviceSecrets = null;
        await getOrCreate(DeviceMetadataRepository.token)
            .remove(user.username!);

        final respondRequest = await respondToAuthChallenge(
          event,
          _challengeName!,
          _challengeParameters,
        );
        return _respondToChallenge(event, respondRequest!);
      }
      rethrow;
    }
  }

  /// Updates the CognitoUser from challege parameters.
  Future<void> _updateUser(BuiltMap<String, String> challengeParameters) async {
    // If a Cognito response returned a different username than what was used
    // to login, refresh the device secrets so that they are included in future
    // requests.
    final cognitoUsername =
        challengeParameters[CognitoConstants.challengeParamUsername];
    if (cognitoUsername != null && cognitoUsername != user.username) {
      user.username = cognitoUsername;
      await _loadDeviceSecrets();
    }
  }

  @override
  Future<void> resolve(SignInEvent event) async {
    switch (event.type) {
      case SignInEventType.initiate:
        event as SignInInitiate;
        parameters = event.parameters;
        await run(event);
        return;
      case SignInEventType.respondToChallenge:
        event as SignInRespondToChallenge;
        final stopState = await _processChallenge(event);
        emit(stopState);
        return;
      case SignInEventType.cancelled:
        event as SignInCancelled;
        emit(const SignInState.notStarted());
        return;
      case SignInEventType.succeeded:
        event as SignInSucceeded;
        emit(SignInState.success(event.user));
        return;
    }
  }

  @override
  SignInState? resolveError(Object error, StackTrace st) {
    if (error is Exception) {
      return SignInFailure(error, st);
    }
    return null;
  }
}

class _CreateDeviceResult {
  const _CreateDeviceResult({
    required this.devicePassword,
    required this.deviceStatus,
  });

  final String devicePassword;
  final DeviceRememberedStatusType deviceStatus;
}
