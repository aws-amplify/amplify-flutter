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
    Map<String, Object?> json,
  ) {
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

  /// Query field for the [BatteryCharger.chargerId] field.
  QueryField<ModelIdentifier, M, String> get $chargerId =>
      NestedQueryField<ModelIdentifier, M, String, BatteryCharger, String>(
        const QueryField<String, BatteryCharger, String>(
          fieldName: 'chargerID',
        ),
        root: _root,
      );

  /// Query field for the [BatteryCharger.powerSourceId] field.
  QueryField<ModelIdentifier, M, String?> get $powerSourceId =>
      NestedQueryField<ModelIdentifier, M, String, BatteryCharger, String?>(
        const QueryField<String, BatteryCharger, String?>(
          fieldName: 'powerSourceID',
        ),
        root: _root,
      );

  /// Query field for the [BatteryCharger.powerSource] field.
  PowerSourceQueryFields<ModelIdentifier, M> get $powerSource =>
      PowerSourceQueryFields(
        NestedQueryField<ModelIdentifier, M, String, BatteryCharger,
            PowerSource>(
          const QueryField<String, BatteryCharger, PowerSource>(
            fieldName: 'powerSource',
          ),
          root: _root,
        ),
      );

  /// Query field for the [BatteryCharger.createdAt] field.
  QueryField<ModelIdentifier, M, TemporalDateTime> get $createdAt =>
      NestedQueryField<ModelIdentifier, M, String, BatteryCharger,
          TemporalDateTime>(
        const QueryField<String, BatteryCharger, TemporalDateTime>(
          fieldName: 'createdAt',
        ),
        root: _root,
      );

  /// Query field for the [BatteryCharger.updatedAt] field.
  QueryField<ModelIdentifier, M, TemporalDateTime> get $updatedAt =>
      NestedQueryField<ModelIdentifier, M, String, BatteryCharger,
          TemporalDateTime>(
        const QueryField<String, BatteryCharger, TemporalDateTime>(
          fieldName: 'updatedAt',
        ),
        root: _root,
      );

  /// Query field for the [BatteryCharger.id] field.
  QueryField<ModelIdentifier, M, String> get $id =>
      NestedQueryField<ModelIdentifier, M, String, BatteryCharger, String>(
        const QueryField<String, BatteryCharger, String>(fieldName: 'id'),
        root: _root,
      );

  /// Query field for the [BatteryCharger] model identifier.
  QueryField<ModelIdentifier, M, String> get $modelIdentifier =>
      NestedQueryField<ModelIdentifier, M, String, BatteryCharger, String>(
        const QueryField<String, BatteryCharger, String>(
          fieldName: 'modelIdentifier',
        ),
        root: _root,
      );
}

abstract class PartialBatteryCharger
    extends PartialModel<String, BatteryCharger>
    with AWSEquatable<PartialBatteryCharger> {
  const PartialBatteryCharger._();

  String? get chargerId;
  String? get powerSourceId;
  AsyncModel<String, PowerSource, PartialPowerSource, PartialPowerSource>?
      get powerSource;
  TemporalDateTime? get createdAt;
  TemporalDateTime? get updatedAt;
  String get id;
  @override
  String get modelIdentifier => id;
  @override
  BatteryChargerType get modelType => BatteryCharger.classType;
  @override
  List<Object?> get props => [
        chargerId,
        powerSourceId,
        powerSource,
        createdAt,
        updatedAt,
        id,
      ];
  @override
  Map<String, Object?> toJson() => {
        'chargerID': chargerId,
        'powerSourceID': powerSourceId,
        'powerSource': powerSource?.toJson(),
        'createdAt': createdAt?.format(),
        'updatedAt': updatedAt?.format(),
        'id': id,
        'version': version,
        'deleted': deleted,
        'lastChangedAt': lastChangedAt?.format(),
      };
  @override
  String get runtimeTypeName => 'BatteryCharger';
}

class _PartialBatteryCharger extends PartialBatteryCharger {
  const _PartialBatteryCharger({
    this.chargerId,
    this.powerSourceId,
    this.powerSource,
    this.createdAt,
    this.updatedAt,
    required this.id,
  }) : super._();

