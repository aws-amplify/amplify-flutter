// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_storage_s3/amplify_storage_s3.dart';
import 'package:flutter_test/flutter_test.dart';

Future<void> configure(String config) async {
  final authPlugin = AmplifyAuthCognito(
    secureStorageFactory: AmplifySecureStorage.factoryFrom(
      macOSOptions: MacOSSecureStorageOptions(useDataProtection: false),
    ),
  );
  final storagePlugin = AmplifyStorageS3();

  await Amplify.addPlugins([authPlugin, storagePlugin]);
  await Amplify.configure(config);
  addTearDown(Amplify.reset);
}
