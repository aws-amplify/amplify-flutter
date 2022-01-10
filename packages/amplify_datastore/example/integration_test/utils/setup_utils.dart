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

import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_datastore_example/amplifyconfiguration.dart';
import 'package:amplify_datastore_example/models/ModelProvider.dart';
import 'package:amplify_flutter/amplify_flutter.dart';

Future<void> configureDataStore() async {
  if (!Amplify.isConfigured) {
    final dataStorePlugin =
        AmplifyDataStore(modelProvider: ModelProvider.instance);
    await Amplify.addPlugins([dataStorePlugin]);
    await Amplify.configure(amplifyconfig);
  }
}

/// Clears DataStore after a delay to resolve an issue in amplify-android
///
/// DataStore can lock up on Android if .clear() is called immediately after
/// other DataStore operations
///
/// see: https:///github.com/aws-amplify/amplify-android/issues/1464
Future<void> clearDataStore() async {
  await Future.delayed(Duration(milliseconds: 100));
  await Amplify.DataStore.clear();
}