  factory _PartialBatteryCharger.fromJson(Map<String, Object?> json) {
    final chargerId =
        json['chargerID'] == null ? null : (json['chargerID'] as String);
    final powerSourceId = json['powerSourceID'] == null
        ? null
        : (json['powerSourceID'] as String);
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
    final powerSource = json['powerSource'] == null
        ? powerSourceId == null
            ? null
            : AsyncModel<String, PowerSource, PartialPowerSource,
                PartialPowerSource>.fromModelIdentifier(
                PowerSource.classType,
                powerSourceId,
              )
        : AsyncModel<String, PowerSource, PartialPowerSource,
            PartialPowerSource>.fromModel(
            PowerSource.classType.fromJson<PartialPowerSource>(
              (json['powerSource'] as Map<String, Object?>),
            ),
          );
    return _PartialBatteryCharger(
      chargerId: chargerId,
      powerSourceId: powerSourceId,
      powerSource: powerSource,
      createdAt: createdAt,
      updatedAt: updatedAt,
      id: id,
    );
  }

  @override
  final String? chargerId;

  @override
  final String? powerSourceId;

  @override
  final AsyncModel<String, PowerSource, PartialPowerSource, PartialPowerSource>?
      powerSource;

  @override
  final TemporalDateTime? createdAt;

  @override
  final TemporalDateTime? updatedAt;

  @override
  final String id;
}

abstract class BatteryCharger extends PartialBatteryCharger
    implements Model<String, BatteryCharger> {
  factory BatteryCharger({
    required String chargerId,
    String? powerSourceId,
    PowerSource? powerSource,
    String? id,
  }) = _BatteryCharger;

  const BatteryCharger._() : super._();

  factory BatteryCharger.fromJson(Map<String, Object?> json) {
    final chargerId = json['chargerID'] == null
        ? (throw ModelFieldError(
            'BatteryCharger',
            'chargerId',
          ))
        : (json['chargerID'] as String);
    final powerSourceId = json['powerSourceID'] == null
        ? null
        : (json['powerSourceID'] as String);
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
    final powerSource = json['powerSource'] == null
        ? powerSourceId == null
            ? null
            : AsyncModel<String, PowerSource, PartialPowerSource,
                PowerSource>.fromModelIdentifier(
                PowerSource.classType,
                powerSourceId,
              )
        : AsyncModel<String, PowerSource, PartialPowerSource,
            PowerSource>.fromModel(
            PowerSource.classType.fromJson<PowerSource>(
              (json['powerSource'] as Map<String, Object?>),
            ),
          );
    return _BatteryCharger._(
      chargerId: chargerId,
      powerSourceId: powerSourceId,
      powerSource: powerSource,
      createdAt: createdAt,
      updatedAt: updatedAt,
      id: id,
    );
  }

  static const BatteryChargerType classType = BatteryChargerType();

  static const BatteryChargerQueryFields<String, BatteryCharger> _queryFields =
      BatteryChargerQueryFields();

  @override
  String get chargerId;

  /// Query field for the [chargerId] field.
  QueryField<String, BatteryCharger, String> get $chargerId =>
      _queryFields.$chargerId;

  /// Query field for the [chargerId] field.
  @Deprecated(r'Use $chargerId instead')
  QueryField<String, BatteryCharger, String> get CHARGER_ID => $chargerId;
  @override
  String? get powerSourceId;

  /// Query field for the [powerSourceId] field.
  QueryField<String, BatteryCharger, String?> get $powerSourceId =>
      _queryFields.$powerSourceId;

  /// Query field for the [powerSourceId] field.
  @Deprecated(r'Use $powerSourceId instead')
  QueryField<String, BatteryCharger, String?> get POWER_SOURCE_ID =>
      $powerSourceId;
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

  /// Query field for the [modelIdentifier] field.
  QueryField<String, BatteryCharger, String> get $modelIdentifier =>
      _queryFields.$modelIdentifier;

  /// Query field for the [modelIdentifier] field.
  @Deprecated(r'Use $modelIdentifier instead')
  QueryField<String, BatteryCharger, String> get MODEL_IDENTIFIER =>
      $modelIdentifier;
  BatteryCharger copyWith({
    String? chargerId,
    String? powerSourceId,
    PowerSource? powerSource,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? id,
  }) {
    return _BatteryCharger._(
      chargerId: chargerId ?? this.chargerId,
      powerSourceId: powerSourceId ?? this.powerSourceId,
      powerSource: powerSource == null
          ? this.powerSource
          : AsyncModel.fromModel(powerSource),
      createdAt:
          createdAt == null ? this.createdAt : TemporalDateTime(createdAt),
      updatedAt:
          updatedAt == null ? this.updatedAt : TemporalDateTime(updatedAt),
      id: id ?? this.id,
    );
  }

  @override
  T valueFor<T extends Object?>(QueryField<String, BatteryCharger, T> field) {
    Object? value;
    switch (field.fieldName) {
      case r'chargerID':
        value = chargerId;
        break;
      case r'powerSourceID':
        value = powerSourceId;
        break;
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
    }
    assert(
      value is T,
      'Invalid field ${field.fieldName}: $value (expected $T)',
    );
    return value as T;
  }
}

