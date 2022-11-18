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

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

// ignore_for_file: non_constant_identifier_names

library models.power_source;

import 'package:amplify_core/amplify_core.dart';

class PowerSourceType
    extends ModelType<String, PowerSource, PartialPowerSource> {
  const PowerSourceType();

  @override
  T fromJson<T extends PartialModel<String, PowerSource>>(
      Map<String, Object?> json) {
    if (T == PowerSource || T == Model<String, PowerSource>) {
      return PowerSource.fromJson(json) as T;
    }
    if (T == RemotePowerSource || T == RemoteModel<String, PowerSource>) {
      return _RemotePowerSource.fromJson(json) as T;
    }
    return _PartialPowerSource.fromJson(json) as T;
  }

  @override
  String get modelName => 'PowerSource';
}

class PowerSourceQueryFields<ModelIdentifier extends Object,
    M extends Model<ModelIdentifier, M>> {
  const PowerSourceQueryFields([this._root]);

  final QueryField<ModelIdentifier, M, PowerSource>? _root;

  /// Query field for the [PowerSource.id] field.
  QueryField<ModelIdentifier, M, String> get $id =>
      NestedQueryField<ModelIdentifier, M, String, PowerSource, String>(
        const QueryField<String, PowerSource, String>(fieldName: 'id'),
        root: _root,
      );

  /// Query field for the [PowerSource.amps] field.
  QueryField<ModelIdentifier, M, double> get $amps =>
      NestedQueryField<ModelIdentifier, M, String, PowerSource, double>(
        const QueryField<String, PowerSource, double>(fieldName: 'amps'),
        root: _root,
      );

  /// Query field for the [PowerSource.volts] field.
  QueryField<ModelIdentifier, M, double> get $volts =>
      NestedQueryField<ModelIdentifier, M, String, PowerSource, double>(
        const QueryField<String, PowerSource, double>(fieldName: 'volts'),
        root: _root,
      );

  /// Query field for the [PowerSource.createdAt] field.
  QueryField<ModelIdentifier, M, TemporalDateTime?> get $createdAt =>
      NestedQueryField<ModelIdentifier, M, String, PowerSource,
          TemporalDateTime?>(
        const QueryField<String, PowerSource, TemporalDateTime?>(
            fieldName: 'createdAt'),
        root: _root,
      );

  /// Query field for the [PowerSource.updatedAt] field.
  QueryField<ModelIdentifier, M, TemporalDateTime?> get $updatedAt =>
      NestedQueryField<ModelIdentifier, M, String, PowerSource,
          TemporalDateTime?>(
        const QueryField<String, PowerSource, TemporalDateTime?>(
            fieldName: 'updatedAt'),
        root: _root,
      );

  /// Query field for the [PowerSource] model identifier.
  QueryField<ModelIdentifier, M, String> get $modelIdentifier =>
      NestedQueryField<ModelIdentifier, M, String, PowerSource, String>(
        const QueryField<String, PowerSource, String>(
            fieldName: 'modelIdentifier'),
        root: _root,
      );
}

abstract class PartialPowerSource extends PartialModel<String, PowerSource>
    with AWSEquatable<PartialPowerSource> {
  const PartialPowerSource._();

  String get id;
  double? get amps;
  double? get volts;
  TemporalDateTime? get createdAt;
  TemporalDateTime? get updatedAt;
  @override
  String get modelIdentifier => id;
  @override
  PowerSourceType get modelType => PowerSource.classType;
  @override
  List<Object?> get props => [
        id,
        amps,
        volts,
        createdAt,
        updatedAt,
      ];
  @override
  Map<String, Object?> toJson() => {
        'id': id,
        'amps': amps,
        'volts': volts,
        'createdAt': createdAt?.format(),
        'updatedAt': updatedAt?.format(),
        'version': version,
        'deleted': deleted,
        'lastChangedAt': lastChangedAt?.format(),
      };
  @override
  String get runtimeTypeName => 'PowerSource';
  @override
  T valueFor<T extends Object?>(QueryField<String, PowerSource, T> field) {
    Object? value;
    switch (field.fieldName) {
      case r'id':
        value = id;
        break;
      case r'amps':
        value = amps;
        break;
      case r'volts':
        value = volts;
        break;
      case r'createdAt':
        value = createdAt;
        break;
      case r'updatedAt':
        value = updatedAt;
        break;
    }
    assert(
      value is T,
      'Invalid field ${field.fieldName}: $value (expected $T)',
    );
    return value as T;
  }
}

class _PartialPowerSource extends PartialPowerSource {
  const _PartialPowerSource({
    required this.id,
    this.amps,
    this.volts,
    this.createdAt,
    this.updatedAt,
  }) : super._();

  factory _PartialPowerSource.fromJson(Map<String, Object?> json) {
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'PowerSource',
            'id',
          ))
        : (json['id'] as String);
    final amps = json['amps'] == null ? null : (json['amps'] as double);
    final volts = json['volts'] == null ? null : (json['volts'] as double);
    final createdAt = json['createdAt'] == null
        ? null
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? null
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    return _PartialPowerSource(
      id: id,
      amps: amps,
      volts: volts,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  @override
  final String id;

  @override
  final double? amps;

  @override
  final double? volts;

  @override
  final TemporalDateTime? createdAt;

  @override
  final TemporalDateTime? updatedAt;
}

