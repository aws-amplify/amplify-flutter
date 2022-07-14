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
import 'dart:convert';

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart'
    hide UpdateUserAttributesRequest;
import 'package:amplify_auth_cognito_dart/src/credentials/cognito_keys.dart';
import 'package:amplify_auth_cognito_dart/src/flows/constants.dart';
import 'package:amplify_auth_cognito_dart/src/flows/device/confirm_device_worker.dart';
import 'package:amplify_auth_cognito_dart/src/flows/helpers.dart';
import 'package:amplify_auth_cognito_dart/src/flows/srp/srp_device_password_verifier_worker.dart';
import 'package:amplify_auth_cognito_dart/src/flows/srp/srp_init_result.dart';
import 'package:amplify_auth_cognito_dart/src/flows/srp/srp_init_worker.dart';
import 'package:amplify_auth_cognito_dart/src/flows/srp/srp_password_verifier_worker.dart';
import 'package:amplify_auth_cognito_dart/src/jwt/jwt.dart';
import 'package:amplify_auth_cognito_dart/src/model/cognito_user.dart';
import 'package:amplify_auth_cognito_dart/src/model/sign_in_parameters.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/cognito_identity_provider.dart'
    hide InvalidParameterException;
import 'package:amplify_auth_cognito_dart/src/sdk/sdk_bridge.dart';
import 'package:amplify_auth_cognito_dart/src/state/state.dart';
import 'package:amplify_core/amplify_core.dart'
    hide UpdateUserAttributesRequest;
import 'package:async/async.dart';
import 'package:built_collection/built_collection.dart';
import 'package:meta/meta.dart';
import 'package:worker_bee/worker_bee.dart';

/// {@template amplify_auth_cognito.sign_in_state_machine}
/// Base class for state machines which perform some auth flow. These all follow
/// the same pattern of calling `cognitoIdp.InitiateAuth` plus some number of
/// challenge responses.
/// {@endtemplate}
class SignInStateMachine extends StateMachine<SignInEvent, SignInState> {
  /// {@macro amplify_auth_cognito.sign_in_state_machine}
  SignInStateMachine(super.manager);

  /// The [SignInStateMachine] type.
  static const type =
      StateMachineToken<SignInEvent, SignInState, SignInStateMachine>();

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

  /// The user's password when performing SRP sign-in.
  ///
  /// Needed for post-login device creation in user pools with device tracking
  /// enabled.
  late final String _password;

  // Lazy initializers for worker types.
  final AsyncMemoizer<SrpInitWorker> _initWorkerMemoizer = AsyncMemoizer();
  final AsyncMemoizer<SrpPasswordVerifierWorker>
      _passwordVerifierWorkerMemoizer = AsyncMemoizer();
  final AsyncMemoizer<SrpDevicePasswordVerifierWorker>
      _devicePasswordVerifierWorkerMemoizer = AsyncMemoizer();
  final AsyncMemoizer<ConfirmDeviceWorker> _confirmDeviceWorkerMemoizer =
      AsyncMemoizer();

