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

library models.dynamic_groups;

import 'package:amplify_core/amplify_core.dart';

class DynamicGroupsType
    extends ModelType<String, DynamicGroups, PartialDynamicGroups> {
  const DynamicGroupsType();

  @override
  T fromJson<T extends PartialModel<String, DynamicGroups>>(
    Map<String, Object?> json,
  ) {
    if (T == DynamicGroups || T == Model<String, DynamicGroups>) {
      return DynamicGroups.fromJson(json) as T;
    }
    if (T == RemoteDynamicGroups || T == RemoteModel<String, DynamicGroups>) {
      return _RemoteDynamicGroups.fromJson(json) as T;
    }
    return _PartialDynamicGroups.fromJson(json) as T;
  }

  @override
  String get modelName => 'dynamicGroups';
}

class DynamicGroupsQueryFields<ModelIdentifier extends Object,
    M extends Model<ModelIdentifier, M>> {
  const DynamicGroupsQueryFields([this._root]);

  final QueryField<ModelIdentifier, M, DynamicGroups>? _root;

  /// Query field for the [DynamicGroups.id] field.
  QueryField<ModelIdentifier, M, String> get $id =>
      NestedQueryField<ModelIdentifier, M, String, DynamicGroups, String>(
        const QueryField<String, DynamicGroups, String>(fieldName: 'id'),
        root: _root,
      );

  /// Query field for the [DynamicGroups.name] field.
  QueryField<ModelIdentifier, M, String?> get $name =>
      NestedQueryField<ModelIdentifier, M, String, DynamicGroups, String?>(
        const QueryField<String, DynamicGroups, String?>(fieldName: 'name'),
        root: _root,
      );

  /// Query field for the [DynamicGroups.bar] field.
  QueryField<ModelIdentifier, M, String?> get $bar =>
      NestedQueryField<ModelIdentifier, M, String, DynamicGroups, String?>(
        const QueryField<String, DynamicGroups, String?>(fieldName: 'bar'),
        root: _root,
      );

  /// Query field for the [DynamicGroups.createdAt] field.
  QueryField<ModelIdentifier, M, TemporalDateTime> get $createdAt =>
      NestedQueryField<ModelIdentifier, M, String, DynamicGroups,
          TemporalDateTime>(
        const QueryField<String, DynamicGroups, TemporalDateTime>(
          fieldName: 'createdAt',
        ),
        root: _root,
      );

  /// Query field for the [DynamicGroups.updatedAt] field.
  QueryField<ModelIdentifier, M, TemporalDateTime> get $updatedAt =>
      NestedQueryField<ModelIdentifier, M, String, DynamicGroups,
          TemporalDateTime>(
        const QueryField<String, DynamicGroups, TemporalDateTime>(
          fieldName: 'updatedAt',
        ),
        root: _root,
      );

  /// Query field for the [DynamicGroups] model identifier.
  QueryField<ModelIdentifier, M, String> get $modelIdentifier =>
      NestedQueryField<ModelIdentifier, M, String, DynamicGroups, String>(
        const QueryField<String, DynamicGroups, String>(
          fieldName: 'modelIdentifier',
        ),
        root: _root,
      );
}

abstract class PartialDynamicGroups extends PartialModel<String, DynamicGroups>
    with AWSEquatable<PartialDynamicGroups> {
  const PartialDynamicGroups._();

  String get id;
  String? get name;
  String? get bar;
  TemporalDateTime? get createdAt;
  TemporalDateTime? get updatedAt;
  @override
  String get modelIdentifier => id;
  @override
  DynamicGroupsType get modelType => DynamicGroups.classType;
  @override
  List<Object?> get props => [
        id,
        name,
        bar,
        createdAt,
        updatedAt,
      ];
  @override
  Map<String, Object?> toJson() => {
        'id': id,
        'name': name,
        'bar': bar,
        'createdAt': createdAt?.format(),
        'updatedAt': updatedAt?.format(),
        'version': version,
        'deleted': deleted,
        'lastChangedAt': lastChangedAt?.format(),
      };
  @override
  String get runtimeTypeName => 'DynamicGroups';
}

class _PartialDynamicGroups extends PartialDynamicGroups {
  const _PartialDynamicGroups({
    required this.id,
    this.name,
    this.bar,
    this.createdAt,
    this.updatedAt,
  }) : super._();

  factory _PartialDynamicGroups.fromJson(Map<String, Object?> json) {
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'DynamicGroups',
            'id',
          ))
        : (json['id'] as String);
    final name = json['name'] == null ? null : (json['name'] as String);
    final bar = json['bar'] == null ? null : (json['bar'] as String);
    final createdAt = json['createdAt'] == null
        ? null
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? null
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    return _PartialDynamicGroups(
      id: id,
      name: name,
      bar: bar,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  @override
  final String id;

  @override
  final String? name;

  @override
  final String? bar;

  @override
  final TemporalDateTime? createdAt;

  @override
  final TemporalDateTime? updatedAt;
}

