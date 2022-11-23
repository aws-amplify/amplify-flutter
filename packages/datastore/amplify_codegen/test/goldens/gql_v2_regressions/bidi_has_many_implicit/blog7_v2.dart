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

library models.blog7_v2;

import 'package:amplify_core/amplify_core.dart';

import 'post7_v2.dart';

class Blog7V2Type extends ModelType<String, Blog7V2, PartialBlog7V2> {
  const Blog7V2Type();

  @override
  T fromJson<T extends PartialModel<String, Blog7V2>>(
    Map<String, Object?> json,
  ) {
    if (T == Blog7V2 || T == Model<String, Blog7V2>) {
      return Blog7V2.fromJson(json) as T;
    }
    if (T == RemoteBlog7V2 || T == RemoteModel<String, Blog7V2>) {
      return _RemoteBlog7V2.fromJson(json) as T;
    }
    return _PartialBlog7V2.fromJson(json) as T;
  }

  @override
  String get modelName => 'Blog7V2';
}

class Blog7V2QueryFields<ModelIdentifier extends Object,
    M extends Model<ModelIdentifier, M>> {
  const Blog7V2QueryFields([this._root]);

  final QueryField<ModelIdentifier, M, Blog7V2>? _root;

  /// Query field for the [Blog7V2.id] field.
  QueryField<ModelIdentifier, M, String> get $id =>
      NestedQueryField<ModelIdentifier, M, String, Blog7V2, String>(
        const QueryField<String, Blog7V2, String>(fieldName: 'id'),
        root: _root,
      );

  /// Query field for the [Blog7V2.name] field.
  QueryField<ModelIdentifier, M, String> get $name =>
      NestedQueryField<ModelIdentifier, M, String, Blog7V2, String>(
        const QueryField<String, Blog7V2, String>(fieldName: 'name'),
        root: _root,
      );

  /// Query field for the [Blog7V2.posts] field.
  Post7V2QueryFields<ModelIdentifier, M> get $posts => Post7V2QueryFields(
        NestedQueryField<ModelIdentifier, M, String, Blog7V2, Post7V2>(
          const QueryField<String, Blog7V2, Post7V2>(fieldName: 'posts'),
          root: _root,
        ),
      );

  /// Query field for the [Blog7V2.createdAt] field.
  QueryField<ModelIdentifier, M, TemporalDateTime> get $createdAt =>
      NestedQueryField<ModelIdentifier, M, String, Blog7V2, TemporalDateTime>(
        const QueryField<String, Blog7V2, TemporalDateTime>(
          fieldName: 'createdAt',
        ),
        root: _root,
      );

  /// Query field for the [Blog7V2.updatedAt] field.
  QueryField<ModelIdentifier, M, TemporalDateTime> get $updatedAt =>
      NestedQueryField<ModelIdentifier, M, String, Blog7V2, TemporalDateTime>(
        const QueryField<String, Blog7V2, TemporalDateTime>(
          fieldName: 'updatedAt',
        ),
        root: _root,
      );

  /// Query field for the [Blog7V2] model identifier.
  QueryField<ModelIdentifier, M, String> get $modelIdentifier =>
      NestedQueryField<ModelIdentifier, M, String, Blog7V2, String>(
        const QueryField<String, Blog7V2, String>(fieldName: 'modelIdentifier'),
        root: _root,
      );
}

abstract class PartialBlog7V2 extends PartialModel<String, Blog7V2>
    with AWSEquatable<PartialBlog7V2> {
  const PartialBlog7V2._();

  String get id;
  String? get name;
  AsyncModelCollection<String, Post7V2, PartialPost7V2, PartialPost7V2>?
      get posts;
  TemporalDateTime? get createdAt;
  TemporalDateTime? get updatedAt;
  @override
  String get modelIdentifier => id;
  @override
  Blog7V2Type get modelType => Blog7V2.classType;
  @override
  List<Object?> get props => [
        id,
        name,
        posts,
        createdAt,
        updatedAt,
      ];
  @override
  Map<String, Object?> toJson() => {
        'id': id,
        'name': name,
        'posts': posts?.toJson(),
        'createdAt': createdAt?.format(),
        'updatedAt': updatedAt?.format(),
        'version': version,
        'deleted': deleted,
        'lastChangedAt': lastChangedAt?.format(),
      };
  @override
  String get runtimeTypeName => 'Blog7V2';
}

