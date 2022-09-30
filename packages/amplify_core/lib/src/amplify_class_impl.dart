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

// ignore_for_file: non_constant_identifier_names, invalid_use_of_visible_for_testing_member

import 'dart:convert';

import 'package:amplify_core/amplify_core.dart';
import 'package:meta/meta.dart';

/// {@template amplify_core.amplify_class_impl}
/// An implementation of [AmplifyClass] written in Dart.
/// {@endtemplate}
@internal
class AmplifyClassImpl extends AmplifyClass {
  /// Share AmplifyAuthProviders with plugins.
  @protected
  final AmplifyAuthProviderRepository authProviderRepo =
      AmplifyAuthProviderRepository();

  /// {@macro amplify_flutter.amplify_class_impl}
  AmplifyClassImpl() : super.protected();

  @override
  Future<void> addPlugin(AmplifyPluginInterface plugin) {
    switch (plugin.category) {
      case Category.analytics:
        return Analytics.addPlugin(plugin.cast());
      case Category.auth:
        return Auth.addPlugin(plugin.cast());
      case Category.storage:
        return Storage.addPlugin(plugin.cast());
      case Category.api:
        return API.addPlugin(plugin.cast());
      case Category.dataStore:
        return DataStore.addPlugin(plugin.cast());
      case Category.hub:
        throw UnimplementedError();
    }
  }

  @override
  Future<void> configurePlatform(String config) async {
    final amplifyConfig = AmplifyConfig.fromJson(
      (jsonDecode(config) as Map<Object?, Object?>).cast(),
    );
    await Future.wait(
      [
        ...Auth.plugins,
        ...Analytics.plugins,
        ...API.plugins,
        ...DataStore.plugins,
        ...Storage.plugins,
      ].map((p) => p.configure(
          config: amplifyConfig, authProviderRepo: authProviderRepo)),
      eagerError: true,
    );
  }

  @override
  Future<void> reset() async {
    await Future.wait([
      Analytics.reset(),
      API.reset(),
      Auth.reset(),
      DataStore.reset(),
      Storage.reset(),
    ]);
  }
}
