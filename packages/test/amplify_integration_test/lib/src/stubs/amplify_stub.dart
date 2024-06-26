// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:convert';

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_integration_test.amplify_stub}
/// A stub of [Amplify] that holds the config in memory and
/// does nothing else to register plugins.
/// {@endtemplate}
class AmplifyStub extends AmplifyClass {
  /// {@macro amplify_integration_test.amplify_stub}
  AmplifyStub() : super.protected();

  AmplifyOutputs? _config;

  bool _isConfigured = false;

  final _configCompleter = Completer<AmplifyOutputs>();

  @override
  bool get isConfigured {
    return _isConfigured;
  }

  @override
  Future<AmplifyOutputs> get asyncConfig {
    return _configCompleter.future;
  }

  @override
  Future<void> addPluginPlatform(AmplifyPluginInterface plugin) async {
    try {
      if (plugin is AuthPluginInterface) {
        await Auth.addPlugin(
          plugin,
          authProviderRepo: AmplifyAuthProviderRepository(),
        );
      } else {
        throw StateError(
          'The type of plugin ${plugin.runtimeType} is not yet supported.',
        );
      }
    } on Exception {
      throw StateError(
        'Amplify plugin ${plugin.runtimeType} was not added successfully.',
      );
    }
  }

  @override
  Future<void> addPlugins(List<AmplifyPluginInterface> plugins) =>
      Future.wait(plugins.map(addPlugin));

  @override
  Future<void> configure(String configuration) async {
    try {
      jsonDecode(configuration);
    } on FormatException {
      throw Exception(
        'The provided configuration is not a valid json.',
      );
    }

    _isConfigured = true;

    if (_isConfigured && !_configCompleter.isCompleted) {
      _config = _parseConfigJson(configuration);
      _configCompleter.complete(_config);
    }
  }

  AmplifyOutputs _parseConfigJson(String configuration) {
    try {
      return AmplifyOutputs.fromJson(
        jsonDecode(configuration) as Map<String, Object?>,
      );
    } on Exception {
      // ignore: invalid_use_of_internal_member
      return const AmplifyOutputs(version: '1');
    }
  }
}
