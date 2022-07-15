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
import 'package:amplify_auth_cognito_dart/src/credentials/auth_plugin_credentials_provider.dart';
import 'package:amplify_auth_cognito_dart/src/credentials/cognito_keys.dart';
import 'package:amplify_auth_cognito_dart/src/flows/constants.dart';
import 'package:amplify_auth_cognito_dart/src/jwt/jwt.dart';
import 'package:amplify_auth_cognito_dart/src/model/cognito_device_secrets.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/cognito_identity.dart'
    hide NotAuthorizedException;
import 'package:amplify_auth_cognito_dart/src/sdk/cognito_identity_provider.dart'
    as cognito_idp;
import 'package:amplify_auth_cognito_dart/src/state/state.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:built_collection/built_collection.dart';
import 'package:stream_transform/stream_transform.dart';

import 'generated/fetch_auth_session_state_machine_base.dart';

/// {@template amplify_auth_cognito.fetch_auth_session_state_machine}
/// Fetches the user's auth session from the credential store and, optionally,
/// a Cognito Identity Pool.
/// {@endtemplate}
class FetchAuthSessionStateMachine extends FetchAuthSessionStateMachineBase {
  /// {@macro amplify_auth_cognito.fetch_auth_session_state_machine}
  FetchAuthSessionStateMachine(super.manager);

  /// The [FetchAuthSessionStateMachine] type.
  static const type = StateMachineToken<FetchAuthSessionEvent,
      FetchAuthSessionState, FetchAuthSessionStateMachine>();

  /// The Cognito Identity Provider service client.
  cognito_idp.CognitoIdentityProviderClient get _cognitoIdpClient => expect();

  /// The registered Cognito Identity client.
  CognitoIdentityClient get _cognitoIdentityClient => expect();

  /// The registered user pool config.
  CognitoUserPoolConfig get _userPoolConfig => expect();

  /// The registered identity pool config
  CognitoIdentityCredentialsProvider? get _identityPoolConfig => get();

  /// Gets the latest fetchAuthSession result.
  Future<FetchAuthSessionSuccess?> getLatestResult() async {
    // Wait for any pending events to be processed and their initial states to
    // fire.
    await Future<void>.delayed(Duration.zero);
    final fetchState = await stream.startWith(currentState).firstWhere((state) {
      return state is FetchAuthSessionSuccess ||
          state is FetchAuthSessionFailure;
    });
    if (fetchState is FetchAuthSessionFailure) {
      throw fetchState.exception;
    }
    return fetchState as FetchAuthSessionSuccess;
  }

  /// Runs [fn] inside a zone which indicates the call originated from this
  /// state machine.
  ///
  /// Should be used for all SDK calls made from within this class.
  Future<T> _withZoneOverrides<T>(Future<T> Function() fn) {
    return runZoned(
      fn,
      zoneValues: {zInFetch: true},
    );
  }

  /// The logins map, used to associate the ID token to the Cognito identity
  /// when retrieving an authenticated identity.
  Map<String, String> _logins(String? idToken) {
    final userPoolKey = 'cognito-idp.${_userPoolConfig.region}.amazonaws.com/'
        '${_userPoolConfig.poolId}';
    return {
      if (idToken != null) userPoolKey: idToken,
    };
  }

  /// Gets the identity ID from the authorization state machine.
  Future<String> _getIdentityId({
    required CognitoIdentityCredentialsProvider config,
    required String? idToken,
  }) async {
    final resp = await _withZoneOverrides(
      () => _cognitoIdentityClient.getId(
        GetIdInput(
          identityPoolId: config.poolId,
          logins: BuiltMap(_logins(idToken)),
        ),
      ),
    );
    final identityId = resp.identityId;
    if (identityId == null) {
      throw const UnknownException('Could not retrieve identity ID');
    }
    return identityId;
  }

