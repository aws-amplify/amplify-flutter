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

library models.battery_charger;

import 'package:amplify_core/amplify_core.dart';

import 'power_source.dart';

class BatteryChargerType
    extends ModelType<String, BatteryCharger, PartialBatteryCharger> {
  const BatteryChargerType();

  @override
  T fromJson<T extends PartialModel<String, BatteryCharger>>(
      Map<String, Object?> json) {
    if (T == BatteryCharger || T == Model<String, BatteryCharger>) {
      return BatteryCharger.fromJson(json) as T;
    }
    if (T == RemoteBatteryCharger || T == RemoteModel<String, BatteryCharger>) {
      return _RemoteBatteryCharger.fromJson(json) as T;
    }
    return _PartialBatteryCharger.fromJson(json) as T;
  }

  @override
  String get modelName => 'BatteryCharger';
}

class BatteryChargerQueryFields<ModelIdentifier extends Object,
    M extends Model<ModelIdentifier, M>> {
  const BatteryChargerQueryFields([this._root]);

  final QueryField<ModelIdentifier, M, BatteryCharger>? _root;

  /// Query field for the [BatteryCharger.powerSource] field.
  PowerSourceQueryFields<ModelIdentifier, M> get $powerSource =>
      PowerSourceQueryFields(NestedQueryField<ModelIdentifier, M, String,
          BatteryCharger, PowerSource>(
        const QueryField<String, BatteryCharger, PowerSource>(
            fieldName: 'powerSource'),
        root: _root,
      ));

  /// Query field for the [BatteryCharger.createdAt] field.
  QueryField<ModelIdentifier, M, TemporalDateTime> get $createdAt =>
      NestedQueryField<ModelIdentifier, M, String, BatteryCharger,
          TemporalDateTime>(
        const QueryField<String, BatteryCharger, TemporalDateTime>(
            fieldName: 'createdAt'),
        root: _root,
      );

  /// Query field for the [BatteryCharger.updatedAt] field.
  QueryField<ModelIdentifier, M, TemporalDateTime> get $updatedAt =>
      NestedQueryField<ModelIdentifier, M, String, BatteryCharger,
          TemporalDateTime>(
        const QueryField<String, BatteryCharger, TemporalDateTime>(
            fieldName: 'updatedAt'),
        root: _root,
      );

  /// Query field for the [BatteryCharger.id] field.
  QueryField<ModelIdentifier, M, String> get $id =>
      NestedQueryField<ModelIdentifier, M, String, BatteryCharger, String>(
        const QueryField<String, BatteryCharger, String>(fieldName: 'id'),
        root: _root,
      );

  /// Query field for the [BatteryCharger.batteryChargerPowerSourceId] field.
  QueryField<ModelIdentifier, M, String?> get $batteryChargerPowerSourceId =>
      NestedQueryField<ModelIdentifier, M, String, BatteryCharger, String?>(
        const QueryField<String, BatteryCharger, String?>(
            fieldName: 'batteryChargerPowerSourceId'),
        root: _root,
      );

  /// Query field for the [BatteryCharger] model identifier.
  QueryField<ModelIdentifier, M, String> get $modelIdentifier =>
      NestedQueryField<ModelIdentifier, M, String, BatteryCharger, String>(
        const QueryField<String, BatteryCharger, String>(
            fieldName: 'modelIdentifier'),
        root: _root,
      );
}

abstract class PartialBatteryCharger
    extends PartialModel<String, BatteryCharger>
    with AWSEquatable<PartialBatteryCharger> {
  const PartialBatteryCharger._();

  AsyncModel<String, PowerSource, PartialPowerSource, PartialPowerSource>?
      get powerSource;
  TemporalDateTime? get createdAt;
  TemporalDateTime? get updatedAt;
  String get id;
  String? get batteryChargerPowerSourceId;
  @override
  String get modelIdentifier => id;
  @override
  BatteryChargerType get modelType => BatteryCharger.classType;
  @override
  List<Object?> get props => [
        powerSource,
        createdAt,
        updatedAt,
        id,
        batteryChargerPowerSourceId,
      ];
  @override
  Map<String, Object?> toJson() => {
        'powerSource': powerSource?.toJson(),
        'createdAt': createdAt?.format(),
        'updatedAt': updatedAt?.format(),
        'id': id,
        'batteryChargerPowerSourceId': batteryChargerPowerSourceId,
        'version': version,
        'deleted': deleted,
        'lastChangedAt': lastChangedAt?.format(),
      };
  @override
  String get runtimeTypeName => 'BatteryCharger';
  @override
  T valueFor<T extends Object?>(QueryField<String, BatteryCharger, T> field) {
    Object? value;
    switch (field.fieldName) {
      case r'powerSource':
        value = powerSource;
        break;
      case r'createdAt':
        value = createdAt;
        break;
      case r'updatedAt':
        value = updatedAt;
        break;
      case r'id':
        value = id;
        break;
      case r'batteryChargerPowerSourceId':
        value = batteryChargerPowerSourceId;
        break;
    }
    assert(
      value is T,
      'Invalid field ${field.fieldName}: $value (expected $T)',
    );
    return value as T;
  }
}

