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

library models.todo_with_auth;

import 'package:amplify_core/amplify_core.dart';

class TodoWithAuthType
    extends ModelType<String, TodoWithAuth, PartialTodoWithAuth> {
  const TodoWithAuthType();

  @override
  T fromJson<T extends PartialModel<String, TodoWithAuth>>(
    Map<String, Object?> json,
  ) {
    if (T == TodoWithAuth || T == Model<String, TodoWithAuth>) {
      return TodoWithAuth.fromJson(json) as T;
    }
    if (T == RemoteTodoWithAuth || T == RemoteModel<String, TodoWithAuth>) {
      return _RemoteTodoWithAuth.fromJson(json) as T;
    }
    return _PartialTodoWithAuth.fromJson(json) as T;
  }

  @override
  String get modelName => 'TodoWithAuth';
}

class TodoWithAuthQueryFields<ModelIdentifier extends Object,
    M extends Model<ModelIdentifier, M>> {
  const TodoWithAuthQueryFields([this._root]);

  final QueryField<ModelIdentifier, M, TodoWithAuth>? _root;

  /// Query field for the [TodoWithAuth.id] field.
  QueryField<ModelIdentifier, M, String> get $id =>
      NestedQueryField<ModelIdentifier, M, String, TodoWithAuth, String>(
        const QueryField<String, TodoWithAuth, String>(fieldName: 'id'),
        root: _root,
      );

  /// Query field for the [TodoWithAuth.name] field.
  QueryField<ModelIdentifier, M, String> get $name =>
      NestedQueryField<ModelIdentifier, M, String, TodoWithAuth, String>(
        const QueryField<String, TodoWithAuth, String>(fieldName: 'name'),
        root: _root,
      );

  /// Query field for the [TodoWithAuth.createdAt] field.
  QueryField<ModelIdentifier, M, TemporalDateTime> get $createdAt =>
      NestedQueryField<ModelIdentifier, M, String, TodoWithAuth,
          TemporalDateTime>(
        const QueryField<String, TodoWithAuth, TemporalDateTime>(
          fieldName: 'createdAt',
        ),
        root: _root,
      );

  /// Query field for the [TodoWithAuth.updatedAt] field.
  QueryField<ModelIdentifier, M, TemporalDateTime> get $updatedAt =>
      NestedQueryField<ModelIdentifier, M, String, TodoWithAuth,
          TemporalDateTime>(
        const QueryField<String, TodoWithAuth, TemporalDateTime>(
          fieldName: 'updatedAt',
        ),
        root: _root,
      );

  /// Query field for the [TodoWithAuth] model identifier.
  QueryField<ModelIdentifier, M, String> get $modelIdentifier =>
      NestedQueryField<ModelIdentifier, M, String, TodoWithAuth, String>(
        const QueryField<String, TodoWithAuth, String>(
          fieldName: 'modelIdentifier',
        ),
        root: _root,
      );
}

abstract class PartialTodoWithAuth extends PartialModel<String, TodoWithAuth>
    with AWSEquatable<PartialTodoWithAuth> {
  const PartialTodoWithAuth._();

  String get id;
  String? get name;
  TemporalDateTime? get createdAt;
  TemporalDateTime? get updatedAt;
  @override
  String get modelIdentifier => id;
  @override
  TodoWithAuthType get modelType => TodoWithAuth.classType;
  @override
  List<Object?> get props => [
        id,
        name,
        createdAt,
        updatedAt,
      ];
  @override
  Map<String, Object?> toJson() => {
        'id': id,
        'name': name,
        'createdAt': createdAt?.format(),
        'updatedAt': updatedAt?.format(),
        'version': version,
        'deleted': deleted,
        'lastChangedAt': lastChangedAt?.format(),
      };
  @override
  String get runtimeTypeName => 'TodoWithAuth';
}

class _PartialTodoWithAuth extends PartialTodoWithAuth {
  const _PartialTodoWithAuth({
    required this.id,
    this.name,
    this.createdAt,
    this.updatedAt,
  }) : super._();

  factory _PartialTodoWithAuth.fromJson(Map<String, Object?> json) {
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'TodoWithAuth',
            'id',
          ))
        : (json['id'] as String);
    final name = json['name'] == null ? null : (json['name'] as String);
    final createdAt = json['createdAt'] == null
        ? null
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? null
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    return _PartialTodoWithAuth(
      id: id,
      name: name,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  @override
  final String id;

  @override
  final String? name;

  @override
  final TemporalDateTime? createdAt;

  @override
  final TemporalDateTime? updatedAt;
}

