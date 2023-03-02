// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_storage_s3/amplify_storage_s3.dart';
import 'package:amplify_storage_s3_example/amplifyconfiguration.dart';
import 'package:amplify_test/amplify_test.dart';
import 'package:flutter_test/flutter_test.dart';

// Tests https://github.com/aws-amplify/amplify-flutter/issues/2711
void main() {
  test('GetURL incorrect signing for special characters', () async {
    final authPlugin = AmplifyAuthCognito(
      credentialStorage: AmplifySecureStorage(
        config: AmplifySecureStorageConfig(
          scope: 'auth',
          macOSOptions: MacOSSecureStorageOptions(useDataProtection: false),
        ),
      ),
    );
    final storagePlugin = AmplifyStorageS3();
    await Amplify.addPlugins([authPlugin, storagePlugin]);
    await Amplify.configure(amplifyconfig);
    addTearDown(Amplify.reset);

    final username = generateUsername();
    final password = generatePassword();

    final signUpResult = await Amplify.Auth.signUp(
      username: username,
      password: password,
    );
    expect(signUpResult.isSignUpComplete, isTrue);

    final signInResult = await Amplify.Auth.signIn(
      username: username,
      password: password,
    );
    expect(signInResult.isSignedIn, isTrue);

    addTearDown(Amplify.Auth.deleteUser);

    final key = 'Test - ${DateTime.now()}';
    await Amplify.Storage.uploadData(
      data: S3DataPayload.bytes('hello'.codeUnits),
      key: key,
    ).result;

    final getUrlResult = await Amplify.Storage.getUrl(key: key).result;
    final uri = getUrlResult.url;

    final client = AWSHttpClient()
      ..supportedProtocols = SupportedProtocols.http1;
    addTearDown(client.close);

    final response = await client.send(AWSHttpRequest.get(uri)).response;
    final body = await response.decodeBody();
    if (response.statusCode != 200) {
      fail(body);
    }
    expect(body, 'hello');
  });
}