  /// Gets AWS credentials from the authorization state machine.
  Future<AWSCredentials> _fetchAwsCredentials({
    required String identityId,
    required String? idToken,
  }) async {
    final resp = await _withZoneOverrides(
      () => _cognitoIdentityClient.getCredentialsForIdentity(
        GetCredentialsForIdentityInput(
          identityId: identityId,
          logins: BuiltMap(_logins(idToken)),
        ),
      ),
    );
    final credentials = resp.credentials;
    if (credentials == null) {
      throw const UnknownException('Could not retrieve AWS credentials');
    }
    final accessKeyId = credentials.accessKeyId;
    final secretAccessKey = credentials.secretKey;
    final sessionToken = credentials.sessionToken;
    final expiration = credentials.expiration;
    if (accessKeyId == null || secretAccessKey == null) {
      throw const UnknownException('Could not retrieve AWS credentials');
    }
    return AWSCredentials(
      accessKeyId,
      secretAccessKey,
      sessionToken,
      expiration,
    );
  }

  /// Compares [expiration] against the current time.
  ///
  /// Returns `true` if difference is within the threshold.
  bool _isExpired(DateTime expiration) {
    // Buffer to account for clock drift/differences.
    const threshold = Duration(seconds: 10);

    final currentTime = DateTime.now();
    return expiration.difference(currentTime) <= threshold;
  }

  @override
  Future<void> onFetchAuthSession(
    FetchAuthSessionFetch event,
  ) async {
    final result = await getOrCreate(CredentialStoreStateMachine.type)
        .getCredentialsResult();

    final userPoolTokens = result.data.userPoolTokens;
    final userPoolTokensExpiration = userPoolTokens?.expirationTime;
    final refreshUserPoolTokens = userPoolTokensExpiration != null
        ? _isExpired(userPoolTokensExpiration)
        : false;

    final hasIdentityPool = _identityPoolConfig != null;
    final awsCredentials = result.data.awsCredentials;
    final awsCredentialsExpiration = awsCredentials?.expiration;
    final refreshAwsCredentials = awsCredentialsExpiration != null
        ? _isExpired(awsCredentialsExpiration)
        : false;
    final getAwsCredentials = (event.options?.getAWSCredentials ?? false);
    final retrieveAwsCredentials = awsCredentials == null && getAwsCredentials;
    if ((refreshAwsCredentials || retrieveAwsCredentials) && !hasIdentityPool) {
      throw const InvalidAccountTypeException.noIdentityPool(
        recoverySuggestion:
            'Register an identity pool using the CLI or set getAWSCredentials '
            'to false',
      );
    }

    if (refreshUserPoolTokens ||
        refreshAwsCredentials ||
        retrieveAwsCredentials) {
      dispatch(
        FetchAuthSessionEvent.refresh(
          refreshUserPoolTokens: refreshUserPoolTokens,
          refreshAwsCredentials:
              refreshAwsCredentials || retrieveAwsCredentials,
        ),
      );
      return;
    }

    // If refresh is not needed, return data directly from storage
    emit(
      FetchAuthSessionState.success(
        CognitoAuthSession(
          isSignedIn: userPoolTokens != null,
          userPoolTokens: userPoolTokens,
          credentials: awsCredentials,
          userSub: userPoolTokens?.idToken.userId,
          identityId: result.data.identityId,
        ),
      ),
    );
  }

  @override
  Future<void> onRefresh(FetchAuthSessionRefresh event) async {
    final result = await getOrCreate(CredentialStoreStateMachine.type)
        .getCredentialsResult();

    var userPoolTokens = result.data.userPoolTokens;
    var identityId = result.data.identityId;
    var awsCredentials = result.data.awsCredentials;
    if (event.refreshUserPoolTokens) {
      if (userPoolTokens == null) {
        dispatch(
          const FetchAuthSessionEvent.failed(
            UnknownException(
              'No user pool tokens available for refresh',
            ),
          ),
        );
        return;
      }
      userPoolTokens = await _refreshUserPoolTokens(
        userPoolTokens: userPoolTokens,
        deviceSecrets: result.data.deviceSecrets,
      );
    }
    if (event.refreshAwsCredentials) {
      final awsCredentialsResult = await _retrieveAwsCredentials(
        userPoolTokens: userPoolTokens,
      );
      identityId = awsCredentialsResult.identityId;
      awsCredentials = awsCredentialsResult.awsCredentials;
    }
    dispatch(
      FetchAuthSessionEvent.succeeded(
        CognitoAuthSession(
          isSignedIn: userPoolTokens != null,
          userPoolTokens: userPoolTokens,
          userSub: userPoolTokens?.idToken.userId,
          identityId: identityId,
          credentials: awsCredentials,
        ),
      ),
    );
  }

