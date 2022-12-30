// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';
import 'package:amplify_storage_s3_dart/amplify_storage_s3_dart.dart';

import 'amplifyconfiguration.dart';

Future<void> configureAmplify() async {
  final secureStorage = AmplifySecureStorageDart(
    config: AmplifySecureStorageConfig(
      scope: 'storage.example.dart.cli',
      macOSOptions: MacOSSecureStorageOptions(
        // ignore: invalid_use_of_visible_for_testing_member
        useDataProtection: false,
      ),
    ),
  );

  final auth = AmplifyAuthCognitoDart(credentialStorage: secureStorage);
  final storage = AmplifyStorageS3Dart();

  await Amplify.addPlugins([auth, storage]);
  await Amplify.configure(amplifyconfig);
}
