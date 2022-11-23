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

library models.simple_owner_auth;

import 'package:amplify_core/amplify_core.dart';

class SimpleOwnerAuthType
    extends ModelType<String, SimpleOwnerAuth, PartialSimpleOwnerAuth> {
  const SimpleOwnerAuthType();

  @override
  T fromJson<T extends PartialModel<String, SimpleOwnerAuth>>(
    Map<String, Object?> json,
  ) {
    if (T == SimpleOwnerAuth || T == Model<String, SimpleOwnerAuth>) {
      return SimpleOwnerAuth.fromJson(json) as T;
    }
    if (T == RemoteSimpleOwnerAuth ||
        T == RemoteModel<String, SimpleOwnerAuth>) {
      return _RemoteSimpleOwnerAuth.fromJson(json) as T;
    }
    return _PartialSimpleOwnerAuth.fromJson(json) as T;
  }

  @override
  String get modelName => 'simpleOwnerAuth';
}

class SimpleOwnerAuthQueryFields<ModelIdentifier extends Object,
    M extends Model<ModelIdentifier, M>> {
  const SimpleOwnerAuthQueryFields([this._root]);

  final QueryField<ModelIdentifier, M, SimpleOwnerAuth>? _root;

  /// Query field for the [SimpleOwnerAuth.id] field.
  QueryField<ModelIdentifier, M, String> get $id =>
      NestedQueryField<ModelIdentifier, M, String, SimpleOwnerAuth, String>(
        const QueryField<String, SimpleOwnerAuth, String>(fieldName: 'id'),
        root: _root,
      );

  /// Query field for the [SimpleOwnerAuth.name] field.
  QueryField<ModelIdentifier, M, String?> get $name =>
      NestedQueryField<ModelIdentifier, M, String, SimpleOwnerAuth, String?>(
        const QueryField<String, SimpleOwnerAuth, String?>(fieldName: 'name'),
        root: _root,
      );

  /// Query field for the [SimpleOwnerAuth.bar] field.
  QueryField<ModelIdentifier, M, String?> get $bar =>
      NestedQueryField<ModelIdentifier, M, String, SimpleOwnerAuth, String?>(
        const QueryField<String, SimpleOwnerAuth, String?>(fieldName: 'bar'),
        root: _root,
      );

  /// Query field for the [SimpleOwnerAuth.createdAt] field.
  QueryField<ModelIdentifier, M, TemporalDateTime> get $createdAt =>
      NestedQueryField<ModelIdentifier, M, String, SimpleOwnerAuth,
          TemporalDateTime>(
        const QueryField<String, SimpleOwnerAuth, TemporalDateTime>(
          fieldName: 'createdAt',
        ),
        root: _root,
      );

  /// Query field for the [SimpleOwnerAuth.updatedAt] field.
  QueryField<ModelIdentifier, M, TemporalDateTime> get $updatedAt =>
      NestedQueryField<ModelIdentifier, M, String, SimpleOwnerAuth,
          TemporalDateTime>(
        const QueryField<String, SimpleOwnerAuth, TemporalDateTime>(
          fieldName: 'updatedAt',
        ),
        root: _root,
      );

  /// Query field for the [SimpleOwnerAuth] model identifier.
  QueryField<ModelIdentifier, M, String> get $modelIdentifier =>
      NestedQueryField<ModelIdentifier, M, String, SimpleOwnerAuth, String>(
        const QueryField<String, SimpleOwnerAuth, String>(
          fieldName: 'modelIdentifier',
        ),
        root: _root,
      );
}

abstract class PartialSimpleOwnerAuth
    extends PartialModel<String, SimpleOwnerAuth>
    with AWSEquatable<PartialSimpleOwnerAuth> {
  const PartialSimpleOwnerAuth._();

  String get id;
  String? get name;
  String? get bar;
  TemporalDateTime? get createdAt;
  TemporalDateTime? get updatedAt;
  @override
  String get modelIdentifier => id;
  @override
  SimpleOwnerAuthType get modelType => SimpleOwnerAuth.classType;
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
  String get runtimeTypeName => 'SimpleOwnerAuth';
}

class _PartialSimpleOwnerAuth extends PartialSimpleOwnerAuth {
  const _PartialSimpleOwnerAuth({
    required this.id,
    this.name,
    this.bar,
    this.createdAt,
    this.updatedAt,
  }) : super._();