  /// The SRP init worker.
  Future<SrpInitWorker> get initWorker async =>
      _initWorkerMemoizer.runOnce(() async {
        var worker = get<SrpInitWorker>();
        if (worker != null) {
          return worker;
        }
        worker = SrpInitWorker.create();
        // TODO(dnys1): Log
        worker.logs.listen(safePrint);
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
        // TODO(dnys1): Log
        worker.logs.listen(safePrint);
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
        // TODO(dnys1): Log
        worker.logs.listen(safePrint);
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
        // TODO(dnys1): Log
        worker.logs.listen(safePrint);
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
    // Save password for device flow
    final password = parameters.password;
    if (password != null) {
      _password = password;
    }

    String expectPassword() {
      if (password == null) {
        throw const InvalidParameterException('No password was provided');
      }
      return password;
    }

    authFlowType = event.authFlowType ?? defaultAuthFlowType;
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
    ChallengeNameType challengeName,
    BuiltMap<String, String> challengeParameters, [
    SignInRespondToChallenge? event,
  ]) async {
    if (authFlowType == AuthFlowType.customAuth && event != null) {
      return RespondToAuthChallengeRequest.build(
        (b) => b
          ..challengeName = ChallengeNameType.customChallenge
          ..challengeResponses.addAll({
            CognitoConstants.challengeParamUsername: parameters.username,
            CognitoConstants.challengeParamAnswer: event.answer,
          })
          ..clientId = config.appClientId,
      );
    }
    return respondToSrpChallenge(challengeName, challengeParameters, event);
  }

  /// Creates the password verifier request in a worker instance.
  @protected
  Future<RespondToAuthChallengeRequest> createPasswordVerifierRequest(
    BuiltMap<String, String> challengeParameters,
  ) async {
    final username = parameters.username;
    final password = parameters.password;
    if (password == null || password.isEmpty) {
      throw const SrpSignInInputValidationException('No password given');
    }

    final initResult = _initResult;
    if (initResult == null) {
      throw const SrpSignInCalculationException('Must call init first');
    }

    final worker = await passwordVerifierWorker;
    final workerMessage = SrpPasswordVerifierMessage((b) {
      b
        ..initResult = initResult
        ..clientId = config.appClientId
        ..clientSecret = config.appClientSecret
        ..poolId = config.poolId
        ..deviceKey = user.device?.id
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
      throw const SrpSignInCalculationException('Must call init first');
    }
    return RespondToAuthChallengeRequest.build((b) {
      b
        ..clientId = config.appClientId
        ..challengeName = ChallengeNameType.deviceSrpAuth
        ..challengeResponses.addAll({
          CognitoConstants.challengeParamUsername: user.username!,
          CognitoConstants.challengeParamDeviceKey: user.device!.id,
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
      throw const SrpSignInInputValidationException('No password given');
    }

    final worker = await devicePasswordVerifierWorker;
    final workerMessage = SrpDevicePasswordVerifierMessage((b) {
      b
        ..deviceSecrets = user.deviceSecrets.build()
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

      final deviceKey = user.device?.id;
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

      final deviceKey = user.device?.id;
      if (deviceKey != null) {
        b.authParameters[CognitoConstants.challengeParamDeviceKey] = deviceKey;
      }
    });
  }

  /// Initiates a custom auth flow.
  @protected
  Future<InitiateAuthRequest> initiateCustomAuth(SignInInitiate event) async {
    // If a password is provided, start the SRP flow by including
    // `CHALLENGE_NAME` in the auth parameters.
    if (parameters.password != null) {
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

      final deviceKey = user.device?.id;
      if (deviceKey != null) {
        b.authParameters[CognitoConstants.challengeParamDeviceKey] = deviceKey;
      }
    });
  }

  /// Responds to an SRP flow challenge.
  @protected
  Future<RespondToAuthChallengeRequest?> respondToSrpChallenge(
    ChallengeNameType challengeName,
    BuiltMap<String, String> challengeParameters, [
    SignInRespondToChallenge? event,
  ]) async {
    switch (challengeName) {
      case ChallengeNameType.passwordVerifier:
        return createPasswordVerifierRequest(challengeParameters);
      case ChallengeNameType.deviceSrpAuth:
        return createDeviceSrpAuthRequest();
      case ChallengeNameType.devicePasswordVerifier:
        return createDevicePasswordVerifierRequest(challengeParameters);
      case ChallengeNameType.smsMfa:
        if (event != null) {
          return createSmsMfaRequest(event);
        }
        break;
      case ChallengeNameType.newPasswordRequired:
        if (event != null) {
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

    user
      ..userId = accessTokenJwt.claims.subject ?? idTokenJwt.claims.subject
      ..username ??= CognitoIdToken(idTokenJwt).username;

    user.userPoolTokens
      ..accessToken = accessTokenJwt
      ..refreshToken = refreshToken
      ..idToken = idTokenJwt;

    dispatch(
      CredentialStoreEvent.storeCredentials(
        userPoolTokens: user.userPoolTokens.build(),
      ),
    );

    // Clear anonymous credentials, if there were any, and fetch authenticated
    // credentials.
    if (hasIdentityPool) {
      dispatch(
        CredentialStoreEvent.clearCredentials(
          CognitoIdentityPoolKeys(identityPoolConfig!),
        ),
      );

      await dispatch(
        const FetchAuthSessionEvent.fetch(
          CognitoSessionOptions(getAWSCredentials: true),
        ),
      );

      // Wait for above to propagate and complete successfully.
      await expect(FetchAuthSessionStateMachine.type).getLatestResult();
    }

    return accessToken;
  }

  /// Runs the authentication flow to its stopping state, either a successful
  /// login, a failure, or a challenge state which requires user input.
  Future<void> run(SignInInitiate event) async {
    emit(const SignInState.initiating());

    // Collect current user info which may influence SRP flow.
    try {
      final credentials =
          await expect(CredentialStoreStateMachine.type).getCredentialsResult();
      final deviceSecrets = credentials.deviceSecrets;
      if (deviceSecrets != null) {
        user.deviceSecrets.replace(deviceSecrets);
      }
    } on Exception catch (e, st) {
      logger.debug('Could not retrieve credentials', e, st);
    }

    final initRequest = await initiate(event);
    final initResponse =
        await cognitoIdentityProvider.initiateAuth(initRequest);

    // Current flow state
    _authenticationResult = initResponse.authenticationResult;
    _challengeName = initResponse.challengeName;
    _challengeParameters = initResponse.challengeParameters ?? BuiltMap();
    _session = initResponse.session;

    final stopState = await _processChallenge();
    emit(stopState);
  }

  /// Confirms the user's device in user pools where device tracking is enabled.
  ///
  /// If device tracking is set to opt-in, a second call to `rememberDevice` is
  /// needed to remember the device. If device tracking is set to always, then
  /// the device is remembered as part of this call.
  Future<void> _createDevice(
    String accessToken,
    NewDeviceMetadataType newDeviceMetadata,
  ) async {
    final worker = await confirmDeviceWorker;
    worker.add(
      ConfirmDeviceMessage(
        (b) => b
          ..accessToken = accessToken
          ..newDeviceMetadata.replace(newDeviceMetadata)
          ..password = _password,
      ),
    );
    final request = await worker.stream.first;

    await cognitoIdentityProvider.confirmDevice(request);
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
      await cognitoIdentityProvider.updateUserAttributes(
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
      );
    } finally {
      _attributesNeedingUpdate = null;
    }
  }

  /// Processes the current challenge by:
  /// 1. Returning successfully if there is no challenge.
  /// 2. Querying the state machine implementation for how to respond.
  /// 3. Yielding control if the state machine cannot respond automatically and
  ///    user input is needed.
  Future<SignInState> _processChallenge([
    SignInRespondToChallenge? event,
  ]) async {
    // There can be an indefinite amount of challenges which need responses.
    // Only when authenticationResult is set is the flow considered complete.
    final authenticationResult = _authenticationResult;
    if (authenticationResult != null) {
      final accessToken = await _saveAuthResult(authenticationResult);
      final newDeviceMetadata = authenticationResult.newDeviceMetadata;
      if (newDeviceMetadata != null &&
          // ConfirmDevice API requires an identity pool
          hasIdentityPool) {
        user.deviceSecrets
          ..deviceGroupKey = newDeviceMetadata.deviceGroupKey
          ..deviceKey = newDeviceMetadata.deviceKey;

        await _createDevice(
          accessToken,
          newDeviceMetadata,
        );

        dispatch(
          CredentialStoreEvent.storeCredentials(
            deviceSecrets: user.deviceSecrets.build(),
          ),
        );
      }

      await _updateAttributes(
        accessToken: accessToken,
        clientMetadata: event?.clientMetadata ?? const {},
      );

      return SignInState.success(user.build());
    }

    _updateUser(_challengeParameters);

    // Query the state machine for a response given potential user input in
    // `event`.
    final respondRequest = await respondToAuthChallenge(
      _challengeName!,
      _challengeParameters,
      event,
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
    await _respondToChallenge(respondRequest, event?.clientMetadata);
    return _processChallenge();
  }

  /// Inner handle to send the response returned from [respondToAuthChallenge].
  Future<void> _respondToChallenge(
    RespondToAuthChallengeRequest respondRequest,
    Map<String, String>? clientMetadata,
  ) async {
    // Include session if not already included.
    respondRequest = respondRequest.rebuild(
      (b) => b
        ..session ??= _session
        ..clientMetadata.replace(clientMetadata ?? const <String, String>{}),
    );

    final challengeResp =
        await cognitoIdentityProvider.respondToAuthChallenge(respondRequest);

    // Update flow state
    _authenticationResult = challengeResp.authenticationResult;
    _challengeName = challengeResp.challengeName;
    _challengeParameters = challengeResp.challengeParameters ?? BuiltMap();
    _session = challengeResp.session;
  }

  /// Updates the CognitoUser from challege parameters.
  void _updateUser(BuiltMap<String, String> challengeParameters) {
    user.username ??=
        challengeParameters[CognitoConstants.challengeParamUsername];
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
      case SignInEventType.failed:
        event as SignInFailed;
        emit(SignInState.failure(event.exception));
        return;
    }
  }

  @override
  SignInState? resolveError(Object error, [StackTrace? st]) {
    if (error is Exception) {
      return SignInFailure(error);
    }
    return null;
  }
}
