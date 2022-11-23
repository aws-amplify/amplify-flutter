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

library models.todo;

import 'package:amplify_core/amplify_core.dart';

class TodoType extends ModelType<String, Todo, PartialTodo> {
  const TodoType();

  @override
  T fromJson<T extends PartialModel<String, Todo>>(Map<String, Object?> json) {
    if (T == Todo || T == Model<String, Todo>) {
      return Todo.fromJson(json) as T;
    }
    if (T == RemoteTodo || T == RemoteModel<String, Todo>) {
      return _RemoteTodo.fromJson(json) as T;
    }
    return _PartialTodo.fromJson(json) as T;
  }

  @override
  String get modelName => 'Todo';
}

class TodoQueryFields<ModelIdentifier extends Object,
    M extends Model<ModelIdentifier, M>> {
  const TodoQueryFields([this._root]);

  final QueryField<ModelIdentifier, M, Todo>? _root;

  /// Query field for the [Todo.content] field.
  QueryField<ModelIdentifier, M, String?> get $content =>
      NestedQueryField<ModelIdentifier, M, String, Todo, String?>(
        const QueryField<String, Todo, String?>(fieldName: 'content'),
        root: _root,
      );

  /// Query field for the [Todo.createdAt] field.
  QueryField<ModelIdentifier, M, TemporalDateTime> get $createdAt =>
      NestedQueryField<ModelIdentifier, M, String, Todo, TemporalDateTime>(
        const QueryField<String, Todo, TemporalDateTime>(
          fieldName: 'createdAt',
        ),
        root: _root,
      );

  /// Query field for the [Todo.updatedAt] field.
  QueryField<ModelIdentifier, M, TemporalDateTime> get $updatedAt =>
      NestedQueryField<ModelIdentifier, M, String, Todo, TemporalDateTime>(
        const QueryField<String, Todo, TemporalDateTime>(
          fieldName: 'updatedAt',
        ),
        root: _root,
      );

  /// Query field for the [Todo.id] field.
  QueryField<ModelIdentifier, M, String> get $id =>
      NestedQueryField<ModelIdentifier, M, String, Todo, String>(
        const QueryField<String, Todo, String>(fieldName: 'id'),
        root: _root,
      );

  /// Query field for the [Todo] model identifier.
  QueryField<ModelIdentifier, M, String> get $modelIdentifier =>
      NestedQueryField<ModelIdentifier, M, String, Todo, String>(
        const QueryField<String, Todo, String>(fieldName: 'modelIdentifier'),
        root: _root,
      );
}

abstract class PartialTodo extends PartialModel<String, Todo>
    with AWSEquatable<PartialTodo> {
  const PartialTodo._();

  String? get content;
  TemporalDateTime? get createdAt;
  TemporalDateTime? get updatedAt;
  String get id;
  @override
  String get modelIdentifier => id;
  @override
  TodoType get modelType => Todo.classType;
  @override
  List<Object?> get props => [
        content,
        createdAt,
        updatedAt,
        id,
      ];
  @override
  Map<String, Object?> toJson() => {
        'content': content,
        'createdAt': createdAt?.format(),
        'updatedAt': updatedAt?.format(),
        'id': id,
        'version': version,
        'deleted': deleted,
        'lastChangedAt': lastChangedAt?.format(),
      };
  @override
  String get runtimeTypeName => 'Todo';
}

class _PartialTodo extends PartialTodo {
  const _PartialTodo({
    this.content,
    this.createdAt,
    this.updatedAt,
    required this.id,
  }) : super._();

  factory _PartialTodo.fromJson(Map<String, Object?> json) {
    final content =
        json['content'] == null ? null : (json['content'] as String);
    final createdAt = json['createdAt'] == null
        ? null
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? null
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'Todo',
            'id',
          ))
        : (json['id'] as String);
    return _PartialTodo(
      content: content,
      createdAt: createdAt,
      updatedAt: updatedAt,
      id: id,
    );
  }

  @override
  final String? content;

  @override
  final TemporalDateTime? createdAt;

  @override
  final TemporalDateTime? updatedAt;

  @override
  final String id;
}

abstract class Todo extends PartialTodo implements Model<String, Todo> {
  factory Todo({
    String? content,
    String? id,
  }) = _Todo;

  const Todo._() : super._();

