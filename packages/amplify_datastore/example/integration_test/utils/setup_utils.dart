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

import 'dart:async';

import 'package:amplify_datastore/amplify_datastore.dart';

/// Uncomment for environments[datastore_basic]
/// import 'package:amplify_datastore_example/models/ModelProvider.dart';

/// Uncomment for environments[owner_blog_allow_all]
/// import 'package:amplify_datastore_example/auth_models/owner_blog_allow_all/ModelProvider.dart';

/// Uncomment for environments[private_blog_allow_read]
import 'package:amplify_datastore_example/auth_models/private_blog_allow_read/ModelProvider.dart';
import 'package:amplify_flutter/amplify_flutter.dart';

import '../envs/datastore_basic_config.dart' as datastore_basic;
import '../envs/owner_blog_allow_all_config.dart' as owner_blog_allow_all;
import '../envs/private_blog_allow_read.config.dart' as private_blog_allow_read;

const environments = {
  'datastore-basic': datastore_basic.amplifyconfig,
  'datastore-owner-blog-allow-all': owner_blog_allow_all.amplifyconfig,
  'datastore-private-blog-allow-read': private_blog_allow_read.amplifyconfig,
};

late StreamSubscription _hubSubscription;
late Completer _datastoreReady;

Future<void> configureDataStore(String envName,
    {List<AmplifyPluginInterface>? additionalConfigs}) async {
  final envConfig = environments[envName]!;
  final dataStorePlugin = AmplifyDataStore(
      modelProvider: ModelProvider.instance,
      errorHandler: (AmplifyException e) {
        print(e);
      });
  await Amplify.addPlugins([dataStorePlugin, ...?additionalConfigs]);
  await Amplify.configure(envConfig);

  // Complete the datastoreReady completer once a ready event is fired
  _hubSubscription = Amplify.Hub.listen([HubChannel.DataStore], (hubEvent) {
    if (hubEvent.eventName == 'ready') {
      _datastoreReady.complete();
    }
  });
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

  // Reset the datastoreReady completer whenever we clear the store.
  // It will need to be re-completed by the hub subscription
  _datastoreReady = Completer();
}

/// Starts DataStore and after the [Hubevent.ready] event is fired.
Future<void> startDatastore() async {
  Amplify.DataStore.start();
  await _datastoreReady.future;
}
