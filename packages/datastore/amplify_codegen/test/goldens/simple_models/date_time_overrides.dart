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

library models.date_time_overrides;

import 'package:amplify_core/amplify_core.dart';

class DateTimeOverridesType
    extends ModelType<String, DateTimeOverrides, PartialDateTimeOverrides> {
  const DateTimeOverridesType();

  @override
  T fromJson<T extends PartialModel<String, DateTimeOverrides>>(
    Map<String, Object?> json,
  ) {
    if (T == DateTimeOverrides || T == Model<String, DateTimeOverrides>) {
      return DateTimeOverrides.fromJson(json) as T;
    }
    if (T == RemoteDateTimeOverrides ||
        T == RemoteModel<String, DateTimeOverrides>) {
      return _RemoteDateTimeOverrides.fromJson(json) as T;
    }
    return _PartialDateTimeOverrides.fromJson(json) as T;
  }

  @override
  String get modelName => 'DateTimeOverrides';
}

class DateTimeOverridesQueryFields<ModelIdentifier extends Object,
    M extends Model<ModelIdentifier, M>> {
  const DateTimeOverridesQueryFields([this._root]);

  final QueryField<ModelIdentifier, M, DateTimeOverrides>? _root;

  /// Query field for the [DateTimeOverrides.id] field.
  QueryField<ModelIdentifier, M, String> get $id =>
      NestedQueryField<ModelIdentifier, M, String, DateTimeOverrides, String>(
        const QueryField<String, DateTimeOverrides, String>(fieldName: 'id'),
        root: _root,
      );

  /// Query field for the [DateTimeOverrides.createdAt] field.
  QueryField<ModelIdentifier, M, String> get $createdAt =>
      NestedQueryField<ModelIdentifier, M, String, DateTimeOverrides, String>(
        const QueryField<String, DateTimeOverrides, String>(
          fieldName: 'createdAt',
        ),
        root: _root,
      );

  /// Query field for the [DateTimeOverrides.updatedAt] field.
  QueryField<ModelIdentifier, M, TemporalDateTime> get $updatedAt =>
      NestedQueryField<ModelIdentifier, M, String, DateTimeOverrides,
          TemporalDateTime>(
        const QueryField<String, DateTimeOverrides, TemporalDateTime>(
          fieldName: 'updatedAt',
        ),
        root: _root,
      );

  /// Query field for the [DateTimeOverrides] model identifier.
  QueryField<ModelIdentifier, M, String> get $modelIdentifier =>
      NestedQueryField<ModelIdentifier, M, String, DateTimeOverrides, String>(
        const QueryField<String, DateTimeOverrides, String>(
          fieldName: 'modelIdentifier',
        ),
        root: _root,
      );
}

