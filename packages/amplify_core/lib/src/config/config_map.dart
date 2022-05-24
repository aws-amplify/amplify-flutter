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

import 'dart:collection';

import 'package:amplify_core/amplify_core.dart';
import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'config_map.g.dart';

/// {@template amplify_core.config_map}
/// A map of configuration names to their typed representations.
/// {@endtemplate}
@immutable
abstract class ConfigMap<T extends AWSSerializable>
    with MapMixin<String, T>, AWSEquatable<ConfigMap<T>>, AWSSerializable {
  /// {@macro amplify_core.config_map}
  const ConfigMap();

  /// All configurations in this map.
  @visibleForOverriding
  Map<String, T> get all;

  @override
  List<Object?> get props => [all];

  @override
  T? operator [](Object? key) => all[key];

  @override
  Iterable<String> get keys => all.keys;

  @override
  void operator []=(String key, T value) => all[key] = value;

  @override
  void clear() => all.clear();

  @override
  T? remove(Object? key) => all.remove(key);

  /// The default configuration.
  T? get default$;

  /// Creates a copy of this map.
  ConfigMap copy();

  @override
  Map<String, Object?> toJson() => map((k, v) => MapEntry(k, v.toJson()));
}

/// {@template amplify_core.aws_config_map}
/// A map of AWS configuration names to their typed representations.
/// {@endtemplate}
@configMapSerializable
class AWSConfigMap<T extends AWSSerializable> extends ConfigMap<T> {
  /// {@macro amplify_core.aws_config_map}
  const AWSConfigMap(this.configs);

  /// All configurations.
  @JsonKey(name: 'configs')
  final Map<String, T> configs;

  factory AWSConfigMap.fromJson(
    Map<String, Object?> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$AWSConfigMapFromJson(
        <String, Object?>{'configs': json},
        fromJsonT,
      );

  @override
  T? get default$ => this['Default'];

  @override
  AWSConfigMap<T> copy() => AWSConfigMap(Map.of(configs));

  @override
  Map<String, T> get all => configs;
}

/// {@template amplify_core.amplify_plugin_config_map}
/// A map of Amplify Plugin names to their typed representations.
/// {@endtemplate}
abstract class AmplifyPluginConfigMap extends ConfigMap<AmplifyPluginConfig> {
  /// {@macro amplify_core.amplify_plugin_config_map}
  const AmplifyPluginConfigMap(this.plugins);

  /// All category plugin configurations.
  @JsonKey(
    name: 'plugins',
    fromJson: AmplifyPluginRegistry.pluginConfigsFromJson,
  )
  final Map<String, AmplifyPluginConfig> plugins;

  @override
  AmplifyPluginConfig? get default$ =>
      awsPlugin ?? plugins.entries.firstOrNull?.value;

  /// The AWS plugin configuration, if available.
  AmplifyPluginConfig? get awsPlugin;

  @override
  Map<String, AmplifyPluginConfig> get all => plugins;
}
