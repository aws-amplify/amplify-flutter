//
// Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License").
// You may not use this file except in compliance with the License.
// A copy of the License is located at
//
//  http://aws.amazon.com/apache2.0
//
// or in the "license" file accompanying this file. This file is distributed
// on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
// express or implied. See the License for the specific language governing
// permissions and limitations under the License.
//

import 'package:amplify_api/src/method_channel_api.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'auth_providers_test.mocks.dart';

@GenerateMocks([OIDCAuthProvider])
void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  const apiChannel = 'com.amazonaws.amplify/api';
  final binaryMessenger =
      TestDefaultBinaryMessengerBinding.instance!.defaultBinaryMessenger;
  const standardCodec = StandardMethodCodec();
  final methodCall = MethodCall(
    'getLatestAuthToken',
    APIAuthorizationType.oidc.rawValue,
  );
  final provider = MockOIDCAuthProvider();

  late AmplifyAPIMethodChannel amplifyAPI;

  // Mocks a call to `getLatestAuthToken` from the native side.
  Future<Object?> invokeGetLatestAuthToken() async {
    final response = await binaryMessenger.handlePlatformMessage(
      apiChannel,
      standardCodec.encodeMethodCall(methodCall),
      null,
    );
    expect(response, isNotNull);
    return standardCodec.decodeEnvelope(response!) as Object?;
  }

  group('APIAuthProvider', () {
    group('getLatestAuthToken', () {
      setUp(() {
        amplifyAPI = AmplifyAPIMethodChannel();
        amplifyAPI.setupAuthProviders();
        reset(provider);
        when<APIAuthorizationType>(provider.type)
            .thenReturn(APIAuthorizationType.oidc);
        amplifyAPI.registerAuthProvider(provider);
      });

      test('returns token', () async {
        const oidcToken = 'some_token';
        when(provider.getLatestAuthToken()).thenAnswer((_) async => oidcToken);
        final token = await invokeGetLatestAuthToken();
        expect(token, isA<String>());
        expect(token, equals(oidcToken));
      });

      test('returns error', () async {
        when(provider.getLatestAuthToken())
            .thenAnswer((_) async => throw Exception());
        final token = await invokeGetLatestAuthToken();
        expect(token, isNull);
      });
    });
  });
}