abstract class PartialDateTimeOverrides
    extends PartialModel<String, DateTimeOverrides>
    with AWSEquatable<PartialDateTimeOverrides> {
  const PartialDateTimeOverrides._();

  String get id;
  String? get createdAt;
  TemporalDateTime? get updatedAt;
  @override
  String get modelIdentifier => id;
  @override
  DateTimeOverridesType get modelType => DateTimeOverrides.classType;
  @override
  List<Object?> get props => [
        id,
        createdAt,
        updatedAt,
      ];
  @override
  Map<String, Object?> toJson() => {
        'id': id,
        'createdAt': createdAt,
        'updatedAt': updatedAt?.format(),
        'version': version,
        'deleted': deleted,
        'lastChangedAt': lastChangedAt?.format(),
      };
  @override
  String get runtimeTypeName => 'DateTimeOverrides';
  @override
  T valueFor<T extends Object?>(
    QueryField<String, DateTimeOverrides, T> field,
  ) {
    Object? value;
    switch (field.fieldName) {
      case r'id':
        value = id;
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

class _PartialDateTimeOverrides extends PartialDateTimeOverrides {
  const _PartialDateTimeOverrides({
    required this.id,
    this.createdAt,
    this.updatedAt,
  }) : super._();

  factory _PartialDateTimeOverrides.fromJson(Map<String, Object?> json) {
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'DateTimeOverrides',
            'id',
          ))
        : (json['id'] as String);
    final createdAt =
        json['createdAt'] == null ? null : (json['createdAt'] as String);
    final updatedAt = json['updatedAt'] == null
        ? null
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    return _PartialDateTimeOverrides(
      id: id,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  @override
  final String id;

  @override
  final String? createdAt;

  @override
  final TemporalDateTime? updatedAt;
}

abstract class DateTimeOverrides extends PartialDateTimeOverrides
    implements Model<String, DateTimeOverrides> {
  factory DateTimeOverrides({
    String? id,
    required String createdAt,
    required DateTime updatedAt,
  }) = _DateTimeOverrides;

  const DateTimeOverrides._() : super._();

  factory DateTimeOverrides.fromJson(Map<String, Object?> json) {
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'DateTimeOverrides',
            'id',
          ))
        : (json['id'] as String);
    final createdAt = json['createdAt'] == null
        ? (throw ModelFieldError(
            'DateTimeOverrides',
            'createdAt',
          ))
        : (json['createdAt'] as String);
    final updatedAt = json['updatedAt'] == null
        ? (throw ModelFieldError(
            'DateTimeOverrides',
            'updatedAt',
          ))
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    return _DateTimeOverrides._(
      id: id,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  static const DateTimeOverridesType classType = DateTimeOverridesType();

  static const DateTimeOverridesQueryFields<String, DateTimeOverrides>
      _queryFields = DateTimeOverridesQueryFields();

  @override
  String get id;

  /// Query field for the [id] field.
  QueryField<String, DateTimeOverrides, String> get $id => _queryFields.$id;

  /// Query field for the [id] field.
  @Deprecated(r'Use $id instead')
  QueryField<String, DateTimeOverrides, String> get ID => $id;
  @override
  String get createdAt;

  /// Query field for the [createdAt] field.
  QueryField<String, DateTimeOverrides, String> get $createdAt =>
      _queryFields.$createdAt;

  /// Query field for the [createdAt] field.
  @Deprecated(r'Use $createdAt instead')
  QueryField<String, DateTimeOverrides, String> get CREATED_AT => $createdAt;
  @override
  TemporalDateTime get updatedAt;

  /// Query field for the [updatedAt] field.
  QueryField<String, DateTimeOverrides, TemporalDateTime> get $updatedAt =>
      _queryFields.$updatedAt;

  /// Query field for the [updatedAt] field.
  @Deprecated(r'Use $updatedAt instead')
  QueryField<String, DateTimeOverrides, TemporalDateTime> get UPDATED_AT =>
      $updatedAt;

  /// Query field for the [modelIdentifier] field.
  QueryField<String, DateTimeOverrides, String> get $modelIdentifier =>
      _queryFields.$modelIdentifier;

  /// Query field for the [modelIdentifier] field.
  @Deprecated(r'Use $modelIdentifier instead')
  QueryField<String, DateTimeOverrides, String> get MODEL_IDENTIFIER =>
      $modelIdentifier;
}

class _DateTimeOverrides extends DateTimeOverrides {
  _DateTimeOverrides({
    String? id,
    required this.createdAt,
    required DateTime updatedAt,
  })  : id = id ?? uuid(),
        updatedAt = TemporalDateTime(updatedAt),
        super._();

  const _DateTimeOverrides._({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
  }) : super._();

  @override
  final String id;

  @override
  final String createdAt;

  @override
  final TemporalDateTime updatedAt;
}

abstract class RemoteDateTimeOverrides extends DateTimeOverrides
    implements RemoteModel<String, DateTimeOverrides> {
  const RemoteDateTimeOverrides._() : super._();
}

class _RemoteDateTimeOverrides extends RemoteDateTimeOverrides {
  const _RemoteDateTimeOverrides({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.version,
    required this.deleted,
    required this.lastChangedAt,
  }) : super._();

  factory _RemoteDateTimeOverrides.fromJson(Map<String, Object?> json) {
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'DateTimeOverrides',
            'id',
          ))
        : (json['id'] as String);
    final createdAt = json['createdAt'] == null
        ? (throw ModelFieldError(
            'DateTimeOverrides',
            'createdAt',
          ))
        : (json['createdAt'] as String);
    final updatedAt = json['updatedAt'] == null
        ? (throw ModelFieldError(
            'DateTimeOverrides',
            'updatedAt',
          ))
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    final version = json['version'] == null
        ? (throw ModelFieldError(
            'DateTimeOverrides',
            'version',
          ))
        : (json['version'] as int);
    final deleted = json['deleted'] == null
        ? (throw ModelFieldError(
            'DateTimeOverrides',
            'deleted',
          ))
        : (json['deleted'] as bool);
    final lastChangedAt = json['lastChangedAt'] == null
        ? (throw ModelFieldError(
            'DateTimeOverrides',
            'lastChangedAt',
          ))
        : TemporalDateTime.fromString((json['lastChangedAt'] as String));
    return _RemoteDateTimeOverrides(
      id: id,
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
  final String createdAt;

  @override
  final TemporalDateTime updatedAt;

  @override
  final int version;

  @override
  final bool deleted;

  @override
  final TemporalDateTime lastChangedAt;
}