  Future<_AwsCredentialsResult> _retrieveAwsCredentials({
    CognitoUserPoolTokens? userPoolTokens,
  }) async {
    final identityPoolConfig = _identityPoolConfig;
    if (identityPoolConfig == null) {
      throw const InvalidAccountTypeException.noIdentityPool();
    }
    try {
      final identityId = await _getIdentityId(
        config: identityPoolConfig,
        idToken: userPoolTokens?.idToken.raw,
      );

      final awsCredentials = await _fetchAwsCredentials(
        idToken: userPoolTokens?.idToken.raw,
        identityId: identityId,
      );

      dispatch(
        CredentialStoreEvent.storeCredentials(
          CredentialStoreData(
            awsCredentials: awsCredentials,
            identityId: identityId,
          ),
        ),
      );

      return _AwsCredentialsResult(awsCredentials, identityId);
    } on NotAuthorizedException {
      // If expired credentials were cached and trying to refresh them throws
      // a NotAuthorizedException, clear any AWS credentials which were being
      // refreshed, since they may have been from an authenticated user whose
      // session expired in an identity pool not supporting unauthenticated
      // access and we should prevent further attempts at refreshing.
      dispatch(
        CredentialStoreEvent.clearCredentials(
          CognitoIdentityPoolKeys(identityPoolConfig),
        ),
      );
      rethrow;
    }
  }

  Future<CognitoUserPoolTokens> _refreshUserPoolTokens({
    required CognitoUserPoolTokens userPoolTokens,
    CognitoDeviceSecrets? deviceSecrets,
  }) async {
    final refreshRequest = cognito_idp.InitiateAuthRequest.build((b) {
      b
        ..authFlow = cognito_idp.AuthFlowType.refreshTokenAuth
        ..clientId = _userPoolConfig.appClientId
        ..authParameters.addAll({
          CognitoConstants.refreshToken: userPoolTokens.refreshToken,
        });

      final deviceKey = deviceSecrets?.deviceKey;
      if (deviceKey != null) {
        b.authParameters[CognitoConstants.challengeParamDeviceKey] = deviceKey;
      }
    });
    try {
      final result = await _withZoneOverrides(
        () => _cognitoIdpClient.initiateAuth(refreshRequest),
      );
      final authResult = result.authenticationResult;

      final accessToken = authResult?.accessToken;
      final refreshToken = authResult?.refreshToken;
      final idToken = authResult?.idToken;
      if (authResult == null || accessToken == null) {
        throw const UnknownException('User Pool tokens could not be refreshed');
      }
      final newTokens = CognitoUserPoolTokens(
        signInMethod: userPoolTokens.signInMethod,
        accessToken: JsonWebToken.parse(accessToken),
        refreshToken: refreshToken ?? userPoolTokens.refreshToken,
        idToken: idToken != null
            ? JsonWebToken.parse(idToken)
            : userPoolTokens.idToken,
      );

      dispatch(
        CredentialStoreEvent.storeCredentials(
          CredentialStoreData(
            userPoolTokens: newTokens,
          ),
        ),
      );

      return newTokens;
    } on NotAuthorizedException {
      late Iterable<String> keys;
      switch (userPoolTokens.signInMethod) {
        case CognitoSignInMethod.default$:
          keys = CognitoUserPoolKeys(_userPoolConfig);
          break;
        case CognitoSignInMethod.hostedUi:
          keys = HostedUiKeys(expect());
          break;
      }
      final identityPoolConfig = _identityPoolConfig;
      dispatch(
        CredentialStoreEvent.clearCredentials([
          ...keys,
          if (identityPoolConfig != null)
            // Clear associated AWS credentials
            ...CognitoIdentityPoolKeys(identityPoolConfig),
        ]),
      );
      rethrow;
    }
  }
}

class _AwsCredentialsResult {
  const _AwsCredentialsResult(this.awsCredentials, this.identityId);

  final AWSCredentials awsCredentials;
  final String identityId;
}