  factory Todo.fromJson(Map<String, Object?> json) {
    final content =
        json['content'] == null ? null : (json['content'] as String);
    final createdAt = json['createdAt'] == null
        ? (throw ModelFieldError(
            'Todo',
            'createdAt',
          ))
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? (throw ModelFieldError(
            'Todo',
            'updatedAt',
          ))
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'Todo',
            'id',
          ))
        : (json['id'] as String);
    return _Todo._(
      content: content,
      createdAt: createdAt,
      updatedAt: updatedAt,
      id: id,
    );
  }

  static const TodoType classType = TodoType();

  static const TodoQueryFields<String, Todo> _queryFields = TodoQueryFields();

  @override
  String? get content;

  /// Query field for the [content] field.
  QueryField<String, Todo, String?> get $content => _queryFields.$content;

  /// Query field for the [content] field.
  @Deprecated(r'Use $content instead')
  QueryField<String, Todo, String?> get CONTENT => $content;
  @override
  TemporalDateTime get createdAt;
  @override
  TemporalDateTime get updatedAt;
  @override
  String get id;

  /// Query field for the [id] field.
  QueryField<String, Todo, String> get $id => _queryFields.$id;

  /// Query field for the [id] field.
  @Deprecated(r'Use $id instead')
  QueryField<String, Todo, String> get ID => $id;

  /// Query field for the [modelIdentifier] field.
  QueryField<String, Todo, String> get $modelIdentifier =>
      _queryFields.$modelIdentifier;

  /// Query field for the [modelIdentifier] field.
  @Deprecated(r'Use $modelIdentifier instead')
  QueryField<String, Todo, String> get MODEL_IDENTIFIER => $modelIdentifier;
  Todo copyWith({
    String? content,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? id,
  }) {
    return _Todo._(
      content: content ?? this.content,
      createdAt:
          createdAt == null ? this.createdAt : TemporalDateTime(createdAt),
      updatedAt:
          updatedAt == null ? this.updatedAt : TemporalDateTime(updatedAt),
      id: id ?? this.id,
    );
  }

  @override
  T valueFor<T extends Object?>(QueryField<String, Todo, T> field) {
    Object? value;
    switch (field.fieldName) {
      case r'content':
        value = content;
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

class _Todo extends Todo {
  _Todo({
    this.content,
    String? id,
  })  : createdAt = TemporalDateTime.now(),
        updatedAt = TemporalDateTime.now(),
        id = id ?? uuid(),
        super._();

  const _Todo._({
    this.content,
    required this.createdAt,
    required this.updatedAt,
    required this.id,
  }) : super._();

  @override
  final String? content;

  @override
  final TemporalDateTime createdAt;

  @override
  final TemporalDateTime updatedAt;

  @override
  final String id;
}

abstract class RemoteTodo extends Todo implements RemoteModel<String, Todo> {
  const RemoteTodo._() : super._();
}

class _RemoteTodo extends RemoteTodo {
  const _RemoteTodo({
    this.content,
    required this.createdAt,
    required this.updatedAt,
    required this.id,
    required this.version,
    required this.deleted,
    required this.lastChangedAt,
  }) : super._();

  factory _RemoteTodo.fromJson(Map<String, Object?> json) {
    final content =
        json['content'] == null ? null : (json['content'] as String);
    final createdAt = json['createdAt'] == null
        ? (throw ModelFieldError(
            'Todo',
            'createdAt',
          ))
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? (throw ModelFieldError(
            'Todo',
            'updatedAt',
          ))
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'Todo',
            'id',
          ))
        : (json['id'] as String);
    final version = json['version'] == null
        ? (throw ModelFieldError(
            'Todo',
            'version',
          ))
        : (json['version'] as int);
    final deleted = json['deleted'] == null
        ? (throw ModelFieldError(
            'Todo',
            'deleted',
          ))
        : (json['deleted'] as bool);
    final lastChangedAt = json['lastChangedAt'] == null
        ? (throw ModelFieldError(
            'Todo',
            'lastChangedAt',
          ))
        : TemporalDateTime.fromString((json['lastChangedAt'] as String));
    return _RemoteTodo(
      content: content,
      createdAt: createdAt,
      updatedAt: updatedAt,
      id: id,
      version: version,
      deleted: deleted,
      lastChangedAt: lastChangedAt,
    );
  }

  @override
  final String? content;

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