class _PartialBatteryCharger extends PartialBatteryCharger {
  const _PartialBatteryCharger({
    this.powerSource,
    this.createdAt,
    this.updatedAt,
    required this.id,
    this.batteryChargerPowerSourceId,
  }) : super._();

  factory _PartialBatteryCharger.fromJson(Map<String, Object?> json) {
    final powerSource = json['powerSource'] == null
        ? null
        : AsyncModel<String, PowerSource, PartialPowerSource,
                PartialPowerSource>.fromModel(
            PowerSource.classType.fromJson<PartialPowerSource>(
                (json['powerSource'] as Map<String, Object?>)));
    final createdAt = json['createdAt'] == null
        ? null
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? null
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'BatteryCharger',
            'id',
          ))
        : (json['id'] as String);
    final batteryChargerPowerSourceId =
        json['batteryChargerPowerSourceId'] == null
            ? null
            : (json['batteryChargerPowerSourceId'] as String);
    return _PartialBatteryCharger(
      powerSource: powerSource,
      createdAt: createdAt,
      updatedAt: updatedAt,
      id: id,
      batteryChargerPowerSourceId: batteryChargerPowerSourceId,
    );
  }

  @override
  final AsyncModel<String, PowerSource, PartialPowerSource, PartialPowerSource>?
      powerSource;

  @override
  final TemporalDateTime? createdAt;

  @override
  final TemporalDateTime? updatedAt;

  @override
  final String id;

  @override
  final String? batteryChargerPowerSourceId;
}

abstract class BatteryCharger extends PartialBatteryCharger
    implements Model<String, BatteryCharger> {
  factory BatteryCharger({
    PowerSource? powerSource,
    String? id,
    String? batteryChargerPowerSourceId,
  }) = _BatteryCharger;

  const BatteryCharger._() : super._();

  factory BatteryCharger.fromJson(Map<String, Object?> json) {
    final powerSource = json['powerSource'] == null
        ? null
        : AsyncModel<String, PowerSource, PartialPowerSource,
                PowerSource>.fromModel(
            PowerSource.classType.fromJson<PowerSource>(
                (json['powerSource'] as Map<String, Object?>)));
    final createdAt = json['createdAt'] == null
        ? (throw ModelFieldError(
            'BatteryCharger',
            'createdAt',
          ))
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? (throw ModelFieldError(
            'BatteryCharger',
            'updatedAt',
          ))
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'BatteryCharger',
            'id',
          ))
        : (json['id'] as String);
    final batteryChargerPowerSourceId =
        json['batteryChargerPowerSourceId'] == null
            ? null
            : (json['batteryChargerPowerSourceId'] as String);
    return _BatteryCharger._(
      powerSource: powerSource,
      createdAt: createdAt,
      updatedAt: updatedAt,
      id: id,
      batteryChargerPowerSourceId: batteryChargerPowerSourceId,
    );
  }

  static const BatteryChargerType classType = BatteryChargerType();

  static const BatteryChargerQueryFields<String, BatteryCharger> _queryFields =
      BatteryChargerQueryFields();

  @override
  AsyncModel<String, PowerSource, PartialPowerSource, PowerSource>?
      get powerSource;

  /// Query field for the [powerSource] field.
  PowerSourceQueryFields<String, BatteryCharger> get $powerSource =>
      _queryFields.$powerSource;

  /// Query field for the [powerSource] field.
  @Deprecated(r'Use $powerSource instead')
  PowerSourceQueryFields<String, BatteryCharger> get POWER_SOURCE =>
      $powerSource;
  @override
  TemporalDateTime get createdAt;
  @override
  TemporalDateTime get updatedAt;
  @override
  String get id;

  /// Query field for the [id] field.
  QueryField<String, BatteryCharger, String> get $id => _queryFields.$id;

  /// Query field for the [id] field.
  @Deprecated(r'Use $id instead')
  QueryField<String, BatteryCharger, String> get ID => $id;
  @override
  String? get batteryChargerPowerSourceId;

  /// Query field for the [batteryChargerPowerSourceId] field.
  QueryField<String, BatteryCharger, String?>
      get $batteryChargerPowerSourceId =>
          _queryFields.$batteryChargerPowerSourceId;

  /// Query field for the [batteryChargerPowerSourceId] field.
  @Deprecated(r'Use $batteryChargerPowerSourceId instead')
  QueryField<String, BatteryCharger, String?>
      get BATTERY_CHARGER_POWER_SOURCE_ID => $batteryChargerPowerSourceId;

  /// Query field for the [modelIdentifier] field.
  QueryField<String, BatteryCharger, String> get $modelIdentifier =>
      _queryFields.$modelIdentifier;

  /// Query field for the [modelIdentifier] field.
  @Deprecated(r'Use $modelIdentifier instead')
  QueryField<String, BatteryCharger, String> get MODEL_IDENTIFIER =>
      $modelIdentifier;
}

