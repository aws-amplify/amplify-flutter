// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_auth_cognito_example/amplifyconfiguration.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_test/amplify_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'utils/mock_data.dart';
import 'utils/setup_utils.dart';

class InlineHttpClient extends AWSCustomHttpClient {
  InlineHttpClient({
    this.transformRequest,
  });

  final AWSBaseHttpRequest Function(AWSBaseHttpRequest)? transformRequest;

  @override
  SupportedProtocols get supportedProtocols => SupportedProtocols.http1;

  @override
  AWSHttpOperation send(
    AWSBaseHttpRequest request, {
    FutureOr<void> Function()? onCancel,
  }) {
    request = transformRequest?.call(request) ?? request;
    return super.send(request, onCancel: onCancel);
  }
}

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('security', () {
    tearDown(() async {
      await signOutUser();
      await Amplify.reset();
    });

    test('adds cache-control header', () async {
      final plugin = AmplifyAuthCognito(
        credentialStorage: AmplifySecureStorage(
          config: AmplifySecureStorageConfig(
            scope: 'auth-test',
            macOSOptions: MacOSSecureStorageOptions(useDataProtection: false),
          ),
        ),
      );
      final client = InlineHttpClient(
        transformRequest: expectAsync1(count: 1, max: -1, (request) {
          expect(request.headers[AWSHeaders.cacheControl], 'no-store');
          return request;
        }),
      );
      // ignore: invalid_use_of_protected_member
      plugin.stateMachine.addInstance<AWSHttpClient>(client);

      await Amplify.addPlugins([plugin, AmplifyAPI()]);
      await Amplify.configure(amplifyconfig);

      final username = generateUsername();
      final password = generatePassword();

      await adminCreateUser(
        username,
        password,
        autoConfirm: true,
        verifyAttributes: true,
      );

      final res = await Amplify.Auth.signIn(
        username: username,
        password: password,
      );
      expect(res.isSignedIn, isTrue);
    });
  });
}
