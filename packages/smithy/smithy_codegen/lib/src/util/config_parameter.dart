// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:built_value/built_value.dart';
import 'package:code_builder/code_builder.dart';
import 'package:meta/meta.dart';

part 'config_parameter.g.dart';

@immutable
class ParameterLocation {
  const ParameterLocation._(this.val);

  final int val;

  static const ParameterLocation constructor = ParameterLocation._(1 << 0);
  static const ParameterLocation run = ParameterLocation._(1 << 1);
  static final ParameterLocation all = constructor | run;

  ParameterLocation operator |(ParameterLocation other) =>
      ParameterLocation._(val | other.val);
  ParameterLocation operator &(ParameterLocation other) =>
      ParameterLocation._(val & other.val);

  @override
  bool operator ==(Object? other) =>
      identical(this, other) || other is ParameterLocation && val == other.val;

  @override
  int get hashCode => val.hashCode;

  bool get inConstructor => this & constructor == constructor;
  bool get inRun => this & run == run;
}

abstract class ConfigParameter
    implements Built<ConfigParameter, ConfigParameterBuilder> {
  factory ConfigParameter([void Function(ConfigParameterBuilder) updates]) =
      _$ConfigParameter;
  ConfigParameter._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ConfigParameterBuilder b) {
    b
      ..required = false
      ..isOverride = false;
  }

  String get name;
  Reference get type;
  bool get required;
  bool get isOverride;
  ParameterLocation get location;
  Code? get defaultTo;
}
