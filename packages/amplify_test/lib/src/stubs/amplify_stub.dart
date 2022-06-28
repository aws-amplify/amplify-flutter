import 'dart:async';
import 'dart:convert';

import 'package:amplify_flutter/amplify_flutter.dart';
export 'package:amplify_flutter/src/amplify_impl.dart';

/// A stub of [Amplify] that holds the config in memory and
/// does nothing else to register plugins.
class AmplifyStub extends AmplifyClass {
  AmplifyConfig? _config;

  bool _isConfigured = false;

  final _configCompleter = Completer<AmplifyConfig>();

  @override
  bool get isConfigured {
    return _isConfigured;
  }

  @override
  Future<AmplifyConfig> get asyncConfig {
    return _configCompleter.future;
  }

  @override
  Future<void> addPlugin(AmplifyPluginInterface plugin) async {
    try {
      if (plugin is AuthPluginInterface) {
        await Auth.addPlugin(plugin);
        Hub.addChannel(HubChannel.Auth, plugin.streamController);
      } else {
        throw AmplifyException(
          'The type of plugin ${plugin.runtimeType} is not yet supported.',
        );
      }
    } on Exception catch (e) {
      throw AmplifyException(
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
    } on FormatException catch (e) {
      throw const AmplifyException(
        'The provided configuration is not a valid json.',
      );
    }

    _isConfigured = true;

    if (_isConfigured && !_configCompleter.isCompleted) {
      _config = _parseConfigJson(configuration);
      _configCompleter.complete(_config);
    }
  }

  AmplifyConfig _parseConfigJson(String configuration) {
    try {
      return AmplifyConfig.fromJson(jsonDecode(configuration));
    } on Exception catch (e) {
      return const AmplifyConfig();
    }
  }

  AmplifyStub() : super.protected();

  @override
  Future<void> configurePlatform(String config) async {
    // no-op
  }

  @override
  Future<void> reset() async {
    // no-op
  }
}
