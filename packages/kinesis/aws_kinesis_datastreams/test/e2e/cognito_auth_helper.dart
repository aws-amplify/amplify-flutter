// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// Lightweight Cognito auth helper for E2E tests.
///
/// Makes direct HTTP calls to Cognito APIs without requiring
/// amplify_auth_cognito_dart as a dependency. This keeps the
/// kinesis package decoupled from the Amplify auth stack.
library;

import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:amplify_foundation_dart/amplify_foundation_dart.dart';

/// Parsed Amplify outputs for auth configuration.
class AmplifyAuthConfig {
  const AmplifyAuthConfig({
    required this.userPoolId,
    required this.userPoolClientId,
    required this.identityPoolId,
    required this.region,
  });

  /// Parses the `amplify_outputs.dart` JSON config string.
  factory AmplifyAuthConfig.fromJson(String jsonString) {
    final config = jsonDecode(jsonString) as Map<String, dynamic>;
    final auth = config['auth'] as Map<String, dynamic>;
    return AmplifyAuthConfig(
      userPoolId: auth['user_pool_id'] as String,
      userPoolClientId: auth['user_pool_client_id'] as String,
      identityPoolId: auth['identity_pool_id'] as String,
      region: auth['aws_region'] as String,
    );
  }

  final String userPoolId;
  final String userPoolClientId;
  final String identityPoolId;
  final String region;
}

/// Helper that signs up a test user, authenticates, and retrieves
/// temporary AWS credentials from the Cognito identity pool.
class CognitoAuthHelper {
  CognitoAuthHelper(this.config);

  final AmplifyAuthConfig config;

  String get _cognitoEndpoint =>
      'https://cognito-idp.${config.region}.amazonaws.com/';

  String get _identityEndpoint =>
      'https://cognito-identity.${config.region}.amazonaws.com/';

  /// Signs up and signs in a test user, returning temporary AWS credentials.
  Future<AWSCredentials> authenticate() async {
    final email = _generateTestEmail();
    const password = 'Test@12345678';

    // Sign up (auto-confirmed by pre-sign-up trigger)
    await _signUp(email, password);

    // Sign in and get tokens
    final idToken = await _signIn(email, password);

    // Exchange tokens for AWS credentials via identity pool
    return _getCredentials(idToken);
  }

  String _generateTestEmail() {
    final random = Random();
    final suffix = random.nextInt(999999).toString().padLeft(6, '0');
    return 'kinesis-e2e-$suffix@test.example.com';
  }

  Future<void> _signUp(String email, String password) async {
    await _cognitoRequest('AWSCognitoIdentityProviderService.SignUp', {
      'ClientId': config.userPoolClientId,
      'Username': email,
      'Password': password,
      'UserAttributes': [
        {'Name': 'email', 'Value': email},
      ],
    });
  }

  Future<String> _signIn(String email, String password) async {
    final response = await _cognitoRequest(
      'AWSCognitoIdentityProviderService.InitiateAuth',
      {
        'AuthFlow': 'USER_PASSWORD_AUTH',
        'ClientId': config.userPoolClientId,
        'AuthParameters': {'USERNAME': email, 'PASSWORD': password},
      },
    );
    final result = response['AuthenticationResult'] as Map<String, dynamic>;
    return result['IdToken'] as String;
  }

  Future<AWSCredentials> _getCredentials(String idToken) async {
    final logins = {
      'cognito-idp.${config.region}.amazonaws.com/${config.userPoolId}':
          idToken,
    };

    // Get identity ID
    final idResponse = await _identityRequest(
      'AWSCognitoIdentityService.GetId',
      {'IdentityPoolId': config.identityPoolId, 'Logins': logins},
    );
    final identityId = idResponse['IdentityId'] as String;

    // Get credentials
    final credResponse = await _identityRequest(
      'AWSCognitoIdentityService.GetCredentialsForIdentity',
      {'IdentityId': identityId, 'Logins': logins},
    );
    final creds = credResponse['Credentials'] as Map<String, dynamic>;

    return TemporaryCredentials(
      creds['AccessKeyId'] as String,
      creds['SecretKey'] as String,
      creds['SessionToken'] as String,
      DateTime.fromMillisecondsSinceEpoch(
        ((creds['Expiration'] as num) * 1000).toInt(),
      ),
    );
  }

  Future<Map<String, dynamic>> _cognitoRequest(
    String target,
    Map<String, dynamic> body,
  ) async {
    return _postJson(_cognitoEndpoint, target, body);
  }

  Future<Map<String, dynamic>> _identityRequest(
    String target,
    Map<String, dynamic> body,
  ) async {
    return _postJson(_identityEndpoint, target, body);
  }

  Future<Map<String, dynamic>> _postJson(
    String endpoint,
    String target,
    Map<String, dynamic> body,
  ) async {
    final client = HttpClient();
    try {
      final request = await client.postUrl(Uri.parse(endpoint));
      request.headers.set('Content-Type', 'application/x-amz-json-1.1');
      request.headers.set('X-Amz-Target', target);
      request.write(jsonEncode(body));
      final response = await request.close();
      final responseBody = await response.transform(utf8.decoder).join();
      if (response.statusCode != 200) {
        throw Exception(
          'Cognito request failed ($target): '
          '${response.statusCode} $responseBody',
        );
      }
      return jsonDecode(responseBody) as Map<String, dynamic>;
    } finally {
      client.close();
    }
  }
}

/// An [AWSCredentialsProvider] backed by Cognito authentication.
class CognitoCredentialsProvider implements AWSCredentialsProvider {
  CognitoCredentialsProvider(this._helper);

  final CognitoAuthHelper _helper;
  AWSCredentials? _cached;

  @override
  Future<AWSCredentials> resolve() async {
    final cached = _cached;
    if (cached != null && cached is TemporaryCredentials) {
      if (DateTime.now().isBefore(cached.expiration)) {
        return cached;
      }
    }
    _cached = await _helper.authenticate();
    return _cached!;
  }
}