abstract class PowerSource extends PartialPowerSource
    implements Model<String, PowerSource> {
  factory PowerSource({
    String? id,
    required double amps,
    required double volts,
    TemporalDateTime? createdAt,
    TemporalDateTime? updatedAt,
  }) = _PowerSource;

  const PowerSource._() : super._();

  factory PowerSource.fromJson(Map<String, Object?> json) {
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'PowerSource',
            'id',
          ))
        : (json['id'] as String);
    final amps = json['amps'] == null
        ? (throw ModelFieldError(
            'PowerSource',
            'amps',
          ))
        : (json['amps'] as double);
    final volts = json['volts'] == null
        ? (throw ModelFieldError(
            'PowerSource',
            'volts',
          ))
        : (json['volts'] as double);
    final createdAt = json['createdAt'] == null
        ? null
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? null
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    return PowerSource(
      id: id,
      amps: amps,
      volts: volts,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  static const PowerSourceType classType = PowerSourceType();

  static const PowerSourceQueryFields<String, PowerSource> _queryFields =
      PowerSourceQueryFields();

  @override
  String get id;

  /// Query field for the [id] field.
  QueryField<String, PowerSource, String> get $id => _queryFields.$id;

  /// Query field for the [id] field.
  @Deprecated(r'Use $id instead')
  QueryField<String, PowerSource, String> get ID => $id;
  @override
  double get amps;

  /// Query field for the [amps] field.
  QueryField<String, PowerSource, double> get $amps => _queryFields.$amps;

  /// Query field for the [amps] field.
  @Deprecated(r'Use $amps instead')
  QueryField<String, PowerSource, double> get AMPS => $amps;
  @override
  double get volts;

  /// Query field for the [volts] field.
  QueryField<String, PowerSource, double> get $volts => _queryFields.$volts;

  /// Query field for the [volts] field.
  @Deprecated(r'Use $volts instead')
  QueryField<String, PowerSource, double> get VOLTS => $volts;
  @override
  TemporalDateTime? get createdAt;

  /// Query field for the [createdAt] field.
  QueryField<String, PowerSource, TemporalDateTime?> get $createdAt =>
      _queryFields.$createdAt;

  /// Query field for the [createdAt] field.
  @Deprecated(r'Use $createdAt instead')
  QueryField<String, PowerSource, TemporalDateTime?> get CREATED_AT =>
      $createdAt;
  @override
  TemporalDateTime? get updatedAt;

  /// Query field for the [updatedAt] field.
  QueryField<String, PowerSource, TemporalDateTime?> get $updatedAt =>
      _queryFields.$updatedAt;

  /// Query field for the [updatedAt] field.
  @Deprecated(r'Use $updatedAt instead')
  QueryField<String, PowerSource, TemporalDateTime?> get UPDATED_AT =>
      $updatedAt;

  /// Query field for the [modelIdentifier] field.
  QueryField<String, PowerSource, String> get $modelIdentifier =>
      _queryFields.$modelIdentifier;

  /// Query field for the [modelIdentifier] field.
  @Deprecated(r'Use $modelIdentifier instead')
  QueryField<String, PowerSource, String> get MODEL_IDENTIFIER =>
      $modelIdentifier;
}

class _PowerSource extends PowerSource {
  _PowerSource({
    String? id,
    required this.amps,
    required this.volts,
    this.createdAt,
    this.updatedAt,
  })  : id = id ?? uuid(),
        super._();

  @override
  final String id;

  @override
  final double amps;

  @override
  final double volts;

  @override
  final TemporalDateTime? createdAt;

  @override
  final TemporalDateTime? updatedAt;
}

abstract class RemotePowerSource extends PowerSource
    implements RemoteModel<String, PowerSource> {
  const RemotePowerSource._() : super._();
}

class _RemotePowerSource extends RemotePowerSource {
  const _RemotePowerSource({
    required this.id,
    required this.amps,
    required this.volts,
    this.createdAt,
    this.updatedAt,
    required this.version,
    required this.deleted,
    required this.lastChangedAt,
  }) : super._();

  factory _RemotePowerSource.fromJson(Map<String, Object?> json) {
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'PowerSource',
            'id',
          ))
        : (json['id'] as String);
    final amps = json['amps'] == null
        ? (throw ModelFieldError(
            'PowerSource',
            'amps',
          ))
        : (json['amps'] as double);
    final volts = json['volts'] == null
        ? (throw ModelFieldError(
            'PowerSource',
            'volts',
          ))
        : (json['volts'] as double);
    final createdAt = json['createdAt'] == null
        ? null
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? null
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    final version = json['version'] == null
        ? (throw ModelFieldError(
            'PowerSource',
            'version',
          ))
        : (json['version'] as int);
    final deleted = json['deleted'] == null
        ? (throw ModelFieldError(
            'PowerSource',
            'deleted',
          ))
        : (json['deleted'] as bool);
    final lastChangedAt = json['lastChangedAt'] == null
        ? (throw ModelFieldError(
            'PowerSource',
            'lastChangedAt',
          ))
        : TemporalDateTime.fromString((json['lastChangedAt'] as String));
    return _RemotePowerSource(
      id: id,
      amps: amps,
      volts: volts,
      createdAt: createdAt,
      updatedAt: updatedAt,
      version: version,
      deleted: deleted,
      lastChangedAt: lastChangedAt,
    );
  }

  @override
  final String id;

  @override
  final double amps;

  @override
  final double volts;

  @override
  final TemporalDateTime? createdAt;

  @override
  final TemporalDateTime? updatedAt;

  @override
  final int version;

  @override
  final bool deleted;

  @override
  final TemporalDateTime lastChangedAt;
}
