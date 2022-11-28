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
import 'package:amplify_auth_cognito_dart/src/credentials/device_metadata_repository.dart';
import 'package:amplify_auth_cognito_dart/src/flows/constants.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/cognito_identity.dart'
    hide NotAuthorizedException;
import 'package:amplify_auth_cognito_dart/src/sdk/cognito_identity_provider.dart'
    as cognito_idp;
import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_auth_cognito.fetch_auth_session_state_machine}
/// Fetches the user's auth session from the credential store and, optionally,
/// a Cognito Identity Pool.
/// {@endtemplate}
class FetchAuthSessionStateMachine extends StateMachine<FetchAuthSessionEvent,
    FetchAuthSessionState, CognitoAuthStateMachine> {
  /// {@macro amplify_auth_cognito.fetch_auth_session_state_machine}
  FetchAuthSessionStateMachine(super.manager);

  /// The [FetchAuthSessionStateMachine] type.
  static const type = StateMachineToken<
      FetchAuthSessionEvent,
      FetchAuthSessionState,
      FetchAuthSessionStateMachine,
      CognitoAuthStateMachine>();

  @override
  FetchAuthSessionState get initialState => const FetchAuthSessionState.idle();

  @override
  String get runtimeTypeName => 'FetchAuthSessionStateMachine';

  /// The Cognito Identity Provider service client.
  cognito_idp.CognitoIdentityProviderClient get _cognitoIdpClient => expect();

  /// The registered Cognito Identity client.
  CognitoIdentityClient get _cognitoIdentityClient => expect();

  /// The registered user pool config.
  CognitoUserPoolConfig? get _userPoolConfig => get();

  /// The registered identity pool config
  CognitoIdentityCredentialsProvider? get _identityPoolConfig => get();

  @override
  Future<void> resolve(FetchAuthSessionEvent event) async {
    switch (event.type) {
      case FetchAuthSessionEventType.fetch:
        event as FetchAuthSessionFetch;
        emit(const FetchAuthSessionState.fetching());
        await onFetchAuthSession(event);
        break;
      case FetchAuthSessionEventType.federate:
        event as FetchAuthSessionFederate;
        emit(const FetchAuthSessionState.fetching());
        await onFederate(event);
        break;
      case FetchAuthSessionEventType.refresh:
        event as FetchAuthSessionRefresh;
        emit(const FetchAuthSessionState.refreshing());
        await onRefresh(event);
        break;
      case FetchAuthSessionEventType.succeeded:
        event as FetchAuthSessionSucceeded;
        emit(FetchAuthSessionState.success(event.session));
        break;
      case FetchAuthSessionEventType.failed:
        event as FetchAuthSessionFailed;
        emit(FetchAuthSessionState.failure(event.exception));
        break;
    }
  }

  @override
  FetchAuthSessionState? resolveError(Object error, [StackTrace? st]) {
    if (error is Exception) {
      return FetchAuthSessionFailure(error);
    }
    return null;
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
  Map<String, String> _logins(_FederatedIdentity? federatedIdentity) {
    if (federatedIdentity == null) {
      return const {};
    }
    final logins = <String, String>{};
    final userPoolConfig = _userPoolConfig;
    if (userPoolConfig != null &&
        federatedIdentity.provider == AuthProvider.cognito) {
      final userPoolKey = 'cognito-idp.${userPoolConfig.region}.amazonaws.com/'
          '${userPoolConfig.poolId}';
      logins[userPoolKey] = federatedIdentity.token;
    } else {
      logins[federatedIdentity.provider.identityPoolProviderName] =
          federatedIdentity.token;
    }
    return logins;
  }

  /// Gets the identity ID from the authorization state machine.
  Future<String> _getIdentityId({
    required CognitoIdentityCredentialsProvider config,
    _FederatedIdentity? federatedIdentity,
  }) async {
    final resp = await _withZoneOverrides(
      () => _cognitoIdentityClient
          .getId(
            GetIdInput(
              identityPoolId: config.poolId,
              logins: _logins(federatedIdentity),
            ),
          )
          .result,
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
    required _FederatedIdentity? federatedIdentity,
  }) async {
    final resp = await _withZoneOverrides(
      () => _cognitoIdentityClient
          .getCredentialsForIdentity(
            GetCredentialsForIdentityInput(
              identityId: identityId,
              logins: _logins(federatedIdentity),
            ),
          )
          .result,
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
  bool _isExpired(DateTime? expiration) {
    // No determination can be made.
    if (expiration == null) return false;

    // Buffer to account for clock drift/differences.
    const threshold = Duration(seconds: 10);

    final currentTime = DateTime.now();
    return expiration.difference(currentTime) <= threshold;
  }

  /// State machine callback for the [FetchAuthSessionFetch] event.
  Future<void> onFetchAuthSession(
    FetchAuthSessionFetch event,
  ) async {
    final options = event.options ?? const CognitoSessionOptions();
    final result = await manager.loadCredentials();

    final userPoolTokens = result.userPoolTokens;
    final accessTokenExpiration = userPoolTokens?.accessToken.claims.expiration;
    final idTokenExpiration = userPoolTokens?.idToken.claims.expiration;
    // Only force refresh user pool tokens when we have tokens to refresh and
    // we are not also refreshing AWS credentials.
    final forceRefreshUserPoolTokens = userPoolTokens != null &&
        options.forceRefresh &&
        !options.getAWSCredentials;
    final refreshUserPoolTokens = forceRefreshUserPoolTokens ||
        _isExpired(accessTokenExpiration) ||
        _isExpired(idTokenExpiration);

    final hasIdentityPool = _identityPoolConfig != null;
    final awsCredentials = result.awsCredentials;
    final awsCredentialsExpiration = awsCredentials?.expiration;
    // Only force a refresh of AWS credentials if `getAwsCredentials` is also
    // true in order to allow the case of just refreshing the user pool tokens.
    final forceRefreshAwsCredentials =
        options.getAWSCredentials && options.forceRefresh;
    final refreshAwsCredentials =
        forceRefreshAwsCredentials || _isExpired(awsCredentialsExpiration);
    final retrieveAwsCredentials =
        awsCredentials == null && options.getAWSCredentials;
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
          identityId: result.identityId,
        ),
      ),
    );
  }

  /// State machine callback for the [FetchAuthSessionFederate] event.
  Future<void> onFederate(FetchAuthSessionFederate event) async {
    final result = await manager.loadCredentials();
    final userPoolTokens = result.userPoolTokens;
    if (userPoolTokens != null) {
      throw const InvalidStateException(
        'Cannot federate to identity pool with active user session.',
        recoverySuggestion: 'Call Amplify.Auth.signOut before calling '
            'Amplify.Auth.federateToIdentityPool.',
      );
    }

    final awsCredentialsResult = await _retrieveAwsCredentials(
      existingIdentityId: event.request.options?.developerProvidedIdentityId ??
          result.identityId,
      federatedIdentity: _FederatedIdentity(
        event.request.provider,
        event.request.token,
      ),
    );
    dispatch(
      FetchAuthSessionEvent.succeeded(
        CognitoAuthSession(
          isSignedIn: userPoolTokens != null,
          userPoolTokens: userPoolTokens,
          userSub: userPoolTokens?.userId,
          identityId: awsCredentialsResult.identityId,
          credentials: awsCredentialsResult.awsCredentials,
        ),
      ),
    );
  }

  /// State machine callback for the [FetchAuthSessionRefresh] event.
  Future<void> onRefresh(FetchAuthSessionRefresh event) async {
    final result = await manager.loadCredentials();

    var userPoolTokens = result.userPoolTokens;
    var identityId = result.identityId;
    var awsCredentials = result.awsCredentials;
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
      userPoolTokens = await _refreshUserPoolTokens(userPoolTokens);
    }
    if (event.refreshAwsCredentials) {
      final idToken = userPoolTokens?.idToken.raw;
      final awsCredentialsResult = await _retrieveAwsCredentials(
        existingIdentityId: identityId,
        federatedIdentity:
            idToken == null ? null : _FederatedIdentity.cognito(idToken),
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
    String? existingIdentityId,
    _FederatedIdentity? federatedIdentity,
  }) async {
    final identityPoolConfig = _identityPoolConfig;
    if (identityPoolConfig == null) {
      throw const InvalidAccountTypeException.noIdentityPool();
    }
    try {
      final identityId = existingIdentityId ??
          await _getIdentityId(
            config: identityPoolConfig,
            federatedIdentity: federatedIdentity,
          );

      final awsCredentials = await _fetchAwsCredentials(
        identityId: identityId,
        federatedIdentity: federatedIdentity,
      );

      await dispatch(
        CredentialStoreEvent.storeCredentials(
          CredentialStoreData(
            awsCredentials: awsCredentials,
            identityId: identityId,
          ),
        ),
      );
      await manager.loadCredentials();

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

  Future<CognitoUserPoolTokens> _refreshUserPoolTokens(
    CognitoUserPoolTokens userPoolTokens,
  ) async {
    final deviceSecrets = await getOrCreate(DeviceMetadataRepository.token)
        .get(CognitoIdToken(userPoolTokens.idToken).username);
    final refreshRequest = cognito_idp.InitiateAuthRequest.build((b) {
      b
        ..authFlow = cognito_idp.AuthFlowType.refreshTokenAuth
        ..clientId = _userPoolConfig!.appClientId
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
        () => _cognitoIdpClient.initiateAuth(refreshRequest).result,
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

      await dispatch(
        CredentialStoreEvent.storeCredentials(
          CredentialStoreData(
            userPoolTokens: newTokens,
          ),
        ),
      );
      await manager.loadCredentials();

      return newTokens;
    } on NotAuthorizedException {
      late Iterable<String> keys;
      switch (userPoolTokens.signInMethod) {
        case CognitoSignInMethod.default$:
          keys = CognitoUserPoolKeys(expect());
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

class _FederatedIdentity {
  const _FederatedIdentity(this.provider, this.token);

  const _FederatedIdentity.cognito(String idToken)
      : provider = AuthProvider.cognito,
        token = idToken;

  final AuthProvider provider;
  final String token;
}

class _AwsCredentialsResult {
  const _AwsCredentialsResult(this.awsCredentials, this.identityId);

  final AWSCredentials awsCredentials;
  final String identityId;
}
