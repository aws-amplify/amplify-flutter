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

import 'dart:convert';

import 'package:amplify_flutter/amplify_flutter.dart';

/// {@template amplify_flutter.amplify_dart_impl}
/// An implementation of [AmplifyClass] written in Dart.
/// {@endtemplate}
class AmplifyDartImpl extends AmplifyClass {
  /// {@macro amplify_flutter.amplify_dart_impl}
  AmplifyDartImpl() : super.protected();

  @override
  Future<void> configurePlatform(String config) async {
    final amplifyConfig = AmplifyConfig.fromJson(
      (jsonDecode(config) as Map<Object?, Object?>).cast(),
    );
    await Future.wait(
      [
        ...Auth.plugins,
      ].map((p) => p.configure(config: amplifyConfig)),
      eagerError: true,
    );
  }

  @override
  Future<void> reset() async {
    // TODO: Implement reset within plugins
    // await Future.wait(
    //   [
    //     ...Analytics.plugins,
    //     ...Auth.plugins,
    //     ...Storage.plugins,
    //     // ignore: invalid_use_of_visible_for_testing_member
    //   ].map((p) => p.reset()),
    //   eagerError: true,
    // );

    Auth.plugins.clear();
  }

  @override
  Future<void> addPlugin(AmplifyPluginInterface plugin) {
    switch (plugin.category) {
      case Category.auth:
        return Auth.addPlugin(plugin.cast());
      case Category.analytics:
      case Category.storage:
      case Category.api:
      case Category.dataStore:
      case Category.hub:
        throw UnimplementedError();
    }
  }
}