  factory _PartialSimpleOwnerAuth.fromJson(Map<String, Object?> json) {
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'SimpleOwnerAuth',
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
    return _PartialSimpleOwnerAuth(
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

abstract class SimpleOwnerAuth extends PartialSimpleOwnerAuth
    implements Model<String, SimpleOwnerAuth> {
  factory SimpleOwnerAuth({
    String? id,
    String? name,
    String? bar,
  }) = _SimpleOwnerAuth;

  const SimpleOwnerAuth._() : super._();

  factory SimpleOwnerAuth.fromJson(Map<String, Object?> json) {
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'SimpleOwnerAuth',
            'id',
          ))
        : (json['id'] as String);
    final name = json['name'] == null ? null : (json['name'] as String);
    final bar = json['bar'] == null ? null : (json['bar'] as String);
    final createdAt = json['createdAt'] == null
        ? (throw ModelFieldError(
            'SimpleOwnerAuth',
            'createdAt',
          ))
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? (throw ModelFieldError(
            'SimpleOwnerAuth',
            'updatedAt',
          ))
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    return _SimpleOwnerAuth._(
      id: id,
      name: name,
      bar: bar,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  static const SimpleOwnerAuthType classType = SimpleOwnerAuthType();

  static const SimpleOwnerAuthQueryFields<String, SimpleOwnerAuth>
      _queryFields = SimpleOwnerAuthQueryFields();

  @override
  String get id;

  /// Query field for the [id] field.
  QueryField<String, SimpleOwnerAuth, String> get $id => _queryFields.$id;

  /// Query field for the [id] field.
  @Deprecated(r'Use $id instead')
  QueryField<String, SimpleOwnerAuth, String> get ID => $id;
  @override
  String? get name;

  /// Query field for the [name] field.
  QueryField<String, SimpleOwnerAuth, String?> get $name => _queryFields.$name;

  /// Query field for the [name] field.
  @Deprecated(r'Use $name instead')
  QueryField<String, SimpleOwnerAuth, String?> get NAME => $name;
  @override
  String? get bar;

  /// Query field for the [bar] field.
  QueryField<String, SimpleOwnerAuth, String?> get $bar => _queryFields.$bar;

  /// Query field for the [bar] field.
  @Deprecated(r'Use $bar instead')
  QueryField<String, SimpleOwnerAuth, String?> get BAR => $bar;
  @override
  TemporalDateTime get createdAt;
  @override
  TemporalDateTime get updatedAt;

  /// Query field for the [modelIdentifier] field.
  QueryField<String, SimpleOwnerAuth, String> get $modelIdentifier =>
      _queryFields.$modelIdentifier;

  /// Query field for the [modelIdentifier] field.
  @Deprecated(r'Use $modelIdentifier instead')
  QueryField<String, SimpleOwnerAuth, String> get MODEL_IDENTIFIER =>
      $modelIdentifier;
  SimpleOwnerAuth copyWith({
    String? id,
    String? name,
    String? bar,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return _SimpleOwnerAuth._(
      id: id ?? this.id,
      name: name ?? this.name,
      bar: bar ?? this.bar,
      createdAt:
          createdAt == null ? this.createdAt : TemporalDateTime(createdAt),
      updatedAt:
          updatedAt == null ? this.updatedAt : TemporalDateTime(updatedAt),
    );
  }

  @override
  T valueFor<T extends Object?>(QueryField<String, SimpleOwnerAuth, T> field) {
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

class _SimpleOwnerAuth extends SimpleOwnerAuth {
  _SimpleOwnerAuth({
    String? id,
    this.name,
    this.bar,
  })  : id = id ?? uuid(),
        createdAt = TemporalDateTime.now(),
        updatedAt = TemporalDateTime.now(),
        super._();

  const _SimpleOwnerAuth._({
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

abstract class RemoteSimpleOwnerAuth extends SimpleOwnerAuth
    implements RemoteModel<String, SimpleOwnerAuth> {
  const RemoteSimpleOwnerAuth._() : super._();
}

class _RemoteSimpleOwnerAuth extends RemoteSimpleOwnerAuth {
  const _RemoteSimpleOwnerAuth({
    required this.id,
    this.name,
    this.bar,
    required this.createdAt,
    required this.updatedAt,
    required this.version,
    required this.deleted,
    required this.lastChangedAt,
  }) : super._();

  factory _RemoteSimpleOwnerAuth.fromJson(Map<String, Object?> json) {
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'SimpleOwnerAuth',
            'id',
          ))
        : (json['id'] as String);
    final name = json['name'] == null ? null : (json['name'] as String);
    final bar = json['bar'] == null ? null : (json['bar'] as String);
    final createdAt = json['createdAt'] == null
        ? (throw ModelFieldError(
            'SimpleOwnerAuth',
            'createdAt',
          ))
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? (throw ModelFieldError(
            'SimpleOwnerAuth',
            'updatedAt',
          ))
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    final version = json['version'] == null
        ? (throw ModelFieldError(
            'SimpleOwnerAuth',
            'version',
          ))
        : (json['version'] as int);
    final deleted = json['deleted'] == null
        ? (throw ModelFieldError(
            'SimpleOwnerAuth',
            'deleted',
          ))
        : (json['deleted'] as bool);
    final lastChangedAt = json['lastChangedAt'] == null
        ? (throw ModelFieldError(
            'SimpleOwnerAuth',
            'lastChangedAt',
          ))
        : TemporalDateTime.fromString((json['lastChangedAt'] as String));
    return _RemoteSimpleOwnerAuth(
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