class _BatteryCharger extends BatteryCharger {
  _BatteryCharger({
    PowerSource? powerSource,
    String? id,
    this.batteryChargerPowerSourceId,
  })  : powerSource =
            powerSource == null ? null : AsyncModel.fromModel(powerSource),
        createdAt = TemporalDateTime.now(),
        updatedAt = TemporalDateTime.now(),
        id = id ?? uuid(),
        super._();

  const _BatteryCharger._({
    this.powerSource,
    required this.createdAt,
    required this.updatedAt,
    required this.id,
    this.batteryChargerPowerSourceId,
  }) : super._();

  @override
  final AsyncModel<String, PowerSource, PartialPowerSource, PowerSource>?
      powerSource;

  @override
  final TemporalDateTime createdAt;

  @override
  final TemporalDateTime updatedAt;

  @override
  final String id;

  @override
  final String? batteryChargerPowerSourceId;
}

abstract class RemoteBatteryCharger extends BatteryCharger
    implements RemoteModel<String, BatteryCharger> {
  const RemoteBatteryCharger._() : super._();
}

class _RemoteBatteryCharger extends RemoteBatteryCharger {
  const _RemoteBatteryCharger({
    this.powerSource,
    required this.createdAt,
    required this.updatedAt,
    required this.id,
    this.batteryChargerPowerSourceId,
    required this.version,
    required this.deleted,
    required this.lastChangedAt,
  }) : super._();

  factory _RemoteBatteryCharger.fromJson(Map<String, Object?> json) {
    final powerSource = json['powerSource'] == null
        ? null
        : AsyncModel<String, PowerSource, PartialPowerSource,
                RemotePowerSource>.fromModel(
            PowerSource.classType.fromJson<RemotePowerSource>(
                (json['powerSource'] as Map<String, Object?>)));
    final createdAt = json['createdAt'] == null
        ? (throw ModelFieldError(
            'BatteryCharger',
            'createdAt',
          ))
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? (throw ModelFieldError(
            'BatteryCharger',
            'updatedAt',
          ))
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'BatteryCharger',
            'id',
          ))
        : (json['id'] as String);
    final batteryChargerPowerSourceId =
        json['batteryChargerPowerSourceId'] == null
            ? null
            : (json['batteryChargerPowerSourceId'] as String);
    final version = json['version'] == null
        ? (throw ModelFieldError(
            'BatteryCharger',
            'version',
          ))
        : (json['version'] as int);
    final deleted = json['deleted'] == null
        ? (throw ModelFieldError(
            'BatteryCharger',
            'deleted',
          ))
        : (json['deleted'] as bool);
    final lastChangedAt = json['lastChangedAt'] == null
        ? (throw ModelFieldError(
            'BatteryCharger',
            'lastChangedAt',
          ))
        : TemporalDateTime.fromString((json['lastChangedAt'] as String));
    return _RemoteBatteryCharger(
      powerSource: powerSource,
      createdAt: createdAt,
      updatedAt: updatedAt,
      id: id,
      batteryChargerPowerSourceId: batteryChargerPowerSourceId,
      version: version,
      deleted: deleted,
      lastChangedAt: lastChangedAt,
    );
  }

  @override
  final AsyncModel<String, PowerSource, PartialPowerSource, RemotePowerSource>?
      powerSource;

  @override
  final TemporalDateTime createdAt;

  @override
  final TemporalDateTime updatedAt;

  @override
  final String id;

  @override
  final String? batteryChargerPowerSourceId;

  @override
  final int version;

  @override
  final bool deleted;

  @override
  final TemporalDateTime lastChangedAt;
}