class _BatteryCharger extends BatteryCharger {
  _BatteryCharger({
    required this.chargerId,
    this.powerSourceId,
    PowerSource? powerSource,
    String? id,
  })  : powerSource =
            powerSource == null ? null : AsyncModel.fromModel(powerSource),
        createdAt = TemporalDateTime.now(),
        updatedAt = TemporalDateTime.now(),
        id = id ?? uuid(),
        super._();

  const _BatteryCharger._({
    required this.chargerId,
    this.powerSourceId,
    this.powerSource,
    required this.createdAt,
    required this.updatedAt,
    required this.id,
  }) : super._();

  @override
  final String chargerId;

  @override
  final String? powerSourceId;

  @override
  final AsyncModel<String, PowerSource, PartialPowerSource, PowerSource>?
      powerSource;

  @override
  final TemporalDateTime createdAt;

  @override
  final TemporalDateTime updatedAt;

  @override
  final String id;
}

abstract class RemoteBatteryCharger extends BatteryCharger
    implements RemoteModel<String, BatteryCharger> {
  const RemoteBatteryCharger._() : super._();
}

class _RemoteBatteryCharger extends RemoteBatteryCharger {
  const _RemoteBatteryCharger({
    required this.chargerId,
    this.powerSourceId,
    this.powerSource,
    required this.createdAt,
    required this.updatedAt,
    required this.id,
    required this.version,
    required this.deleted,
    required this.lastChangedAt,
  }) : super._();

  factory _RemoteBatteryCharger.fromJson(Map<String, Object?> json) {
    final chargerId = json['chargerID'] == null
        ? (throw ModelFieldError(
            'BatteryCharger',
            'chargerId',
          ))
        : (json['chargerID'] as String);
    final powerSourceId = json['powerSourceID'] == null
        ? null
        : (json['powerSourceID'] as String);
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
    final powerSource = json['powerSource'] == null
        ? powerSourceId == null
            ? null
            : AsyncModel<String, PowerSource, PartialPowerSource,
                RemotePowerSource>.fromModelIdentifier(
                PowerSource.classType,
                powerSourceId,
              )
        : AsyncModel<String, PowerSource, PartialPowerSource,
            RemotePowerSource>.fromModel(
            PowerSource.classType.fromJson<RemotePowerSource>(
              (json['powerSource'] as Map<String, Object?>),
            ),
          );
    return _RemoteBatteryCharger(
      chargerId: chargerId,
      powerSourceId: powerSourceId,
      powerSource: powerSource,
      createdAt: createdAt,
      updatedAt: updatedAt,
      id: id,
      version: version,
      deleted: deleted,
      lastChangedAt: lastChangedAt,
    );
  }

  @override
  final String chargerId;

  @override
  final String? powerSourceId;

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
  final int version;

  @override
  final bool deleted;

  @override
  final TemporalDateTime lastChangedAt;
}
