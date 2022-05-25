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

import 'amplify_plugin_config.dart';
import 'analytics/pinpoint_config.dart';
import 'api/aws_api_config.dart';
import 'auth/cognito_config.dart';
import 'storage/s3_config.dart';

/// Default plugins known to Amplify. Users can register additional plugins
/// through the [AmplifyPluginRegistry] interface.
const _defaultPlugins = <AmplifyPluginConfigFactory>[
  // API
  AWSApiPluginConfigFactory(),

  // Analytics
  PinpointPluginConfigFactory(),

  // Auth
  CognitoPluginConfigFactory(),

  // Storage
  S3PluginConfigFactory(),
];

/// {@template amplify_core.amplify_plugin_config_factory}
/// A class for building plugins of type [T].
/// {@endtemplate}
abstract class AmplifyPluginConfigFactory<T extends AmplifyPluginConfig> {
  /// {@macro amplify_core.amplify_plugin_config_factory}
  const AmplifyPluginConfigFactory();

  /// The name of the plugin, as registered in the "plugins" dictionary of
  /// the Amplify configuration.
  String get name;

  /// Builder for a plugin config from a serialized JSON [Map].
  T build(Map<String, Object?> json);
}

/// A registry for [AmplifyPluginConfig] types. Used for serializing and
/// deserializing plugin configurations.
///
/// Unknown plugins are deserialized as an opaque map of type [UnknownPluginConfig].
///
/// Use [AmplifyPluginRegistry.shared] to access the global registry.
class AmplifyPluginRegistry {
  AmplifyPluginRegistry._() {
    _registerDefaultPlugins();
  }

  /// The global, shared plugin registry.
  static final shared = AmplifyPluginRegistry._();

  final Map<String, AmplifyPluginConfigFactory> _plugins = {};

  void _registerDefaultPlugins() {
    _plugins.addAll({
      for (var plugin in _defaultPlugins) plugin.name: plugin,
    });
  }

  /// Registers a factory for plugin type [T].
  void register<T extends AmplifyPluginConfig>(
    AmplifyPluginConfigFactory<T> pluginFactory,
  ) {
    if (_plugins.containsKey(pluginFactory.name)) {
      throw ArgumentError(
        'Plugin already registered for ${pluginFactory.name}',
      );
    }
    _plugins[pluginFactory.name] = pluginFactory;
  }

  /// Builds a plugin from the given [name] and [json]. If [name] is registered,
  /// this will build a plugin using the registered factory. Otherwise, an
  /// [UnknownPluginConfig] instance is returned.
  AmplifyPluginConfig build(String name, Map<String, Object?> json) {
    final factory = _plugins[name] ?? UnknownPluginConfigFactory(name);
    return factory.build(json);
  }

  /// Deserializes plugins from a json [Map].
  static Map<String, AmplifyPluginConfig> pluginConfigsFromJson(Object? json) {
    if (json is! Map) {
      throw ArgumentError.value(
        json,
        'json',
        '${json.runtimeType} is not a Map',
      );
    }
    return json.cast<String, Object?>().map((key, value) {
      if (value is! Map) {
        throw ArgumentError.value(value, key, 'Invalid plugin');
      }
      final plugin = shared.build(key, value.cast());
      return MapEntry(key, plugin);
    });
  }
}
