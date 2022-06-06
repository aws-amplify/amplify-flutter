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
import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_datastore_example/amplifyconfiguration.dart';
import 'package:amplify_datastore_example/models/ModelProvider.dart';
import 'package:amplify_flutter/amplify_flutter.dart';

const ENABLE_CLOUD_SYNC =
    bool.fromEnvironment('ENABLE_CLOUD_SYNC', defaultValue: false);
const DATASTORE_READY_EVENT_TIMEOUT = const Duration(minutes: 2);
const DELAY_TO_START_DATASTORE = const Duration(milliseconds: 500);
const DELAY_TO_CLEAR_DATASTORE = const Duration(seconds: 2);
const DELAY_FOR_OBSERVE = const Duration(milliseconds: 100);

/// Configure [AmplifyDataStore] plugin with given [modelProvider].
/// When [ENABLE_CLOUD_SYNC] environment variable is set to true, it also
/// configures [AmplifyAPI] and starts DataStore API sync automatically.
Future<void> configureDataStore({
  bool enableCloudSync = false,
  ModelProviderInterface? modelProvider,
}) async {
  if (!Amplify.isConfigured) {
    final dataStorePlugin = AmplifyDataStore(
        modelProvider: modelProvider ?? ModelProvider.instance);
    List<AmplifyPluginInterface> plugins = [dataStorePlugin];
    if (enableCloudSync) {
      plugins.add(AmplifyAPI());
    }
    await Amplify.addPlugins(plugins);
    await Amplify.configure(amplifyconfig);

    // Start DataStore API sync after Amplify Configure when cloud sync is enabled
    if (enableCloudSync) {
      await startDataStore();
    }
  }
}

/// Clears DataStore after a delay to resolve an issue in amplify-android
///
/// DataStore can lock up on Android if .clear() is called immediately after
/// other DataStore operations
///
/// see: https:///github.com/aws-amplify/amplify-android/issues/1464
Future<void> clearDataStore() async {
  await Future.delayed(DELAY_TO_CLEAR_DATASTORE);
  await Amplify.DataStore.clear();
}

/// Waits for observe to be set up properly.
///
/// There is a bug in observe that causes events to be missed when save/delete is called
/// immediately after. This work around allows the datastore tests that use observe to still run.
///
/// See: https://github.com/aws-amplify/amplify-flutter/issues/1590
Future<void> waitForObserve() async {
  bool isObserveSetUp = false;
  final blog = Blog(name: 'TEST BLOG - Used to wait for observe to start');

  // set up observe subscription and set isObserveSetUp to true when the first update event comes in
  Amplify.DataStore.observe(Blog.classType)
      .where((event) => event.item.id == blog.id)
      .first
      .then((event) {
    isObserveSetUp = true;
  });

  // update in a loop until observe is set up
  while (!isObserveSetUp) {
    await Future.delayed(DELAY_FOR_OBSERVE);
    await Amplify.DataStore.save(blog);
  }

  // clean up blog
  await Amplify.DataStore.delete(blog);
}

/// Am async operator that starts DataStore API sync.
/// It returns a Future which complets when [Amplify.Hub] receives the ready
/// event on [HubChannel.DataStore], or completes with an timeout error if
/// the ready event hasn't been emitted with in 2 minutes.
class DataStoreStarter {
  final Completer _completer = Completer();
  late StreamSubscription hubSubscription;

  Future<void> startDataStore() {
    hubSubscription =
        Amplify.Hub.listen(HubChannel.DataStore, (DataStoreHubEvent event) {
      if (event.eventName == 'ready') {
        print(
            '🎉🎉🎉DataStore is ready to start running test suites with API sync enabled.🎉🎉🎉');
        hubSubscription.cancel();
        _completer.complete();
      }
    });

    // we are not waiting for DataStore.start to complete
    // but an asynchronous DataStore ready event dispatched via the hub
    Amplify.DataStore.start();
    return _completer.future.timeout(DATASTORE_READY_EVENT_TIMEOUT);
  }
}

Future<void> startDataStore() async {
  await Future.delayed(DELAY_TO_START_DATASTORE);
  await DataStoreStarter().startDataStore();
}

bool shouldEnableCloudSync() => ENABLE_CLOUD_SYNC;