class _PartialBlog7V2 extends PartialBlog7V2 {
  const _PartialBlog7V2({
    required this.id,
    this.name,
    this.posts,
    this.createdAt,
    this.updatedAt,
  }) : super._();

  factory _PartialBlog7V2.fromJson(Map<String, Object?> json) {
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'Blog7V2',
            'id',
          ))
        : (json['id'] as String);
    final name = json['name'] == null ? null : (json['name'] as String);
    final posts = json['posts'] == null
        ? null
        : AsyncModelCollection<String, Post7V2, PartialPost7V2,
            PartialPost7V2>.fromList(
            (json['posts'] as List<Object?>)
                .cast<Map<String, Object?>?>()
                .map(
                  (el) => el == null
                      ? null
                      : Post7V2.classType.fromJson<PartialPost7V2>(el),
                )
                .whereType<PartialPost7V2>()
                .toList(),
          );
    final createdAt = json['createdAt'] == null
        ? null
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? null
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    return _PartialBlog7V2(
      id: id,
      name: name,
      posts: posts,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  @override
  final String id;

  @override
  final String? name;

  @override
  final AsyncModelCollection<String, Post7V2, PartialPost7V2, PartialPost7V2>?
      posts;

  @override
  final TemporalDateTime? createdAt;

  @override
  final TemporalDateTime? updatedAt;
}

