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
