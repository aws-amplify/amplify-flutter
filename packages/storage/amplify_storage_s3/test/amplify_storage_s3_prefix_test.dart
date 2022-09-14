/*
 * Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

import 'dart:async';

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_storage_s3/amplify_storage_s3.dart';
import 'package:amplify_storage_s3/method_channel_storage_s3.dart';
import 'package:amplify_test/amplify_test.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

// Utilized from: https://github.com/flutter/flutter/issues/63465 #CyrilHu
// For mocking Native -> Dart
extension MockMethodChannel on MethodChannel {
  Future<void> invokeMockMethod(
      String method, dynamic arguments, Function(dynamic)? callback) async {
    const codec = StandardMethodCodec();
    final data = codec.encodeMethodCall(MethodCall(method, arguments));

    return ambiguate(ServicesBinding.instance)
        ?.defaultBinaryMessenger
        .handlePlatformMessage(
      name,
      data,
      (ByteData? data) {
        if (callback != null) callback(codec.decodeEnvelope(data!));
      },
    );
  }
}

void main() {
  const testPath = 'chosenPath';
  const testAccessLevelString = 'guest';
  const testAccessLevel = StorageAccessLevel.guest;
  const testTargetIdentity = 'test-identity-id';
  const testErrorMessage = 'some error message';
  final testException = Exception(testErrorMessage);

  const MethodChannel storageChannel =
      MethodChannel('com.amazonaws.amplify/storage_s3');

  TestWidgetsFlutterBinding.ensureInitialized();

  late StorageAccessLevel receivedAccessLevel;
  String? receivedIdentityId;
  bool throwErrorInPrefixResolver = false;

  String prefixResolver(
      {required StorageAccessLevel storageAccessLevel, String? identityId}) {
    receivedAccessLevel = storageAccessLevel;
    receivedIdentityId = identityId;

    if (throwErrorInPrefixResolver) throw testException;

    return testPath;
  }

  setUp(() {
    storageChannel.setMockMethodCallHandler((MethodCall methodCall) async {});
    AmplifyStorageS3MethodChannel storage = AmplifyStorageS3MethodChannel(
        prefixResolver: PrefixResolverTest(prefixResolver));
    return storage.addPlugin();
  });

  test(
      'PrefixResolver information from MethodChannel is properly serialized and called',
      () async {
    dynamic dataSentToNative;
    await storageChannel.invokeMockMethod(
        'awsS3PluginPrefixResolver',
        {
          'accessLevel': testAccessLevelString,
          'targetIdentity': testTargetIdentity
        },
        (e) => dataSentToNative = e);
    expect(receivedAccessLevel, testAccessLevel);
    expect(receivedIdentityId, testTargetIdentity);

    dynamic map = Map<String, dynamic>.from(dataSentToNative);
    expect(map['isSuccess'], true);
    expect(map['prefix'], testPath);
  });

  test('Exception in PrefixResolver is properly serialized to native',
      () async {
    dynamic dataSentToNative;
    throwErrorInPrefixResolver = true;
    await storageChannel.invokeMockMethod(
        'awsS3PluginPrefixResolver',
        {
          'accessLevel': testAccessLevelString,
          'targetIdentity': testTargetIdentity
        },
        (e) => dataSentToNative = e);

    dynamic map = Map<String, dynamic>.from(dataSentToNative);
    expect(map['isSuccess'], false);
    expect(map['errorMessage'], testException.toString());
    expect(map['errorRecoverySuggestion'],
        'Custom PrefixResolver threw an exception');
  });
}

class PrefixResolverTest implements StorageS3PrefixResolver {
  String Function(
      {required StorageAccessLevel storageAccessLevel,
      String? identityId}) callback;

  PrefixResolverTest(this.callback);

  Future<String> resolvePrefix({
    required StorageAccessLevel storageAccessLevel,
    String? identityId,
  }) async {
    return callback(
        storageAccessLevel: storageAccessLevel, identityId: identityId);
  }
}
