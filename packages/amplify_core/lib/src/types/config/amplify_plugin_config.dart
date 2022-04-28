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

import 'package:amplify_core/src/types/config/amplify_plugin_registry.dart';
import 'package:aws_common/aws_common.dart';
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';

/// Plugins must implement this class before they can be registered with
/// [AmplifyPluginRegistry].
abstract class AmplifyPluginConfig with AWSSerializable {
  const AmplifyPluginConfig._();

  /// The name of the plugin, as registered in the "plugins" dictionary of
  /// the Amplify configuration.
  String get name;

  @override
  Map<String, Object?> toJson();
}

/// {@template amplify_flutter.unknown_plugin_config_factory}
/// A plugin factory for unknown plugin configs.
/// @{endtemplate}
@internal
class UnknownPluginConfigFactory
    extends AmplifyPluginConfigFactory<UnknownPluginConfig> {
  /// {@macro amplify_flutter.unknown_plugin_config_factory}
  const UnknownPluginConfigFactory(this.name);

  @override
  final String name;

  @override
  UnknownPluginConfig build(Map<String, Object?> json) {
    return UnknownPluginConfig.fromJson(name, json);
  }
}

/// {@template amplify_flutter.unknown_plugin_config}
/// A plugin configuration for unknown plugins. Delegates to a [Map].
/// {@endtemplate}
class UnknownPluginConfig extends DelegatingMap<String, Object?>
    with AWSSerializable, AWSEquatable<UnknownPluginConfig>
    implements AmplifyPluginConfig {
  /// {@macro amplify_flutter.unknown_plugin_config}
  const UnknownPluginConfig(this.name, Map<String, Object?> plugin)
      : super(plugin);

  @override
  final String name;

  @override
  List<Object?> get props => [name, this];

  factory UnknownPluginConfig.fromJson(String name, Map<String, Object?> json) {
    return UnknownPluginConfig(name, json);
  }

  @override
  Map<String, Object?> toJson() => this;
}