abstract class Blog7V2 extends PartialBlog7V2
    implements Model<String, Blog7V2> {
  factory Blog7V2({
    String? id,
    required String name,
    List<Post7V2>? posts,
  }) = _Blog7V2;

  const Blog7V2._() : super._();

  factory Blog7V2.fromJson(Map<String, Object?> json) {
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'Blog7V2',
            'id',
          ))
        : (json['id'] as String);
    final name = json['name'] == null
        ? (throw ModelFieldError(
            'Blog7V2',
            'name',
          ))
        : (json['name'] as String);
    final posts = json['posts'] == null
        ? null
        : AsyncModelCollection<String, Post7V2, PartialPost7V2,
            Post7V2>.fromList(
            (json['posts'] as List<Object?>)
                .cast<Map<String, Object?>?>()
                .map(
                  (el) => el == null
                      ? null
                      : Post7V2.classType.fromJson<Post7V2>(el),
                )
                .whereType<Post7V2>()
                .toList(),
          );
    final createdAt = json['createdAt'] == null
        ? (throw ModelFieldError(
            'Blog7V2',
            'createdAt',
          ))
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? (throw ModelFieldError(
            'Blog7V2',
            'updatedAt',
          ))
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    return _Blog7V2._(
      id: id,
      name: name,
      posts: posts,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  static const Blog7V2Type classType = Blog7V2Type();

  static const Blog7V2QueryFields<String, Blog7V2> _queryFields =
      Blog7V2QueryFields();

  @override
  String get id;

  /// Query field for the [id] field.
  QueryField<String, Blog7V2, String> get $id => _queryFields.$id;

  /// Query field for the [id] field.
  @Deprecated(r'Use $id instead')
  QueryField<String, Blog7V2, String> get ID => $id;
  @override
  String get name;

  /// Query field for the [name] field.
  QueryField<String, Blog7V2, String> get $name => _queryFields.$name;

  /// Query field for the [name] field.
  @Deprecated(r'Use $name instead')
  QueryField<String, Blog7V2, String> get NAME => $name;
  @override
  AsyncModelCollection<String, Post7V2, PartialPost7V2, Post7V2>? get posts;

  /// Query field for the [posts] field.
  Post7V2QueryFields<String, Blog7V2> get $posts => _queryFields.$posts;

  /// Query field for the [posts] field.
  @Deprecated(r'Use $posts instead')
  Post7V2QueryFields<String, Blog7V2> get POSTS => $posts;
  @override
  TemporalDateTime get createdAt;
  @override
  TemporalDateTime get updatedAt;

  /// Query field for the [modelIdentifier] field.
  QueryField<String, Blog7V2, String> get $modelIdentifier =>
      _queryFields.$modelIdentifier;

  /// Query field for the [modelIdentifier] field.
  @Deprecated(r'Use $modelIdentifier instead')
  QueryField<String, Blog7V2, String> get MODEL_IDENTIFIER => $modelIdentifier;
  @override
  T valueFor<T extends Object?>(QueryField<String, Blog7V2, T> field) {
    Object? value;
    switch (field.fieldName) {
      case r'id':
        value = id;
        break;
      case r'name':
        value = name;
        break;
      case r'posts':
        value = posts;
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

class _Blog7V2 extends Blog7V2 {
  _Blog7V2({
    String? id,
    required this.name,
    List<Post7V2>? posts,
  })  : id = id ?? uuid(),
        posts = posts == null ? null : AsyncModelCollection.fromList(posts),
        createdAt = TemporalDateTime.now(),
        updatedAt = TemporalDateTime.now(),
        super._();

  const _Blog7V2._({
    required this.id,
    required this.name,
    this.posts,
    required this.createdAt,
    required this.updatedAt,
  }) : super._();

  @override
  final String id;

  @override
  final String name;

  @override
  final AsyncModelCollection<String, Post7V2, PartialPost7V2, Post7V2>? posts;

  @override
  final TemporalDateTime createdAt;

  @override
  final TemporalDateTime updatedAt;
}

abstract class RemoteBlog7V2 extends Blog7V2
    implements RemoteModel<String, Blog7V2> {
  const RemoteBlog7V2._() : super._();
}

class _RemoteBlog7V2 extends RemoteBlog7V2 {
  const _RemoteBlog7V2({
    required this.id,
    required this.name,
    this.posts,
    required this.createdAt,
    required this.updatedAt,
    required this.version,
    required this.deleted,
    required this.lastChangedAt,
  }) : super._();

  factory _RemoteBlog7V2.fromJson(Map<String, Object?> json) {
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'Blog7V2',
            'id',
          ))
        : (json['id'] as String);
    final name = json['name'] == null
        ? (throw ModelFieldError(
            'Blog7V2',
            'name',
          ))
        : (json['name'] as String);
    final posts = json['posts'] == null
        ? null
        : AsyncModelCollection<String, Post7V2, PartialPost7V2,
            RemotePost7V2>.fromList(
            (json['posts'] as List<Object?>)
                .cast<Map<String, Object?>?>()
                .map(
                  (el) => el == null
                      ? null
                      : Post7V2.classType.fromJson<RemotePost7V2>(el),
                )
                .whereType<RemotePost7V2>()
                .toList(),
          );
    final createdAt = json['createdAt'] == null
        ? (throw ModelFieldError(
            'Blog7V2',
            'createdAt',
          ))
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? (throw ModelFieldError(
            'Blog7V2',
            'updatedAt',
          ))
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    final version = json['version'] == null
        ? (throw ModelFieldError(
            'Blog7V2',
            'version',
          ))
        : (json['version'] as int);
    final deleted = json['deleted'] == null
        ? (throw ModelFieldError(
            'Blog7V2',
            'deleted',
          ))
        : (json['deleted'] as bool);
    final lastChangedAt = json['lastChangedAt'] == null
        ? (throw ModelFieldError(
            'Blog7V2',
            'lastChangedAt',
          ))
        : TemporalDateTime.fromString((json['lastChangedAt'] as String));
    return _RemoteBlog7V2(
      id: id,
      name: name,
      posts: posts,
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
  final AsyncModelCollection<String, Post7V2, PartialPost7V2, RemotePost7V2>?
      posts;

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
