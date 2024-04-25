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
import 'package:amplify_auth_cognito_dart/src/model/auth_user_ext.dart';
import 'package:amplify_auth_cognito_dart/src/model/cognito_device_secrets.dart';
import 'package:amplify_auth_cognito_dart/src/model/cognito_user.dart';
import 'package:amplify_auth_cognito_dart/src/model/sign_in_parameters.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/cognito_identity_provider.dart'
    hide
        InvalidParameterException,
        InvalidUserPoolConfigurationException,
        ResourceNotFoundException,
        EnableSoftwareTokenMfaException,
        SoftwareTokenMfaNotFoundException;
import 'package:amplify_auth_cognito_dart/src/sdk/sdk_bridge.dart';
import 'package:amplify_auth_cognito_dart/src/state/cognito_state_machine.dart';
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
final class SignInStateMachine
    extends AuthStateMachine<SignInEvent, SignInState> {
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
  late AuthFlowType authFlowType;

  /// Parameters to the flow.
  late SignInParameters parameters;

  /// The configured user pool.
  late final CognitoUserPoolConfig config = expect();

  /// The configured identity pool.
  CognitoIdentityCredentialsProvider? get identityPoolConfig => get();

  /// The Cognito Identity Provider service client.
  late final CognitoIdentityProviderClient cognitoIdentityProvider = expect();

  /// The advanced security features (ASF) context data provider.
  ASFContextDataProvider get contextDataProvider => getOrCreate();

  /// The device metadata repository.
  DeviceMetadataRepository get deviceRepo => getOrCreate();

  /// The user built via the auth flow process.
  var _user = CognitoUserBuilder();

  /// The username of the user being logged in, as recognized by Cognito.
  ///
  /// Guaranteed to be non-null since it is the first thing set in [run].
  ///
  /// **NOTE**: This may differ from [providedUsername] in the case of username
  /// alias where one or more user attributes can be used to identify a user.
  String get cognitoUsername => _user.username!;

  /// The username provided by the user to `Amplify.Auth.signIn`.
  ///
  /// **NOTE**: This may differ from [cognitoUsername] in the case of username
  /// alias where one or more user attributes can be used to identify a user.
  String get providedUsername => parameters.username;

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

  /// Creates the initial SRP public/private values used in SRP handshakes.
  Future<SrpInitResult> _initSrp() async {
    final worker = await initWorker;
    worker.add(SrpInitMessage());
    return worker.stream.first;
  }

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
  BuiltMap<String, String?> _challengeParameters = BuiltMap();
  String? _session;
  SrpInitResult? _initResult;
  Map<CognitoUserAttributeKey, String>? _attributesNeedingUpdate;
  TotpSetupDetails? _totpSetupResult;

  /// The MFA type to mark `enabled` at the end of the sign-in flow.
  ///
  /// This is needed since Cognito will not automatically mark the
  /// MFA type as enabled. We do this as a convenience for the developer
  /// since they are likely to forget it.
  MfaType? _enableMfaType;

  /// The allowed MFA types returned in the last challenge response.
  Set<MfaType>? get _allowedMfaTypes {
    final allowedMfaTypesStr =
        _challengeParameters[CognitoConstants.challengeParamMfasCanSetup] ??
            _challengeParameters[CognitoConstants.challengeParamMfasCanChoose];
    if (allowedMfaTypesStr == null || allowedMfaTypesStr.isEmpty) {
      return null;
    }
    return (jsonDecode(allowedMfaTypesStr) as List<Object?>)
        .cast<String>()
        .map(
          (type) => switch (type) {
            'SOFTWARE_TOKEN_MFA' => MfaType.totp,
            'SMS_MFA' => MfaType.sms,
            _ => () {
                logger.error('Unrecognized MFA type: $type');
                return null;
              }(),
          },
        )
        .nonNulls
        .toSet();
  }

  Map<String, String> get _publicChallengeParameters {
    final map = _challengeParameters.toMap()
      ..removeWhere((_, value) => value == null);
    return map.cast();
  }

  /// The required user attributes returned in the last challenge response.
  List<CognitoUserAttributeKey> get _requiredAttributes {
    final requiredAttributesStr =
        _challengeParameters[CognitoConstants.challengeParamRequiredAttributes];
    if (requiredAttributesStr == null || requiredAttributesStr.isEmpty) {
      return const [];
    }
    return (json.decode(requiredAttributesStr) as List<Object?>)
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

  /// The code delivery details for the most recent challenge code.
  AuthCodeDeliveryDetails? get _codeDeliveryDetails {
    final deliveryMedium = switch (_challengeName) {
      // Multiple values are returned for SELECT_MFA_TYPE but they will be
      // narrowed once a selection is made.
      ChallengeNameType.selectMfaType => null,
      ChallengeNameType.softwareTokenMfa => DeliveryMedium.totp,
      _ => switch (_challengeParameters[
            CognitoConstants.challengeParamDeliveryMedium]) {
          null => null,
          'SMS' => DeliveryMedium.sms,
          'EMAIL' => DeliveryMedium.email,
          _ => DeliveryMedium.unknown,
        }
    };
    if (deliveryMedium == null) {
      return null;
    }
    final destination = switch (deliveryMedium) {
      DeliveryMedium.totp =>
        _challengeParameters[CognitoConstants.challengeParamFriendlyDeviceName],
      _ => _challengeParameters[CognitoConstants.challengeParamDeliveryDest],
    };
    return AuthCodeDeliveryDetails(
      deliveryMedium: deliveryMedium,
      destination: destination,
    );
  }

  /// Creates the `InitiateAuth` request.
  Future<InitiateAuthRequest> createInitiateAuthRequest(
    SignInInitiate event,
  ) async {
    String expectPassword() {
      final password = parameters.password;
      if (password == null) {
        throw const InvalidParameterException('No password was provided');
      }
      return password;
    }

    authFlowType = event.authFlowType?.sdkValue ??
        AuthenticationFlowType.userSrpAuth.sdkValue;
    return switch (authFlowType) {
      AuthFlowType.userSrpAuth => () {
          expectPassword();
          return initiateSrpAuth(event);
        }(),
      AuthFlowType.customAuth => initiateCustomAuth(event),
      AuthFlowType.userPasswordAuth =>
        initiateUserPasswordAuth(event, expectPassword()),
      _ => throw StateError('Unsupported auth flow: $authFlowType'),
    };
  }

  /// Creates the response to a challenge with name [challengeName] and
  /// parameters [challengeParameters].
  ///
  /// Returns `null` if the state machine cannot automatically respond given
  /// the [challengeName], its current state, and the current `event` being
  /// processed.
  Future<RespondToAuthChallengeRequest?> createRespondToAuthChallengeRequest(
    SignInEvent? event,
    ChallengeNameType challengeName,
    BuiltMap<String, String?> challengeParameters,
  ) async {
    final hasUserResponse = event is SignInRespondToChallenge;
    return switch (challengeName) {
      ChallengeNameType.customChallenge when hasUserResponse =>
        createCustomAuthRequest(event),
      ChallengeNameType.passwordVerifier =>
        createPasswordVerifierRequest(challengeParameters),
      ChallengeNameType.deviceSrpAuth => createDeviceSrpAuthRequest(),
      ChallengeNameType.devicePasswordVerifier =>
        createDevicePasswordVerifierRequest(challengeParameters),
      ChallengeNameType.smsMfa when hasUserResponse =>
        createSmsMfaRequest(event),
      ChallengeNameType.softwareTokenMfa when hasUserResponse =>
        createSoftwareTokenMfaRequest(event),
      ChallengeNameType.selectMfaType when hasUserResponse =>
        createSelectMfaRequest(event),
      ChallengeNameType.mfaSetup when hasUserResponse =>
        createMfaSetupRequest(event),
      ChallengeNameType.newPasswordRequired when hasUserResponse =>
        createNewPasswordRequest(event),
      _ => null,
    };
  }

  /// Responds to a custom challenge.
  @protected
  Future<RespondToAuthChallengeRequest> createCustomAuthRequest(
    SignInRespondToChallenge event,
  ) async {
    return RespondToAuthChallengeRequest.build(
      (b) => b
        ..challengeName = ChallengeNameType.customChallenge
        ..challengeResponses.addAll({
          CognitoConstants.challengeParamUsername: providedUsername,
          CognitoConstants.challengeParamAnswer: event.answer,
          if (_user.deviceSecrets?.deviceKey case final deviceKey?)
            CognitoConstants.challengeParamDeviceKey: deviceKey,
        })
        ..clientId = config.appClientId
        ..clientMetadata.addAll(event.clientMetadata)
        ..analyticsMetadata = get<AnalyticsMetadataType>()?.toBuilder(),
    );
  }

  /// Creates the password verifier request in a worker instance.
  @protected
  Future<RespondToAuthChallengeRequest> createPasswordVerifierRequest(
    BuiltMap<String, String?> challengeParameters,
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
        ..deviceKey = _user.deviceSecrets?.deviceKey
        ..challengeParameters = BuiltMap(_publicChallengeParameters)
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
    // Device SRP auth does not require SRP auth to have been performed already.
    // In custom auth flows which do not begin with SRP auth but where device
    // tracking is enabled, Cognito will still perform a device SRP challenge.
    _initResult ??= await _initSrp();
    return RespondToAuthChallengeRequest.build((b) {
      b
        ..clientId = config.appClientId
        ..challengeName = ChallengeNameType.deviceSrpAuth
        ..challengeResponses.addAll({
          CognitoConstants.challengeParamUsername: cognitoUsername,
          CognitoConstants.challengeParamDeviceKey:
              _user.deviceSecrets!.deviceKey!,
          CognitoConstants.challengeParamSrpA:
              _initResult!.publicA.toRadixString(16),
        });
    });
  }

  /// Creates the device password verifier request in a worker instance.
  @protected
  Future<RespondToAuthChallengeRequest> createDevicePasswordVerifierRequest(
    BuiltMap<String, String?> challengeParameters,
  ) async {
    final worker = await devicePasswordVerifierWorker;
    final workerMessage = SrpDevicePasswordVerifierMessage((b) {
      b
        ..deviceSecrets = _user.deviceSecrets!.build()
        ..initResult = _initResult
        ..clientId = config.appClientId
        ..clientSecret = config.appClientSecret
        ..challengeParameters = BuiltMap(_publicChallengeParameters);
    });
    worker.sink.add(workerMessage);
    return worker.stream.first;
  }

  /// Creates the response object for an SMS MFA challenge.
  @protected
  Future<RespondToAuthChallengeRequest> createSmsMfaRequest(
    SignInRespondToChallenge event,
  ) async {
    _enableMfaType = MfaType.sms;
    return RespondToAuthChallengeRequest.build((b) {
      b
        ..clientId = config.appClientId
        ..challengeName = _challengeName
        ..challengeResponses.addAll({
          CognitoConstants.challengeParamUsername: cognitoUsername,
          CognitoConstants.challengeParamSmsMfaCode: event.answer,
        })
        ..clientMetadata.addAll(event.clientMetadata);
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
          CognitoConstants.challengeParamUsername: cognitoUsername,
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
      final missingRequiredAttributes = _requiredAttributes;
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
    });
  }

  /// Initiates an SRP flow.
  @protected
  Future<InitiateAuthRequest> initiateSrpAuth(SignInInitiate event) async {
    _initResult = await _initSrp();
    return InitiateAuthRequest.build((b) {
      b
        ..authFlow = AuthFlowType.userSrpAuth
        ..clientId = config.appClientId
        ..authParameters.addAll({
          CognitoConstants.challengeParamUsername: providedUsername,
          CognitoConstants.challengeParamSrpA:
              _initResult!.publicA.toRadixString(16),
        })
        ..clientMetadata.addAll(event.clientMetadata);
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
          CognitoConstants.challengeParamUsername: providedUsername,
          CognitoConstants.challengeParamPassword: password,
        })
        ..clientMetadata.addAll(event.clientMetadata);
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
      case AuthenticationFlowType.customAuthWithoutSrp:
        if (password != null) {
          throw const AuthValidationException(
            'A password was given but customAuthWithoutSrp was chosen for '
            'authentication flow',
            recoverySuggestion:
                'Do not include a password in your call to Amplify.Auth.signIn',
          );
        }
      default:
        break;
    }
    if (event.authFlowType == AuthenticationFlowType.customAuthWithSrp ||
        password != null) {
      final initRequest = await initiateSrpAuth(event);
      return initRequest.rebuild(
        (b) => b
          ..authFlow = AuthFlowType.customAuth
          ..authParameters[CognitoConstants.challengeParamChallengeName] =
              'SRP_A',
      );
    }

    return InitiateAuthRequest.build((b) {
      b
        ..authFlow = AuthFlowType.customAuth
        ..authParameters[CognitoConstants.challengeParamUsername] =
            providedUsername
        ..clientId = config.appClientId
        ..clientMetadata.addAll(event.clientMetadata);
    });
  }

  TotpSetupDetails _createTotpSetupResult(String sharedSecret) =>
      TotpSetupDetails(
        sharedSecret: sharedSecret,
        username: providedUsername,
      );

  /// Initiates registration of a TOTP authenticator for use in TOTP MFA.
  @protected
  Future<TotpSetupDetails> associateSoftwareToken({
    String? accessToken,
  }) async {
    final request = AssociateSoftwareTokenRequest(
      accessToken: accessToken,
      session: _session,
    );
    final response =
        await cognitoIdentityProvider.associateSoftwareToken(request).result;
    if (response
        case AssociateSoftwareTokenResponse(
          :final session?,
          :final secretCode?
        )) {
      _session = session;
      return _createTotpSetupResult(secretCode);
    }
    throw EnableSoftwareTokenMfaException(
      'An unknown error occurred configuring TOTP MFA',
      underlyingException: response,
    );
  }

  /// Verifies the provided software token to complete registration of a TOTP
  /// authenticator.
  @protected
  Future<void> verifySoftwareToken({
    required String userCode,
    String? friendlyDeviceName,
  }) async {
    final request = VerifySoftwareTokenRequest(
      userCode: userCode,
      session: _session,
      friendlyDeviceName: friendlyDeviceName,
    );
    final response =
        await cognitoIdentityProvider.verifySoftwareToken(request).result;
    switch (response) {
      case VerifySoftwareTokenResponse(:final session?):
        _session = session;
      default:
        throw EnableSoftwareTokenMfaException(
          'An unknown error occurred configuring TOTP MFA',
          underlyingException: response,
        );
    }
  }

  /// Completes set up of a TOTP MFA.
  @protected
  Future<RespondToAuthChallengeRequest> createMfaSetupRequest(
    SignInRespondToChallenge event,
  ) async {
    await verifySoftwareToken(
      userCode: event.answer,
      friendlyDeviceName: event.friendlyDeviceName,
    );
    _enableMfaType = MfaType.totp;
    return RespondToAuthChallengeRequest.build((b) {
      b
        ..challengeName = ChallengeNameType.mfaSetup
        ..challengeResponses.addAll({
          CognitoConstants.challengeParamUsername: cognitoUsername,
          // Must be the session from `VerifySoftwareToken`
          CognitoConstants.challengeParamSession: _session!,
        })
        ..clientId = config.appClientId
        ..clientMetadata.addAll(event.clientMetadata);
    });
  }

  /// Selects an MFA type to use for sign-in.
  @protected
  Future<RespondToAuthChallengeRequest> createSelectMfaRequest(
    SignInRespondToChallenge event,
  ) async {
    final selection = event.answer.toLowerCase();
    return RespondToAuthChallengeRequest.build((b) {
      b
        ..challengeName = ChallengeNameType.selectMfaType
        ..challengeResponses.addAll({
          CognitoConstants.challengeParamUsername: cognitoUsername,
          CognitoConstants.challengeParamAnswer: switch (selection) {
            'sms' => 'SMS_MFA',
            'totp' => 'SOFTWARE_TOKEN_MFA',
            _ => throw ArgumentError('Must be either SMS or TOTP'),
          },
        })
        ..clientId = config.appClientId
        ..clientMetadata.addAll(event.clientMetadata);
    });
  }

  /// Responds to a TOTP challenge.
  @protected
  Future<RespondToAuthChallengeRequest> createSoftwareTokenMfaRequest(
    SignInRespondToChallenge event,
  ) async {
    _enableMfaType = MfaType.totp;
    return RespondToAuthChallengeRequest.build((b) {
      b
        ..challengeName = ChallengeNameType.softwareTokenMfa
        ..challengeResponses.addAll({
          CognitoConstants.challengeParamUsername: cognitoUsername,
          CognitoConstants.challengeParamSoftwareTokenMfaCode: event.answer,
        })
        ..clientId = config.appClientId
        ..clientMetadata.addAll(event.clientMetadata);
    });
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
      username: providedUsername,
      authFlowType: authFlowType,
    );

    _user
      ..userId = accessTokenJwt.claims.subject ?? idTokenJwt.claims.subject
      ..username ??= CognitoIdToken(idTokenJwt).username
      ..signInDetails = signInDetails;

    _user.userPoolTokens
      ..accessToken = accessTokenJwt
      ..refreshToken = refreshToken
      ..idToken = idTokenJwt;

    await manager.storeCredentials(
      CredentialStoreData(
        userPoolTokens: _user.userPoolTokens.build(),
        signInDetails: signInDetails,
      ),
    );

    // Clear anonymous credentials, if there were any, and fetch authenticated
    // credentials.
    if (identityPoolConfig case final identityPoolConfig?) {
      await manager.clearCredentials(
        CognitoIdentityPoolKeys(identityPoolConfig),
      );

      await manager.loadSession();
    }

    return accessToken;
  }

  /// Loads device secrets for the current user and attaches them to the current
  /// [_user].
  Future<void> _loadDeviceSecrets() async {
    try {
      final deviceSecrets = await deviceRepo.get(cognitoUsername);
      if (deviceSecrets != null) {
        logger.debug('Device secrets present for user: ${_user.username}');
        _user.deviceSecrets = deviceSecrets.toBuilder();
      } else {
        logger.debug('Device secrets not present for user: ${_user.username}');
      }
    } on Exception catch (e, st) {
      logger.debug('Could not retrieve device secrets', e, st);
    }
  }

  /// Asserts no user is currently signed in.
  Future<void> _assertSignedOut() async {
    bool isSignedIn;
    try {
      final credentials = await manager.loadCredentials();
      isSignedIn = credentials.userPoolTokens != null;
    } on Exception {
      isSignedIn = false;
    }
    if (isSignedIn) {
      throw const InvalidStateException(
        'A user is already signed in.',
        recoverySuggestion:
            'Sign out the current user by calling `Amplify.Auth.signOut` and try the sign in again.',
      );
    }
  }

  /// Runs the authentication flow to its stopping state, either a successful
  /// login, a failure, or a challenge state which requires user input.
  Future<void> run(SignInInitiate event) async {
    emit(const SignInState.initiating());

    // Collect current user info which may influence SRP flow.
    _user.username = event.parameters.username;
    await _loadDeviceSecrets();

    var initRequest = await createInitiateAuthRequest(event);
    final contextData =
        await contextDataProvider.buildRequestData(cognitoUsername);
    initRequest = initRequest.rebuild((b) {
      b.analyticsMetadata = get<AnalyticsMetadataType>()?.toBuilder();

      if (config.appClientSecret case final appClientSecret?) {
        b.authParameters[CognitoConstants.challengeParamSecretHash] =
            computeSecretHash(
          providedUsername,
          config.appClientId,
          appClientSecret,
        );
      }

      final deviceKey = _user.deviceSecrets?.deviceKey;
      if (deviceKey != null) {
        b.authParameters[CognitoConstants.challengeParamDeviceKey] = deviceKey;
      }
      if (contextData != null) {
        b.userContextData.replace(contextData);
      }
    });
    logger.verbose('$initRequest');

    final initResponse =
        await cognitoIdentityProvider.initiateAuth(initRequest).result;
    logger.verbose('$initResponse');

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
        .confirmDevice(workerResult.request)
        .result;
    final requiresConfirmation = response.userConfirmationNecessary;

    return (
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
    required Map<String, String>? clientMetadata,
  }) async {
    if (_attributesNeedingUpdate case final attributesNeedingUpdate?
        when attributesNeedingUpdate.isNotEmpty) {
      try {
        await cognitoIdentityProvider
            .updateUserAttributes(
              UpdateUserAttributesRequest.build(
                (b) => b
                  ..accessToken = accessToken
                  ..clientMetadata.addAll(clientMetadata ?? const {})
                  ..userAttributes.addAll([
                    for (final MapEntry(:key, :value)
                        in attributesNeedingUpdate.entries)
                      AttributeType(name: key.key, value: value),
                  ]),
              ),
            )
            .result;
      } finally {
        _attributesNeedingUpdate = null;
      }
    }
  }

  /// Processes the current challenge by:
  /// 1. Returning successfully if there is no challenge.
  /// 2. Querying the state machine implementation for how to respond.
  /// 3. Yielding control if the state machine cannot respond automatically and
  ///    user input is needed.
  Future<SignInState> _processChallenge([SignInEvent? event]) async {
    // There can be an indefinite amount of challenges which need responses.
    // Only when authenticationResult is set is the flow considered complete.
    final authenticationResult = _authenticationResult;
    if (authenticationResult != null) {
      final accessToken = await _saveAuthResult(authenticationResult);
      final newDeviceMetadata = authenticationResult.newDeviceMetadata;
      if (newDeviceMetadata != null) {
        final (:devicePassword, :deviceStatus) = await _createDevice(
          accessToken,
          newDeviceMetadata,
        );
        final deviceSecrets =
            _user.deviceSecrets = CognitoDeviceSecretsBuilder()
              ..deviceGroupKey = newDeviceMetadata.deviceGroupKey
              ..deviceKey = newDeviceMetadata.deviceKey
              ..devicePassword = devicePassword
              ..deviceStatus = deviceStatus;

        await deviceRepo.put(cognitoUsername, deviceSecrets.build());
      }

      await _updateAttributes(
        accessToken: accessToken,
        clientMetadata: event?.clientMetadata,
      );

      // This is needed since Cognito will not automatically mark the
      // MFA type as enabled. We do this as a convenience for the developer
      // since they are likely to forget it.
      //
      // This is done best-effort and we do not fail the sign-in flow if this
      // fails.
      if (_enableMfaType case final enableMfaType?) {
        try {
          await cognitoIdentityProvider.setMfaSettings(
            accessToken: accessToken,
            sms: enableMfaType == MfaType.sms ? MfaPreference.enabled : null,
            totp: enableMfaType == MfaType.totp ? MfaPreference.enabled : null,
          );
        } on Exception catch (e, st) {
          logger.error(
            'Failed to set ${enableMfaType.name.toUpperCase()} MFA type as enabled. '
            'Call `Amplify.Auth.updateMfaPreference` to fix this.',
            e,
            st,
          );
        } finally {
          _enableMfaType = null;
        }
      }

      return SignInState.success(_user.build().authUser);
    }

    await _updateUser(_challengeParameters);

    // Configure TOTP authentication if allowed.
    if (_allowedMfaTypes case final allowedMfaTypes?
        when _challengeParameters
            .containsKey(CognitoConstants.challengeParamMfasCanSetup)) {
      if (!allowedMfaTypes.contains(MfaType.totp)) {
        throw const InvalidUserPoolConfigurationException(
          'Cannot enable SMS MFA and TOTP MFA is not allowed',
          recoverySuggestion:
              'Contact an administrator to enable SMS MFA or allow TOTP MFA',
        );
      }
      _totpSetupResult ??= await associateSoftwareToken();
    }

    // Query the state machine for a response given potential user input in
    // `event`.
    final respondRequest = await createRespondToAuthChallengeRequest(
      event,
      _challengeName!,
      _challengeParameters,
    );

    final challengeState = SignInState.challenge(
      _challengeName!,
      _publicChallengeParameters,
      _requiredAttributes,
      _codeDeliveryDetails,
      _allowedMfaTypes,
      _totpSetupResult,
    );

    // If we can't internally respond to the challenge, we may need user
    // input. Put the state machine in the `challenge` state and yield
    // control.
    if (respondRequest == null) {
      return challengeState;
    }

    emit(challengeState);

    // Respond to Cognito and evaluate the returned response.
    return _respondToChallenge(event, respondRequest);
  }

  /// Inner handle to send the request returned from [createRespondToAuthChallengeRequest]
  /// and process its response.
  Future<SignInState> _respondToChallenge(
    SignInEvent? event,
    RespondToAuthChallengeRequest respondRequest,
  ) async {
    final userContextData = await contextDataProvider.buildRequestData(
      cognitoUsername,
    );
    respondRequest = respondRequest.rebuild((b) {
      b
        ..session ??= _session
        ..clientMetadata.replace(event?.clientMetadata ?? const {})
        ..analyticsMetadata = get<AnalyticsMetadataType>()?.toBuilder();

      if (config.appClientSecret case final appClientSecret?) {
        b.challengeResponses[CognitoConstants.challengeParamSecretHash] ??=
            computeSecretHash(
          cognitoUsername,
          config.appClientId,
          appClientSecret,
        );
      }

      if (userContextData != null) {
        b.userContextData.replace(userContextData);
      }
    });
    logger.verbose('$respondRequest');

    try {
      final challengeResp = await cognitoIdentityProvider
          .respondToAuthChallenge(respondRequest)
          .result;
      logger.verbose('$challengeResp');

      // Update flow state
      _authenticationResult = challengeResp.authenticationResult;
      _challengeName = challengeResp.challengeName;
      _challengeParameters = challengeResp.challengeParameters ?? BuiltMap();
      _session = challengeResp.session;

      return _processChallenge();
    } on ResourceNotFoundException {
      // For device flows, retry with normal SRP sign-in when the device is not
      // found. This protects against the case where a device has been removed
      // in Cognito but exists in the local cache.
      logger.debug('Received ResourceNotFoundException during device flow');
      if (_challengeName == ChallengeNameType.passwordVerifier &&
          _user.deviceSecrets != null) {
        logger.debug('Retrying without device secrets');
        _user.deviceSecrets = null;
        await deviceRepo.remove(cognitoUsername);

        final respondRequest = await createRespondToAuthChallengeRequest(
          event,
          _challengeName!,
          _challengeParameters,
        );
        return _respondToChallenge(event, respondRequest!);
      }
      rethrow;
    }
  }

  /// Updates the CognitoUser from challenge parameters.
  Future<void> _updateUser(
    BuiltMap<String, String?> challengeParameters,
  ) async {
    // If a Cognito response returned a different username than what was used
    // to login, refresh the device secrets so that they are included in future
    // requests.
    final cognitoUsername =
        challengeParameters[CognitoConstants.challengeParamUsername];
    if (cognitoUsername != null && cognitoUsername != _user.username) {
      _user.username = cognitoUsername;
      await _loadDeviceSecrets();
    }
  }

  @override
  Future<void> resolve(SignInEvent event) async {
    switch (event) {
      case SignInInitiate _:
        parameters = event.parameters;
        await _assertSignedOut();
        _reset();
        await run(event);
      case SignInRespondToChallenge _:
        final stopState = await _processChallenge(event);
        emit(stopState);
      case SignInCancelled _:
        emit(const SignInState.cancelling());
        _reset();
        emit(const SignInState.notStarted());
      case SignInSucceeded(:final user):
        emit(SignInState.success(user));
    }
  }

  @override
  SignInState? resolveError(Object error, StackTrace st) {
    if (error is Exception) {
      return SignInFailure(
        previousState: currentState,
        exception: error,
        stackTrace: st,
      );
    }
    return null;
  }

  void _reset() {
    _initResult = null;
    _user = CognitoUserBuilder();
    _authenticationResult = null;
    _challengeName = null;
    _challengeParameters = BuiltMap();
    _session = null;
    _attributesNeedingUpdate = null;
    _totpSetupResult = null;
    _enableMfaType = null;
  }
}

typedef _CreateDeviceResult = ({
  String devicePassword,
  DeviceRememberedStatusType deviceStatus,
});