abstract class TodoWithAuth extends PartialTodoWithAuth
    implements Model<String, TodoWithAuth> {
  factory TodoWithAuth({
    String? id,
    required String name,
  }) = _TodoWithAuth;

  const TodoWithAuth._() : super._();

  factory TodoWithAuth.fromJson(Map<String, Object?> json) {
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'TodoWithAuth',
            'id',
          ))
        : (json['id'] as String);
    final name = json['name'] == null
        ? (throw ModelFieldError(
            'TodoWithAuth',
            'name',
          ))
        : (json['name'] as String);
    final createdAt = json['createdAt'] == null
        ? (throw ModelFieldError(
            'TodoWithAuth',
            'createdAt',
          ))
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? (throw ModelFieldError(
            'TodoWithAuth',
            'updatedAt',
          ))
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    return _TodoWithAuth._(
      id: id,
      name: name,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  static const TodoWithAuthType classType = TodoWithAuthType();

  static const TodoWithAuthQueryFields<String, TodoWithAuth> _queryFields =
      TodoWithAuthQueryFields();

  @override
  String get id;

  /// Query field for the [id] field.
  QueryField<String, TodoWithAuth, String> get $id => _queryFields.$id;

  /// Query field for the [id] field.
  @Deprecated(r'Use $id instead')
  QueryField<String, TodoWithAuth, String> get ID => $id;
  @override
  String get name;

  /// Query field for the [name] field.
  QueryField<String, TodoWithAuth, String> get $name => _queryFields.$name;

  /// Query field for the [name] field.
  @Deprecated(r'Use $name instead')
  QueryField<String, TodoWithAuth, String> get NAME => $name;
  @override
  TemporalDateTime get createdAt;
  @override
  TemporalDateTime get updatedAt;

  /// Query field for the [modelIdentifier] field.
  QueryField<String, TodoWithAuth, String> get $modelIdentifier =>
      _queryFields.$modelIdentifier;

  /// Query field for the [modelIdentifier] field.
  @Deprecated(r'Use $modelIdentifier instead')
  QueryField<String, TodoWithAuth, String> get MODEL_IDENTIFIER =>
      $modelIdentifier;
  @override
  T valueFor<T extends Object?>(QueryField<String, TodoWithAuth, T> field) {
    Object? value;
    switch (field.fieldName) {
      case r'id':
        value = id;
        break;
      case r'name':
        value = name;
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

class _TodoWithAuth extends TodoWithAuth {
  _TodoWithAuth({
    String? id,
    required this.name,
  })  : id = id ?? uuid(),
        createdAt = TemporalDateTime.now(),
        updatedAt = TemporalDateTime.now(),
        super._();

  const _TodoWithAuth._({
    required this.id,
    required this.name,
    required this.createdAt,
    required this.updatedAt,
  }) : super._();

  @override
  final String id;

  @override
  final String name;

  @override
  final TemporalDateTime createdAt;

  @override
  final TemporalDateTime updatedAt;
}

abstract class RemoteTodoWithAuth extends TodoWithAuth
    implements RemoteModel<String, TodoWithAuth> {
  const RemoteTodoWithAuth._() : super._();
}

class _RemoteTodoWithAuth extends RemoteTodoWithAuth {
  const _RemoteTodoWithAuth({
    required this.id,
    required this.name,
    required this.createdAt,
    required this.updatedAt,
    required this.version,
    required this.deleted,
    required this.lastChangedAt,
  }) : super._();

  factory _RemoteTodoWithAuth.fromJson(Map<String, Object?> json) {
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'TodoWithAuth',
            'id',
          ))
        : (json['id'] as String);
    final name = json['name'] == null
        ? (throw ModelFieldError(
            'TodoWithAuth',
            'name',
          ))
        : (json['name'] as String);
    final createdAt = json['createdAt'] == null
        ? (throw ModelFieldError(
            'TodoWithAuth',
            'createdAt',
          ))
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? (throw ModelFieldError(
            'TodoWithAuth',
            'updatedAt',
          ))
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    final version = json['version'] == null
        ? (throw ModelFieldError(
            'TodoWithAuth',
            'version',
          ))
        : (json['version'] as int);
    final deleted = json['deleted'] == null
        ? (throw ModelFieldError(
            'TodoWithAuth',
            'deleted',
          ))
        : (json['deleted'] as bool);
    final lastChangedAt = json['lastChangedAt'] == null
        ? (throw ModelFieldError(
            'TodoWithAuth',
            'lastChangedAt',
          ))
        : TemporalDateTime.fromString((json['lastChangedAt'] as String));
    return _RemoteTodoWithAuth(
      id: id,
      name: name,
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
  final String name;

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