abstract class DynamicGroups extends PartialDynamicGroups
    implements Model<String, DynamicGroups> {
  factory DynamicGroups({
    String? id,
    String? name,
    String? bar,
  }) = _DynamicGroups;

  const DynamicGroups._() : super._();

  factory DynamicGroups.fromJson(Map<String, Object?> json) {
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'DynamicGroups',
            'id',
          ))
        : (json['id'] as String);
    final name = json['name'] == null ? null : (json['name'] as String);
    final bar = json['bar'] == null ? null : (json['bar'] as String);
    final createdAt = json['createdAt'] == null
        ? (throw ModelFieldError(
            'DynamicGroups',
            'createdAt',
          ))
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? (throw ModelFieldError(
            'DynamicGroups',
            'updatedAt',
          ))
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    return _DynamicGroups._(
      id: id,
      name: name,
      bar: bar,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  static const DynamicGroupsType classType = DynamicGroupsType();

  static const DynamicGroupsQueryFields<String, DynamicGroups> _queryFields =
      DynamicGroupsQueryFields();

  @override
  String get id;

  /// Query field for the [id] field.
  QueryField<String, DynamicGroups, String> get $id => _queryFields.$id;

  /// Query field for the [id] field.
  @Deprecated(r'Use $id instead')
  QueryField<String, DynamicGroups, String> get ID => $id;
  @override
  String? get name;

  /// Query field for the [name] field.
  QueryField<String, DynamicGroups, String?> get $name => _queryFields.$name;

  /// Query field for the [name] field.
  @Deprecated(r'Use $name instead')
  QueryField<String, DynamicGroups, String?> get NAME => $name;
  @override
  String? get bar;

  /// Query field for the [bar] field.
  QueryField<String, DynamicGroups, String?> get $bar => _queryFields.$bar;

  /// Query field for the [bar] field.
  @Deprecated(r'Use $bar instead')
  QueryField<String, DynamicGroups, String?> get BAR => $bar;
  @override
  TemporalDateTime get createdAt;
  @override
  TemporalDateTime get updatedAt;

  /// Query field for the [modelIdentifier] field.
  QueryField<String, DynamicGroups, String> get $modelIdentifier =>
      _queryFields.$modelIdentifier;

  /// Query field for the [modelIdentifier] field.
  @Deprecated(r'Use $modelIdentifier instead')
  QueryField<String, DynamicGroups, String> get MODEL_IDENTIFIER =>
      $modelIdentifier;
  @override
  T valueFor<T extends Object?>(QueryField<String, DynamicGroups, T> field) {
    Object? value;
    switch (field.fieldName) {
      case r'id':
        value = id;
        break;
      case r'name':
        value = name;
        break;
      case r'bar':
        value = bar;
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

class _DynamicGroups extends DynamicGroups {
  _DynamicGroups({
    String? id,
    this.name,
    this.bar,
  })  : id = id ?? uuid(),
        createdAt = TemporalDateTime.now(),
        updatedAt = TemporalDateTime.now(),
        super._();

  const _DynamicGroups._({
    required this.id,
    this.name,
    this.bar,
    required this.createdAt,
    required this.updatedAt,
  }) : super._();

  @override
  final String id;

  @override
  final String? name;

  @override
  final String? bar;

  @override
  final TemporalDateTime createdAt;

  @override
  final TemporalDateTime updatedAt;
}

abstract class RemoteDynamicGroups extends DynamicGroups
    implements RemoteModel<String, DynamicGroups> {
  const RemoteDynamicGroups._() : super._();
}

class _RemoteDynamicGroups extends RemoteDynamicGroups {
  const _RemoteDynamicGroups({
    required this.id,
    this.name,
    this.bar,
    required this.createdAt,
    required this.updatedAt,
    required this.version,
    required this.deleted,
    required this.lastChangedAt,
  }) : super._();

  factory _RemoteDynamicGroups.fromJson(Map<String, Object?> json) {
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'DynamicGroups',
            'id',
          ))
        : (json['id'] as String);
    final name = json['name'] == null ? null : (json['name'] as String);
    final bar = json['bar'] == null ? null : (json['bar'] as String);
    final createdAt = json['createdAt'] == null
        ? (throw ModelFieldError(
            'DynamicGroups',
            'createdAt',
          ))
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? (throw ModelFieldError(
            'DynamicGroups',
            'updatedAt',
          ))
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    final version = json['version'] == null
        ? (throw ModelFieldError(
            'DynamicGroups',
            'version',
          ))
        : (json['version'] as int);
    final deleted = json['deleted'] == null
        ? (throw ModelFieldError(
            'DynamicGroups',
            'deleted',
          ))
        : (json['deleted'] as bool);
    final lastChangedAt = json['lastChangedAt'] == null
        ? (throw ModelFieldError(
            'DynamicGroups',
            'lastChangedAt',
          ))
        : TemporalDateTime.fromString((json['lastChangedAt'] as String));
    return _RemoteDynamicGroups(
      id: id,
      name: name,
      bar: bar,
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
  final String? name;

  @override
  final String? bar;

  @override
  final TemporalDateTime createdAt;

  @override
  final TemporalDateTime updatedAt;

  @override
  final int version;

  @override
  final bool deleted;

  @override
  final TemporalDateTime lastChangedAt;
}
